package com.microsoft.appcenter.crashes;

import android.content.Context;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.crashes.ingestion.models.Exception;
import com.microsoft.appcenter.crashes.model.ErrorReport;
import com.microsoft.appcenter.crashes.utils.ErrorLogHelper;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.storage.FileManager;
import java.io.File;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class WrapperSdkExceptionManager {
    public static final String DATA_FILE_EXTENSION = ".dat";
    public static final Map<String, String> sWrapperExceptionDataContainer = new HashMap();

    public static ErrorReport buildHandledErrorReport(Context context, String str) {
        ErrorReport errorReport = new ErrorReport();
        errorReport.setId(str);
        errorReport.setAppErrorTime(new Date());
        errorReport.setAppStartTime(new Date(Crashes.getInstance().getInitializeTimestamp()));
        try {
            errorReport.setDevice(Crashes.getInstance().getDeviceInfo(context));
        } catch (DeviceInfoHelper.DeviceInfoException unused) {
            AppCenterLog.warn(Crashes.LOG_TAG, "Handled error report cannot get device info, errorReportId=" + str);
        }
        return errorReport;
    }

    public static void deleteWrapperExceptionData(UUID uuid) {
        if (uuid == null) {
            AppCenterLog.error(Crashes.LOG_TAG, "Failed to delete wrapper exception data: null errorId");
            return;
        }
        File file = getFile(uuid);
        if (file.exists()) {
            if (loadWrapperExceptionData(uuid) == null) {
                AppCenterLog.error(Crashes.LOG_TAG, "Failed to load wrapper exception data.");
            }
            FileManager.delete(file);
        }
    }

    public static File getFile(UUID uuid) {
        File errorStorageDirectory = ErrorLogHelper.getErrorStorageDirectory();
        return new File(errorStorageDirectory, uuid.toString() + DATA_FILE_EXTENSION);
    }

    public static AppCenterFuture<Collection<ErrorReport>> getUnprocessedErrorReports() {
        return Crashes.getInstance().getUnprocessedErrorReports();
    }

    public static String loadWrapperExceptionData(UUID uuid) {
        String str = null;
        if (uuid == null) {
            AppCenterLog.error(Crashes.LOG_TAG, "Failed to load wrapper exception data: null errorId");
            return null;
        }
        String str2 = sWrapperExceptionDataContainer.get(uuid.toString());
        if (str2 != null) {
            return str2;
        }
        File file = getFile(uuid);
        if (file.exists() && (str = FileManager.read(file)) != null) {
            sWrapperExceptionDataContainer.put(uuid.toString(), str);
        }
        return str;
    }

    public static UUID saveWrapperException(Thread thread, Throwable th, Exception exception, String str) {
        try {
            UUID saveUncaughtException = Crashes.getInstance().saveUncaughtException(thread, th, exception);
            if (!(saveUncaughtException == null || str == null)) {
                sWrapperExceptionDataContainer.put(saveUncaughtException.toString(), str);
                File file = getFile(saveUncaughtException);
                FileManager.write(file, str);
                AppCenterLog.debug(Crashes.LOG_TAG, "Saved raw wrapper exception data into " + file);
            }
            return saveUncaughtException;
        } catch (Exception e2) {
            AppCenterLog.error(Crashes.LOG_TAG, "Failed to save wrapper exception data to file", e2);
            return null;
        }
    }

    public static AppCenterFuture<Boolean> sendCrashReportsOrAwaitUserConfirmation(Collection<String> collection) {
        return Crashes.getInstance().sendCrashReportsOrAwaitUserConfirmation(collection);
    }

    public static void sendErrorAttachments(String str, Iterable<ErrorAttachmentLog> iterable) {
        Crashes.getInstance().sendErrorAttachments(str, iterable);
    }

    public static void setAutomaticProcessing(boolean z) {
        Crashes.getInstance().setAutomaticProcessing(z);
    }

    public static String trackException(Exception exception, Map<String, String> map, Iterable<ErrorAttachmentLog> iterable) {
        return Crashes.getInstance().queueException(exception, map, iterable).toString();
    }
}
