package com.microsoft.appcenter.crashes;

import android.annotation.SuppressLint;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import com.microsoft.appcenter.AbstractAppCenterService;
import com.microsoft.appcenter.Constants;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.crashes.ingestion.models.Exception;
import com.microsoft.appcenter.crashes.ingestion.models.HandledErrorLog;
import com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog;
import com.microsoft.appcenter.crashes.ingestion.models.json.ErrorAttachmentLogFactory;
import com.microsoft.appcenter.crashes.ingestion.models.json.HandledErrorLogFactory;
import com.microsoft.appcenter.crashes.ingestion.models.json.ManagedErrorLogFactory;
import com.microsoft.appcenter.crashes.model.ErrorReport;
import com.microsoft.appcenter.crashes.model.NativeException;
import com.microsoft.appcenter.crashes.model.TestCrashException;
import com.microsoft.appcenter.crashes.utils.ErrorLogHelper;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.appcenter.ingestion.models.json.DefaultLogSerializer;
import com.microsoft.appcenter.ingestion.models.json.LogFactory;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
import com.microsoft.appcenter.utils.HandlerUtils;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.async.DefaultAppCenterFuture;
import com.microsoft.appcenter.utils.context.SessionContext;
import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.appcenter.utils.storage.FileManager;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import e.a.a.a.a;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;

public class Crashes extends AbstractAppCenterService {
    public static final int ALWAYS_SEND = 2;
    public static final CrashesListener DEFAULT_ERROR_REPORTING_LISTENER = new DefaultCrashesListener();
    public static final int DONT_SEND = 1;
    public static final String ERROR_GROUP = "groupErrors";
    public static final String LOG_TAG = "AppCenterCrashes";
    public static final int MAX_ATTACHMENT_PER_CRASH = 2;
    public static final int MAX_ATTACHMENT_SIZE = 7340032;
    public static final String PREF_KEY_ALWAYS_SEND = "com.microsoft.appcenter.crashes.always.send";
    public static final String PREF_KEY_MEMORY_RUNNING_LEVEL = "com.microsoft.appcenter.crashes.memory";
    public static final int SEND = 0;
    public static final String SERVICE_NAME = "Crashes";
    @SuppressLint({"StaticFieldLeak"})
    public static Crashes sInstance = null;
    public boolean mAutomaticProcessing = true;
    public Context mContext;
    public CrashesListener mCrashesListener;
    public Device mDevice;
    public final Map<UUID, ErrorLogReport> mErrorReportCache;
    public final Map<String, LogFactory> mFactories;
    public boolean mHasReceivedMemoryWarningInLastSession;
    public long mInitializeTimestamp;
    public ErrorReport mLastSessionErrorReport;
    public LogSerializer mLogSerializer;
    public ComponentCallbacks2 mMemoryWarningListener;
    public boolean mSavedUncaughtException;
    public UncaughtExceptionHandler mUncaughtExceptionHandler;
    public final Map<UUID, ErrorLogReport> mUnprocessedErrorReports;

    public interface CallbackProcessor {
        void onCallBack(ErrorReport errorReport);

        boolean shouldDeleteThrowable();
    }

    public static class DefaultCrashesListener extends AbstractCrashesListener {
        public DefaultCrashesListener() {
        }
    }

    public static class ErrorLogReport {
        public final ManagedErrorLog log;
        public final ErrorReport report;

        public ErrorLogReport(ManagedErrorLog managedErrorLog, ErrorReport errorReport) {
            this.log = managedErrorLog;
            this.report = errorReport;
        }
    }

    public interface ExceptionModelBuilder {
        Exception buildExceptionModel();
    }

    public Crashes() {
        HashMap hashMap = new HashMap();
        this.mFactories = hashMap;
        hashMap.put(ManagedErrorLog.TYPE, ManagedErrorLogFactory.getInstance());
        this.mFactories.put(HandledErrorLog.TYPE, HandledErrorLogFactory.getInstance());
        this.mFactories.put(ErrorAttachmentLog.TYPE, ErrorAttachmentLogFactory.getInstance());
        DefaultLogSerializer defaultLogSerializer = new DefaultLogSerializer();
        this.mLogSerializer = defaultLogSerializer;
        defaultLogSerializer.addLogFactory(ManagedErrorLog.TYPE, ManagedErrorLogFactory.getInstance());
        this.mLogSerializer.addLogFactory(ErrorAttachmentLog.TYPE, ErrorAttachmentLogFactory.getInstance());
        this.mCrashesListener = DEFAULT_ERROR_REPORTING_LISTENER;
        this.mUnprocessedErrorReports = new LinkedHashMap();
        this.mErrorReportCache = new LinkedHashMap();
    }

    public static void generateTestCrash() {
        if (!Constants.APPLICATION_DEBUGGABLE) {
            AppCenterLog.warn(LOG_TAG, "The application is not debuggable so SDK won't generate test crash");
            return;
        }
        throw new TestCrashException();
    }

    public static synchronized Crashes getInstance() {
        Crashes crashes;
        synchronized (Crashes.class) {
            if (sInstance == null) {
                sInstance = new Crashes();
            }
            crashes = sInstance;
        }
        return crashes;
    }

    private synchronized AppCenterFuture<ErrorReport> getInstanceLastSessionCrashReport() {
        final DefaultAppCenterFuture defaultAppCenterFuture;
        defaultAppCenterFuture = new DefaultAppCenterFuture();
        postAsyncGetter(new Runnable() {
            public void run() {
                defaultAppCenterFuture.complete(Crashes.this.mLastSessionErrorReport);
            }
        }, defaultAppCenterFuture, null);
        return defaultAppCenterFuture;
    }

    public static AppCenterFuture<ErrorReport> getLastSessionCrashReport() {
        return getInstance().getInstanceLastSessionCrashReport();
    }

    public static AppCenterFuture<String> getMinidumpDirectory() {
        return getInstance().getNewMinidumpDirectoryAsync();
    }

    private synchronized AppCenterFuture<String> getNewMinidumpDirectoryAsync() {
        final DefaultAppCenterFuture defaultAppCenterFuture;
        defaultAppCenterFuture = new DefaultAppCenterFuture();
        postAsyncGetter(new Runnable() {
            public void run() {
                defaultAppCenterFuture.complete(ErrorLogHelper.getNewMinidumpSubfolderWithContextData(Crashes.this.mContext).getAbsolutePath());
            }
        }, defaultAppCenterFuture, null);
        return defaultAppCenterFuture;
    }

    /* access modifiers changed from: private */
    public synchronized void handleUserConfirmation(final int i2) {
        post(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:25:0x00b7  */
            /* JADX WARNING: Removed duplicated region for block: B:28:0x00d3  */
            /* JADX WARNING: Removed duplicated region for block: B:33:0x00ee A[SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r10 = this;
                    int r0 = r2
                    r1 = 1
                    if (r0 != r1) goto L_0x0028
                    com.microsoft.appcenter.crashes.Crashes r0 = com.microsoft.appcenter.crashes.Crashes.this
                    java.util.Map r0 = r0.mUnprocessedErrorReports
                    java.util.Set r0 = r0.keySet()
                    java.util.Iterator r0 = r0.iterator()
                L_0x0013:
                    boolean r1 = r0.hasNext()
                    if (r1 == 0) goto L_0x00fc
                    java.lang.Object r1 = r0.next()
                    java.util.UUID r1 = (java.util.UUID) r1
                    r0.remove()
                    com.microsoft.appcenter.crashes.Crashes r2 = com.microsoft.appcenter.crashes.Crashes.this
                    r2.removeAllStoredErrorLogFiles(r1)
                    goto L_0x0013
                L_0x0028:
                    r2 = 2
                    if (r0 != r2) goto L_0x0030
                    java.lang.String r0 = "com.microsoft.appcenter.crashes.always.send"
                    com.microsoft.appcenter.utils.storage.SharedPreferencesManager.putBoolean(r0, r1)
                L_0x0030:
                    com.microsoft.appcenter.crashes.Crashes r0 = com.microsoft.appcenter.crashes.Crashes.this
                    java.util.Map r0 = r0.mUnprocessedErrorReports
                    java.util.Set r0 = r0.entrySet()
                    java.util.Iterator r0 = r0.iterator()
                L_0x003e:
                    boolean r1 = r0.hasNext()
                    if (r1 == 0) goto L_0x00fc
                    java.lang.Object r1 = r0.next()
                    java.util.Map$Entry r1 = (java.util.Map.Entry) r1
                    java.lang.Object r3 = r1.getValue()
                    com.microsoft.appcenter.crashes.Crashes$ErrorLogReport r3 = (com.microsoft.appcenter.crashes.Crashes.ErrorLogReport) r3
                    com.microsoft.appcenter.crashes.model.ErrorReport r4 = r3.report
                    com.microsoft.appcenter.ingestion.models.Device r4 = r4.getDevice()
                    r5 = 0
                    if (r4 == 0) goto L_0x00a5
                    com.microsoft.appcenter.crashes.model.ErrorReport r4 = r3.report
                    com.microsoft.appcenter.ingestion.models.Device r4 = r4.getDevice()
                    java.lang.String r4 = r4.getWrapperSdkName()
                    java.lang.String r6 = "appcenter.ndk"
                    boolean r4 = r6.equals(r4)
                    if (r4 == 0) goto L_0x00a5
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r4 = r3.log
                    com.microsoft.appcenter.crashes.ingestion.models.Exception r4 = r4.getException()
                    java.lang.String r6 = r4.getMinidumpFilePath()
                    r4.setMinidumpFilePath(r5)
                    if (r6 != 0) goto L_0x0087
                    java.lang.String r6 = r4.getStackTrace()
                    r4.setStackTrace(r5)
                L_0x0087:
                    if (r6 == 0) goto L_0x009e
                    java.io.File r5 = new java.io.File
                    r5.<init>(r6)
                    byte[] r4 = com.microsoft.appcenter.utils.storage.FileManager.readBytes(r5)
                    java.lang.String r6 = "minidump.dmp"
                    java.lang.String r7 = "application/octet-stream"
                    com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog r4 = com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog.attachmentWithBinary(r4, r6, r7)
                    r9 = r5
                    r5 = r4
                    r4 = r9
                    goto L_0x00a6
                L_0x009e:
                    java.lang.String r4 = "AppCenterCrashes"
                    java.lang.String r6 = "NativeException found without minidump."
                    com.microsoft.appcenter.utils.AppCenterLog.warn(r4, r6)
                L_0x00a5:
                    r4 = r5
                L_0x00a6:
                    com.microsoft.appcenter.crashes.Crashes r6 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.channel.Channel r6 = r6.mChannel
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r7 = r3.log
                    java.lang.String r8 = "groupErrors"
                    r6.enqueue(r7, r8, r2)
                    if (r5 == 0) goto L_0x00cb
                    com.microsoft.appcenter.crashes.Crashes r6 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r7 = r3.log
                    java.util.UUID r7 = r7.getId()
                    java.util.Set r5 = java.util.Collections.singleton(r5)
                    r6.sendErrorAttachment(r7, r5)
                    r4.delete()
                L_0x00cb:
                    com.microsoft.appcenter.crashes.Crashes r4 = com.microsoft.appcenter.crashes.Crashes.this
                    boolean r4 = r4.mAutomaticProcessing
                    if (r4 == 0) goto L_0x00ee
                    com.microsoft.appcenter.crashes.Crashes r4 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.CrashesListener r4 = r4.mCrashesListener
                    com.microsoft.appcenter.crashes.model.ErrorReport r5 = r3.report
                    java.lang.Iterable r4 = r4.getErrorAttachments(r5)
                    com.microsoft.appcenter.crashes.Crashes r5 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r3 = r3.log
                    java.util.UUID r3 = r3.getId()
                    r5.sendErrorAttachment(r3, r4)
                L_0x00ee:
                    r0.remove()
                    java.lang.Object r1 = r1.getKey()
                    java.util.UUID r1 = (java.util.UUID) r1
                    com.microsoft.appcenter.crashes.utils.ErrorLogHelper.removeStoredErrorLogFile(r1)
                    goto L_0x003e
                L_0x00fc:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.crashes.Crashes.AnonymousClass12.run():void");
            }
        });
    }

    public static AppCenterFuture<Boolean> hasCrashedInLastSession() {
        return getInstance().hasInstanceCrashedInLastSession();
    }

    private synchronized AppCenterFuture<Boolean> hasInstanceCrashedInLastSession() {
        final DefaultAppCenterFuture defaultAppCenterFuture;
        defaultAppCenterFuture = new DefaultAppCenterFuture();
        postAsyncGetter(new Runnable() {
            public void run() {
                defaultAppCenterFuture.complete(Boolean.valueOf(Crashes.this.mLastSessionErrorReport != null));
            }
        }, defaultAppCenterFuture, false);
        return defaultAppCenterFuture;
    }

    private synchronized AppCenterFuture<Boolean> hasInstanceReceivedMemoryWarningInLastSession() {
        final DefaultAppCenterFuture defaultAppCenterFuture;
        defaultAppCenterFuture = new DefaultAppCenterFuture();
        postAsyncGetter(new Runnable() {
            public void run() {
                defaultAppCenterFuture.complete(Boolean.valueOf(Crashes.this.mHasReceivedMemoryWarningInLastSession));
            }
        }, defaultAppCenterFuture, false);
        return defaultAppCenterFuture;
    }

    public static AppCenterFuture<Boolean> hasReceivedMemoryWarningInLastSession() {
        return getInstance().hasInstanceReceivedMemoryWarningInLastSession();
    }

    private void initialize() {
        boolean isInstanceEnabled = isInstanceEnabled();
        this.mInitializeTimestamp = isInstanceEnabled ? System.currentTimeMillis() : -1;
        if (!isInstanceEnabled) {
            UncaughtExceptionHandler uncaughtExceptionHandler = this.mUncaughtExceptionHandler;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.unregister();
                this.mUncaughtExceptionHandler = null;
                return;
            }
            return;
        }
        UncaughtExceptionHandler uncaughtExceptionHandler2 = new UncaughtExceptionHandler();
        this.mUncaughtExceptionHandler = uncaughtExceptionHandler2;
        uncaughtExceptionHandler2.register();
        processMinidumpFiles();
    }

    public static AppCenterFuture<Boolean> isEnabled() {
        return getInstance().isInstanceEnabledAsync();
    }

    public static boolean isMemoryRunningLevelWasReceived(int i2) {
        return i2 == 5 || i2 == 10 || i2 == 15 || i2 == 80;
    }

    public static void notifyUserConfirmation(int i2) {
        getInstance().handleUserConfirmation(i2);
    }

    private void processMinidumpFiles() {
        for (File file : ErrorLogHelper.getNewMinidumpFiles()) {
            if (!file.isDirectory()) {
                AppCenterLog.debug(LOG_TAG, "Found a minidump from a previous SDK version.");
                processSingleMinidump(file, file);
            } else {
                File[] listFiles = file.listFiles(new FilenameFilter() {
                    public boolean accept(File file, String str) {
                        return !str.equals(ErrorLogHelper.DEVICE_INFO_FILE);
                    }
                });
                if (!(listFiles == null || listFiles.length == 0)) {
                    for (File processSingleMinidump : listFiles) {
                        processSingleMinidump(processSingleMinidump, file);
                    }
                }
            }
        }
        File lastErrorLogFile = ErrorLogHelper.getLastErrorLogFile();
        while (lastErrorLogFile != null && lastErrorLogFile.length() == 0) {
            AppCenterLog.warn(LOG_TAG, "Deleting empty error file: " + lastErrorLogFile);
            lastErrorLogFile.delete();
            lastErrorLogFile = ErrorLogHelper.getLastErrorLogFile();
        }
        if (lastErrorLogFile != null) {
            AppCenterLog.debug(LOG_TAG, "Processing crash report for the last session.");
            String read = FileManager.read(lastErrorLogFile);
            if (read == null) {
                AppCenterLog.error(LOG_TAG, "Error reading last session error log.");
            } else {
                try {
                    this.mLastSessionErrorReport = buildErrorReport((ManagedErrorLog) this.mLogSerializer.deserializeLog(read, (String) null));
                    AppCenterLog.debug(LOG_TAG, "Processed crash report for the last session.");
                } catch (JSONException e2) {
                    AppCenterLog.error(LOG_TAG, "Error parsing last session error log.", e2);
                }
            }
        }
        ErrorLogHelper.removeStaleMinidumpSubfolders();
    }

    private void processPendingErrors() {
        for (File file : ErrorLogHelper.getStoredErrorLogFiles()) {
            AppCenterLog.debug(LOG_TAG, "Process pending error file: " + file);
            String read = FileManager.read(file);
            if (read != null) {
                try {
                    ManagedErrorLog managedErrorLog = (ManagedErrorLog) this.mLogSerializer.deserializeLog(read, (String) null);
                    UUID id = managedErrorLog.getId();
                    ErrorReport buildErrorReport = buildErrorReport(managedErrorLog);
                    if (buildErrorReport == null) {
                        removeAllStoredErrorLogFiles(id);
                    } else {
                        if (this.mAutomaticProcessing) {
                            if (!this.mCrashesListener.shouldProcess(buildErrorReport)) {
                                AppCenterLog.debug(LOG_TAG, "CrashesListener.shouldProcess returned false, clean up and ignore log: " + id.toString());
                                removeAllStoredErrorLogFiles(id);
                            }
                        }
                        if (!this.mAutomaticProcessing) {
                            AppCenterLog.debug(LOG_TAG, "CrashesListener.shouldProcess returned true, continue processing log: " + id.toString());
                        }
                        this.mUnprocessedErrorReports.put(id, this.mErrorReportCache.get(id));
                    }
                } catch (JSONException e2) {
                    AppCenterLog.error(LOG_TAG, "Error parsing error log. Deleting invalid file: " + file, e2);
                    file.delete();
                }
            }
        }
        boolean isMemoryRunningLevelWasReceived = isMemoryRunningLevelWasReceived(SharedPreferencesManager.getInt(PREF_KEY_MEMORY_RUNNING_LEVEL, -1));
        this.mHasReceivedMemoryWarningInLastSession = isMemoryRunningLevelWasReceived;
        if (isMemoryRunningLevelWasReceived) {
            AppCenterLog.debug(LOG_TAG, "The application received a low memory warning in the last session.");
        }
        SharedPreferencesManager.remove(PREF_KEY_MEMORY_RUNNING_LEVEL);
        if (this.mAutomaticProcessing) {
            sendCrashReportsOrAwaitUserConfirmation();
        }
    }

    private void processSingleMinidump(File file, File file2) {
        AppCenterLog.debug(LOG_TAG, "Process pending minidump file: " + file);
        long lastModified = file.lastModified();
        File file3 = new File(ErrorLogHelper.getPendingMinidumpDirectory(), file.getName());
        Exception exception = new Exception();
        exception.setType(ErrorLogHelper.MINIDUMP_DIRECTORY);
        exception.setWrapperSdkName(Constants.WRAPPER_SDK_NAME_NDK);
        exception.setMinidumpFilePath(file3.getPath());
        ManagedErrorLog managedErrorLog = new ManagedErrorLog();
        managedErrorLog.setException(exception);
        managedErrorLog.setTimestamp(new Date(lastModified));
        managedErrorLog.setFatal(true);
        managedErrorLog.setId(ErrorLogHelper.parseLogFolderUuid(file2));
        SessionContext.SessionInfo sessionAt = SessionContext.getInstance().getSessionAt(lastModified);
        if (sessionAt == null || sessionAt.getAppLaunchTimestamp() > lastModified) {
            managedErrorLog.setAppLaunchTimestamp(managedErrorLog.getTimestamp());
        } else {
            managedErrorLog.setAppLaunchTimestamp(new Date(sessionAt.getAppLaunchTimestamp()));
        }
        managedErrorLog.setProcessId(0);
        managedErrorLog.setProcessName("");
        managedErrorLog.setUserId(UserIdContext.getInstance().getUserId());
        try {
            Device storedDeviceInfo = ErrorLogHelper.getStoredDeviceInfo(file2);
            if (storedDeviceInfo == null) {
                storedDeviceInfo = getDeviceInfo(this.mContext);
                storedDeviceInfo.setWrapperSdkName(Constants.WRAPPER_SDK_NAME_NDK);
            }
            managedErrorLog.setDevice(storedDeviceInfo);
            saveErrorLogFiles(new NativeException(), managedErrorLog);
            if (!file.renameTo(file3)) {
                throw new IOException("Failed to move file");
            }
        } catch (Exception e2) {
            file.delete();
            removeAllStoredErrorLogFiles(managedErrorLog.getId());
            AppCenterLog.error(LOG_TAG, "Failed to process new minidump file: " + file, e2);
        }
    }

    private synchronized void queueException(final Throwable th, Map<String, String> map, Iterable<ErrorAttachmentLog> iterable) {
        queueException((ExceptionModelBuilder) new ExceptionModelBuilder() {
            public Exception buildExceptionModel() {
                return ErrorLogHelper.getModelExceptionFromThrowable(th);
            }
        }, map, iterable);
    }

    /* access modifiers changed from: private */
    public void removeAllStoredErrorLogFiles(UUID uuid) {
        ErrorLogHelper.removeStoredErrorLogFile(uuid);
        removeStoredThrowable(uuid);
    }

    /* access modifiers changed from: private */
    public void removeStoredThrowable(UUID uuid) {
        this.mErrorReportCache.remove(uuid);
        WrapperSdkExceptionManager.deleteWrapperExceptionData(uuid);
        ErrorLogHelper.removeStoredThrowableFile(uuid);
    }

    private UUID saveErrorLogFiles(Throwable th, ManagedErrorLog managedErrorLog) {
        File errorStorageDirectory = ErrorLogHelper.getErrorStorageDirectory();
        UUID id = managedErrorLog.getId();
        String uuid = id.toString();
        AppCenterLog.debug(LOG_TAG, "Saving uncaught exception.");
        File file = new File(errorStorageDirectory, a.b(uuid, ".json"));
        FileManager.write(file, this.mLogSerializer.serializeLog(managedErrorLog));
        AppCenterLog.debug(LOG_TAG, "Saved JSON content for ingestion into " + file);
        File file2 = new File(errorStorageDirectory, a.b(uuid, ErrorLogHelper.THROWABLE_FILE_EXTENSION));
        if (th != null) {
            try {
                String stackTraceString = Log.getStackTraceString(th);
                FileManager.write(file2, stackTraceString);
                AppCenterLog.debug(LOG_TAG, "Saved stack trace as is for client side inspection in " + file2 + " stack trace:" + stackTraceString);
            } catch (StackOverflowError e2) {
                AppCenterLog.error(LOG_TAG, "Failed to store stack trace.", e2);
                th = null;
                file2.delete();
            }
        }
        if (th == null) {
            if (file2.createNewFile()) {
                AppCenterLog.debug(LOG_TAG, "Saved empty Throwable file in " + file2);
            } else {
                throw new IOException(file2.getName());
            }
        }
        return id;
    }

    public static void saveMemoryRunningLevel(int i2) {
        SharedPreferencesManager.putInt(PREF_KEY_MEMORY_RUNNING_LEVEL, i2);
        AppCenterLog.debug(LOG_TAG, String.format("The memory running level (%s) was saved.", new Object[]{Integer.valueOf(i2)}));
    }

    /* access modifiers changed from: private */
    public boolean sendCrashReportsOrAwaitUserConfirmation() {
        final boolean z = SharedPreferencesManager.getBoolean(PREF_KEY_ALWAYS_SEND, false);
        HandlerUtils.runOnUiThread(new Runnable() {
            public void run() {
                if (Crashes.this.mUnprocessedErrorReports.size() <= 0) {
                    return;
                }
                if (z) {
                    AppCenterLog.debug(Crashes.LOG_TAG, "The flag for user confirmation is set to ALWAYS_SEND, will send logs.");
                    Crashes.this.handleUserConfirmation(0);
                } else if (!Crashes.this.mAutomaticProcessing) {
                    AppCenterLog.debug(Crashes.LOG_TAG, "Automatic processing disabled, will wait for explicit user confirmation.");
                } else if (!Crashes.this.mCrashesListener.shouldAwaitUserConfirmation()) {
                    AppCenterLog.debug(Crashes.LOG_TAG, "CrashesListener.shouldAwaitUserConfirmation returned false, will send logs.");
                    Crashes.this.handleUserConfirmation(0);
                } else {
                    AppCenterLog.debug(Crashes.LOG_TAG, "CrashesListener.shouldAwaitUserConfirmation returned true, wait sending logs.");
                }
            }
        });
        return z;
    }

    /* access modifiers changed from: private */
    public void sendErrorAttachment(UUID uuid, Iterable<ErrorAttachmentLog> iterable) {
        if (iterable == null) {
            StringBuilder a = a.a("Error report: ");
            a.append(uuid.toString());
            a.append(" does not have any attachment.");
            AppCenterLog.debug(LOG_TAG, a.toString());
            return;
        }
        int i2 = 0;
        for (ErrorAttachmentLog next : iterable) {
            if (next != null) {
                next.setId(UUID.randomUUID());
                next.setErrorId(uuid);
                if (!next.isValid()) {
                    AppCenterLog.error(LOG_TAG, "Not all required fields are present in ErrorAttachmentLog.");
                } else if (next.getData().length > 7340032) {
                    AppCenterLog.error(LOG_TAG, String.format(Locale.ENGLISH, "Discarding attachment with size above %d bytes: size=%d, fileName=%s.", new Object[]{Integer.valueOf(MAX_ATTACHMENT_SIZE), Integer.valueOf(next.getData().length), next.getFileName()}));
                } else {
                    i2++;
                    this.mChannel.enqueue(next, ERROR_GROUP, 1);
                }
            } else {
                AppCenterLog.warn(LOG_TAG, "Skipping null ErrorAttachmentLog.");
            }
        }
        if (i2 > 2) {
            AppCenterLog.warn(LOG_TAG, "A limit of 2 attachments per error report might be enforced by server.");
        }
    }

    public static AppCenterFuture<Void> setEnabled(boolean z) {
        return getInstance().setInstanceEnabledAsync(z);
    }

    public static void setListener(CrashesListener crashesListener) {
        getInstance().setInstanceListener(crashesListener);
    }

    public static void trackError(Throwable th) {
        trackError(th, (Map<String, String>) null, (Iterable<ErrorAttachmentLog>) null);
    }

    public static synchronized void unsetInstance() {
        synchronized (Crashes.class) {
            sInstance = null;
        }
    }

    public synchronized void applyEnabledState(boolean z) {
        initialize();
        if (z) {
            AnonymousClass5 r7 = new ComponentCallbacks2() {
                public void onConfigurationChanged(Configuration configuration) {
                }

                public void onLowMemory() {
                    Crashes.saveMemoryRunningLevel(80);
                }

                public void onTrimMemory(int i2) {
                    Crashes.saveMemoryRunningLevel(i2);
                }
            };
            this.mMemoryWarningListener = r7;
            this.mContext.registerComponentCallbacks(r7);
        } else {
            File[] listFiles = ErrorLogHelper.getErrorStorageDirectory().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    AppCenterLog.debug(LOG_TAG, "Deleting file " + file);
                    if (!file.delete()) {
                        AppCenterLog.warn(LOG_TAG, "Failed to delete file " + file);
                    }
                }
            }
            AppCenterLog.info(LOG_TAG, "Deleted crashes local files");
            this.mErrorReportCache.clear();
            this.mLastSessionErrorReport = null;
            this.mContext.unregisterComponentCallbacks(this.mMemoryWarningListener);
            this.mMemoryWarningListener = null;
            SharedPreferencesManager.remove(PREF_KEY_MEMORY_RUNNING_LEVEL);
        }
    }

    public ErrorReport buildErrorReport(ManagedErrorLog managedErrorLog) {
        UUID id = managedErrorLog.getId();
        if (this.mErrorReportCache.containsKey(id)) {
            ErrorReport access$1300 = this.mErrorReportCache.get(id).report;
            access$1300.setDevice(managedErrorLog.getDevice());
            return access$1300;
        }
        File storedThrowableFile = ErrorLogHelper.getStoredThrowableFile(id);
        if (storedThrowableFile == null) {
            return null;
        }
        ErrorReport errorReportFromErrorLog = ErrorLogHelper.getErrorReportFromErrorLog(managedErrorLog, storedThrowableFile.length() > 0 ? FileManager.read(storedThrowableFile) : null);
        this.mErrorReportCache.put(id, new ErrorLogReport(managedErrorLog, errorReportFromErrorLog));
        return errorReportFromErrorLog;
    }

    public Channel.GroupListener getChannelListener() {
        return new Channel.GroupListener() {
            private void processCallback(final com.microsoft.appcenter.ingestion.models.Log log, final CallbackProcessor callbackProcessor) {
                Crashes.this.post(new Runnable() {
                    public void run() {
                        com.microsoft.appcenter.ingestion.models.Log log = log;
                        if (log instanceof ManagedErrorLog) {
                            ManagedErrorLog managedErrorLog = (ManagedErrorLog) log;
                            final ErrorReport buildErrorReport = Crashes.this.buildErrorReport(managedErrorLog);
                            UUID id = managedErrorLog.getId();
                            if (buildErrorReport != null) {
                                if (callbackProcessor.shouldDeleteThrowable()) {
                                    Crashes.this.removeStoredThrowable(id);
                                }
                                HandlerUtils.runOnUiThread(new Runnable() {
                                    public void run() {
                                        callbackProcessor.onCallBack(buildErrorReport);
                                    }
                                });
                                return;
                            }
                            AppCenterLog.warn(Crashes.LOG_TAG, "Cannot find crash report for the error log: " + id);
                        } else if (!(log instanceof ErrorAttachmentLog) && !(log instanceof HandledErrorLog)) {
                            StringBuilder a = a.a("A different type of log comes to crashes: ");
                            a.append(log.getClass().getName());
                            AppCenterLog.warn(Crashes.LOG_TAG, a.toString());
                        }
                    }
                });
            }

            public void onBeforeSending(com.microsoft.appcenter.ingestion.models.Log log) {
                processCallback(log, new CallbackProcessor() {
                    public void onCallBack(ErrorReport errorReport) {
                        Crashes.this.mCrashesListener.onBeforeSending(errorReport);
                    }

                    public boolean shouldDeleteThrowable() {
                        return false;
                    }
                });
            }

            public void onFailure(com.microsoft.appcenter.ingestion.models.Log log, final Exception exc) {
                processCallback(log, new CallbackProcessor() {
                    public void onCallBack(ErrorReport errorReport) {
                        Crashes.this.mCrashesListener.onSendingFailed(errorReport, exc);
                    }

                    public boolean shouldDeleteThrowable() {
                        return true;
                    }
                });
            }

            public void onSuccess(com.microsoft.appcenter.ingestion.models.Log log) {
                processCallback(log, new CallbackProcessor() {
                    public void onCallBack(ErrorReport errorReport) {
                        Crashes.this.mCrashesListener.onSendingSucceeded(errorReport);
                    }

                    public boolean shouldDeleteThrowable() {
                        return true;
                    }
                });
            }
        };
    }

    public synchronized Device getDeviceInfo(Context context) {
        if (this.mDevice == null) {
            this.mDevice = DeviceInfoHelper.getDeviceInfo(context);
        }
        return this.mDevice;
    }

    public String getGroupName() {
        return ERROR_GROUP;
    }

    public synchronized long getInitializeTimestamp() {
        return this.mInitializeTimestamp;
    }

    public CrashesListener getInstanceListener() {
        return this.mCrashesListener;
    }

    public Map<String, LogFactory> getLogFactories() {
        return this.mFactories;
    }

    public String getLoggerTag() {
        return LOG_TAG;
    }

    public String getServiceName() {
        return SERVICE_NAME;
    }

    public int getTriggerCount() {
        return 1;
    }

    public UncaughtExceptionHandler getUncaughtExceptionHandler() {
        return this.mUncaughtExceptionHandler;
    }

    public AppCenterFuture<Collection<ErrorReport>> getUnprocessedErrorReports() {
        final DefaultAppCenterFuture defaultAppCenterFuture = new DefaultAppCenterFuture();
        postAsyncGetter(new Runnable() {
            public void run() {
                ArrayList arrayList = new ArrayList(Crashes.this.mUnprocessedErrorReports.size());
                for (ErrorLogReport access$1300 : Crashes.this.mUnprocessedErrorReports.values()) {
                    arrayList.add(access$1300.report);
                }
                defaultAppCenterFuture.complete(arrayList);
            }
        }, defaultAppCenterFuture, Collections.emptyList());
        return defaultAppCenterFuture;
    }

    public synchronized void onStarted(Context context, Channel channel, String str, String str2, boolean z) {
        this.mContext = context;
        if (!isInstanceEnabled()) {
            ErrorLogHelper.removeMinidumpFolder();
            AppCenterLog.debug(LOG_TAG, "Clean up minidump folder.");
        }
        super.onStarted(context, channel, str, str2, z);
        if (isInstanceEnabled()) {
            processPendingErrors();
        }
    }

    public void saveUncaughtException(Thread thread, Throwable th) {
        try {
            saveUncaughtException(thread, th, ErrorLogHelper.getModelExceptionFromThrowable(th));
        } catch (JSONException e2) {
            AppCenterLog.error(LOG_TAG, "Error serializing error log to JSON", e2);
        } catch (IOException e3) {
            AppCenterLog.error(LOG_TAG, "Error writing error log to file", e3);
        }
    }

    public void sendErrorAttachments(final String str, final Iterable<ErrorAttachmentLog> iterable) {
        post(new Runnable() {
            public void run() {
                try {
                    Crashes.this.sendErrorAttachment(UUID.fromString(str), iterable);
                } catch (RuntimeException unused) {
                    AppCenterLog.error(Crashes.LOG_TAG, "Error report identifier has an invalid format for sending attachments.");
                }
            }
        });
    }

    public void setAutomaticProcessing(boolean z) {
        this.mAutomaticProcessing = z;
    }

    public synchronized void setInstanceListener(CrashesListener crashesListener) {
        if (crashesListener == null) {
            crashesListener = DEFAULT_ERROR_REPORTING_LISTENER;
        }
        this.mCrashesListener = crashesListener;
    }

    public void setLogSerializer(LogSerializer logSerializer) {
        this.mLogSerializer = logSerializer;
    }

    public void setUncaughtExceptionHandler(UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.mUncaughtExceptionHandler = uncaughtExceptionHandler;
    }

    public static void trackError(Throwable th, Map<String, String> map, Iterable<ErrorAttachmentLog> iterable) {
        getInstance().queueException(th, map, iterable);
    }

    public synchronized UUID queueException(final Exception exception, Map<String, String> map, Iterable<ErrorAttachmentLog> iterable) {
        return queueException((ExceptionModelBuilder) new ExceptionModelBuilder() {
            public Exception buildExceptionModel() {
                return exception;
            }
        }, map, iterable);
    }

    public AppCenterFuture<Boolean> sendCrashReportsOrAwaitUserConfirmation(final Collection<String> collection) {
        final DefaultAppCenterFuture defaultAppCenterFuture = new DefaultAppCenterFuture();
        postAsyncGetter(new Runnable() {
            public void run() {
                Iterator it = Crashes.this.mUnprocessedErrorReports.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    UUID uuid = (UUID) entry.getKey();
                    String id = ((ErrorLogReport) entry.getValue()).report.getId();
                    Collection collection = collection;
                    if (collection == null || !collection.contains(id)) {
                        AppCenterLog.debug(Crashes.LOG_TAG, "CrashesListener.shouldProcess returned false, clean up and ignore log: " + id);
                        Crashes.this.removeAllStoredErrorLogFiles(uuid);
                        it.remove();
                    } else {
                        AppCenterLog.debug(Crashes.LOG_TAG, "CrashesListener.shouldProcess returned true, continue processing log: " + id);
                    }
                }
                defaultAppCenterFuture.complete(Boolean.valueOf(Crashes.this.sendCrashReportsOrAwaitUserConfirmation()));
            }
        }, defaultAppCenterFuture, false);
        return defaultAppCenterFuture;
    }

    private synchronized UUID queueException(ExceptionModelBuilder exceptionModelBuilder, Map<String, String> map, Iterable<ErrorAttachmentLog> iterable) {
        UUID randomUUID;
        final String userId = UserIdContext.getInstance().getUserId();
        randomUUID = UUID.randomUUID();
        final Map<String, String> validateProperties = ErrorLogHelper.validateProperties(map, "HandledError");
        final UUID uuid = randomUUID;
        final ExceptionModelBuilder exceptionModelBuilder2 = exceptionModelBuilder;
        final Iterable<ErrorAttachmentLog> iterable2 = iterable;
        post(new Runnable() {
            public void run() {
                HandledErrorLog handledErrorLog = new HandledErrorLog();
                handledErrorLog.setId(uuid);
                handledErrorLog.setUserId(userId);
                handledErrorLog.setException(exceptionModelBuilder2.buildExceptionModel());
                handledErrorLog.setProperties(validateProperties);
                Crashes.this.mChannel.enqueue(handledErrorLog, Crashes.ERROR_GROUP, 1);
                Crashes.this.sendErrorAttachment(uuid, iterable2);
            }
        });
        return randomUUID;
    }

    public UUID saveUncaughtException(Thread thread, Throwable th, Exception exception) {
        if (!isEnabled().get().booleanValue() || this.mSavedUncaughtException) {
            return null;
        }
        this.mSavedUncaughtException = true;
        return saveErrorLogFiles(th, ErrorLogHelper.createErrorLog(this.mContext, thread, exception, Thread.getAllStackTraces(), this.mInitializeTimestamp, true));
    }
}
