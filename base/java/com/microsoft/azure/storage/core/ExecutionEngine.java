package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.ErrorReceivingResponseEvent;
import com.microsoft.azure.storage.LocationMode;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestCompletedEvent;
import com.microsoft.azure.storage.RequestResult;
import com.microsoft.azure.storage.ResponseReceivedEvent;
import com.microsoft.azure.storage.RetryContext;
import com.microsoft.azure.storage.RetryingEvent;
import com.microsoft.azure.storage.SendingRequestEvent;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageLocation;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.concurrent.TimeoutException;

public final class ExecutionEngine {

    /* renamed from: com.microsoft.azure.storage.core.ExecutionEngine$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$LocationMode;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001d */
        static {
            /*
                com.microsoft.azure.storage.LocationMode[] r0 = com.microsoft.azure.storage.LocationMode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$LocationMode = r0
                r1 = 1
                com.microsoft.azure.storage.LocationMode r2 = com.microsoft.azure.storage.LocationMode.PRIMARY_ONLY     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.LocationMode r2 = com.microsoft.azure.storage.LocationMode.SECONDARY_ONLY     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2 = 2
                r0[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r0 = 3
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.storage.LocationMode r3 = com.microsoft.azure.storage.LocationMode.PRIMARY_THEN_SECONDARY     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r1 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.storage.LocationMode r2 = com.microsoft.azure.storage.LocationMode.SECONDARY_THEN_PRIMARY     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2 = 4
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.core.ExecutionEngine.AnonymousClass1.<clinit>():void");
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v4, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v5, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v6, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v10, resolved type: com.microsoft.azure.storage.RetryPolicy} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v11, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v18, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v17, resolved type: java.io.OutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v21, resolved type: long} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v30, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v31, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v32, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v20, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v33, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v34, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v35, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v38, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v41, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v44, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v47, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v50, resolved type: java.net.HttpURLConnection} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v36, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v45, resolved type: com.microsoft.azure.storage.RetryPolicy} */
    /* JADX WARNING: type inference failed for: r15v0 */
    /* JADX WARNING: type inference failed for: r10v3, types: [java.net.URL, java.lang.Object] */
    /* JADX WARNING: type inference failed for: r11v7, types: [java.lang.Object, java.lang.String] */
    /* JADX WARNING: type inference failed for: r15v7 */
    /* JADX WARNING: type inference failed for: r15v8 */
    /* JADX WARNING: type inference failed for: r15v11 */
    /* JADX WARNING: type inference failed for: r15v15 */
    /* JADX WARNING: type inference failed for: r15v18 */
    /* JADX WARNING: type inference failed for: r15v19 */
    /* JADX WARNING: type inference failed for: r15v20 */
    /* JADX WARNING: type inference failed for: r15v21 */
    /* JADX WARNING: type inference failed for: r15v22 */
    /* JADX WARNING: type inference failed for: r15v23 */
    /* JADX WARNING: type inference failed for: r15v25 */
    /* JADX WARNING: type inference failed for: r15v26 */
    /* JADX WARNING: type inference failed for: r15v27 */
    /* JADX WARNING: type inference failed for: r15v28 */
    /* JADX WARNING: type inference failed for: r15v29 */
    /* JADX WARNING: type inference failed for: r15v30 */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0278, code lost:
        if (r35.isSent() == false) goto L_0x0281;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x027a, code lost:
        fireRequestCompletedEvent(r13, r1, r35.getResult());
        r12 = r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x02c7, code lost:
        if (r35.isSent() == false) goto L_0x0281;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0178 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x03d2  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0211 A[Catch:{ StorageException | IOException -> 0x0178, all -> 0x017c, StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <CLIENT_TYPE, PARENT_TYPE, RESULT_TYPE> RESULT_TYPE executeWithRetry(CLIENT_TYPE r33, PARENT_TYPE r34, com.microsoft.azure.storage.core.StorageRequest<CLIENT_TYPE, PARENT_TYPE, RESULT_TYPE> r35, com.microsoft.azure.storage.RetryPolicyFactory r36, com.microsoft.azure.storage.OperationContext r37) {
        /*
            r7 = r33
            r8 = r34
            r9 = r35
            r6 = r37
            java.lang.String r5 = "A network error occurred before the HTTP response status and headers were received."
            java.lang.String r4 = "Retryable exception thrown. Class = '%s', Message = '%s'."
            if (r36 != 0) goto L_0x0014
            com.microsoft.azure.storage.RetryNoRetry r0 = new com.microsoft.azure.storage.RetryNoRetry
            r0.<init>()
            goto L_0x001f
        L_0x0014:
            com.microsoft.azure.storage.RetryPolicy r0 = r36.createInstance(r37)
            if (r0 != 0) goto L_0x001f
            com.microsoft.azure.storage.RetryNoRetry r0 = new com.microsoft.azure.storage.RetryNoRetry
            r0.<init>()
        L_0x001f:
            r3 = r0
            java.util.Date r0 = new java.util.Date
            r0.<init>()
            long r18 = r0.getTime()
            r20 = 0
            r21 = 0
            r1 = r20
            r2 = 0
        L_0x0030:
            r22 = 2
            r15 = 3
            r23 = 1
            java.net.HttpURLConnection r1 = setupStorageRequest(r7, r8, r9, r2, r6)     // Catch:{ StorageException -> 0x0283, Exception -> 0x0246, all -> 0x0242 }
            java.lang.String r0 = "Starting request to '%s' at '%s'."
            java.net.URL r10 = r1.getURL()     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            java.lang.String r11 = "x-ms-date"
            java.lang.String r11 = r1.getRequestProperty(r11)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            com.microsoft.azure.storage.core.Logger.info(r6, r0, r10, r11)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            java.io.InputStream r0 = r35.getSendStream()     // Catch:{ all -> 0x0204 }
            if (r0 == 0) goto L_0x0091
            java.lang.String r0 = "Writing request data."
            com.microsoft.azure.storage.core.Logger.info(r6, r0)     // Catch:{ all -> 0x0204 }
            java.lang.Long r0 = r35.getLength()     // Catch:{ all -> 0x0204 }
            long r10 = r0.longValue()     // Catch:{ all -> 0x0204 }
            r12 = 0
            int r0 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r0 < 0) goto L_0x006c
            java.lang.Long r0 = r35.getLength()     // Catch:{ all -> 0x0204 }
            long r10 = r0.longValue()     // Catch:{ all -> 0x0204 }
            r1.setFixedLengthStreamingMode(r10)     // Catch:{ all -> 0x0204 }
        L_0x006c:
            java.io.InputStream r10 = r35.getSendStream()     // Catch:{ all -> 0x0204 }
            java.io.OutputStream r11 = r1.getOutputStream()     // Catch:{ all -> 0x0204 }
            java.lang.Long r0 = r35.getLength()     // Catch:{ all -> 0x0204 }
            long r12 = r0.longValue()     // Catch:{ all -> 0x0204 }
            r14 = 0
            r0 = 0
            com.microsoft.azure.storage.RequestOptions r17 = r35.getRequestOptions()     // Catch:{ all -> 0x0204 }
            r15 = r0
            r16 = r37
            com.microsoft.azure.storage.core.StreamMd5AndLength r0 = com.microsoft.azure.storage.core.Utility.writeToOutputStream(r10, r11, r12, r14, r15, r16, r17)     // Catch:{ all -> 0x0204 }
            r9.validateStreamWrite(r0)     // Catch:{ all -> 0x0204 }
            java.lang.String r0 = "Request data was written successfully."
            com.microsoft.azure.storage.core.Logger.info(r6, r0)     // Catch:{ all -> 0x0204 }
        L_0x0091:
            com.microsoft.azure.storage.core.Utility.logHttpRequest(r1, r6)     // Catch:{ all -> 0x0204 }
            com.microsoft.azure.storage.RequestResult r0 = r35.getResult()     // Catch:{ all -> 0x0204 }
            java.util.Date r10 = new java.util.Date     // Catch:{ all -> 0x0204 }
            r10.<init>()     // Catch:{ all -> 0x0204 }
            r0.setStartDate(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = "Waiting for response."
            com.microsoft.azure.storage.core.Logger.info(r6, r10)     // Catch:{ all -> 0x0204 }
            int r10 = r1.getResponseCode()     // Catch:{ all -> 0x0204 }
            r0.setStatusCode(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = r1.getResponseMessage()     // Catch:{ all -> 0x0204 }
            r0.setStatusMessage(r10)     // Catch:{ all -> 0x0204 }
            java.util.Date r10 = new java.util.Date     // Catch:{ all -> 0x0204 }
            r10.<init>()     // Catch:{ all -> 0x0204 }
            r0.setStopDate(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = com.microsoft.azure.storage.core.BaseResponse.getRequestId(r1)     // Catch:{ all -> 0x0204 }
            r0.setServiceRequestID(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = com.microsoft.azure.storage.core.BaseResponse.getEtag(r1)     // Catch:{ all -> 0x0204 }
            r0.setEtag(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = com.microsoft.azure.storage.core.BaseResponse.getDate(r1)     // Catch:{ all -> 0x0204 }
            r0.setRequestDate(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = com.microsoft.azure.storage.core.BaseResponse.getContentMD5(r1)     // Catch:{ all -> 0x0204 }
            r0.setContentMD5(r10)     // Catch:{ all -> 0x0204 }
            java.lang.String r10 = com.microsoft.azure.storage.core.BaseResponse.getErrorCode(r1)     // Catch:{ all -> 0x0204 }
            r0.setErrorCode(r10)     // Catch:{ all -> 0x0204 }
            com.microsoft.azure.storage.RequestResult r10 = r35.getResult()     // Catch:{ all -> 0x01fb }
            fireResponseReceivedEvent(r6, r1, r10)     // Catch:{ all -> 0x01fb }
            java.lang.String r10 = "Response received. Status code = '%d', Request ID = '%s', Content-MD5 = '%s', ETag = '%s', Date = '%s'."
            r11 = 5
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch:{ all -> 0x01fb }
            int r12 = r0.getStatusCode()     // Catch:{ all -> 0x01fb }
            java.lang.Integer r12 = java.lang.Integer.valueOf(r12)     // Catch:{ all -> 0x01fb }
            r11[r21] = r12     // Catch:{ all -> 0x01fb }
            java.lang.String r12 = r0.getServiceRequestID()     // Catch:{ all -> 0x01fb }
            r11[r23] = r12     // Catch:{ all -> 0x01fb }
            java.lang.String r12 = r0.getContentMD5()     // Catch:{ all -> 0x01fb }
            r11[r22] = r12     // Catch:{ all -> 0x01fb }
            java.lang.String r12 = r0.getEtag()     // Catch:{ all -> 0x01fb }
            r13 = 3
            r11[r13] = r12     // Catch:{ all -> 0x01fb }
            r12 = 4
            java.lang.String r0 = r0.getRequestDate()     // Catch:{ all -> 0x01fb }
            r11[r12] = r0     // Catch:{ all -> 0x01fb }
            com.microsoft.azure.storage.core.Logger.info((com.microsoft.azure.storage.OperationContext) r6, (java.lang.String) r10, (java.lang.Object[]) r11)     // Catch:{ all -> 0x01fb }
            com.microsoft.azure.storage.core.Utility.logHttpResponse(r1, r6)     // Catch:{ all -> 0x01fb }
            com.microsoft.azure.storage.core.Logger.info(r6, r5)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            java.lang.String r0 = "Processing response headers."
            com.microsoft.azure.storage.core.Logger.info(r6, r0)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            java.lang.Object r0 = r9.preProcessResponse(r8, r7, r6)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            java.lang.String r10 = "Response headers were processed successfully."
            com.microsoft.azure.storage.core.Logger.info(r6, r10)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            boolean r10 = r35.isNonExceptionedRetryableFailure()     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            if (r10 != 0) goto L_0x01a2
            java.lang.String r10 = "Processing response body."
            com.microsoft.azure.storage.core.Logger.info(r6, r10)     // Catch:{ StorageException -> 0x023f, Exception -> 0x023c, all -> 0x0239 }
            r10 = r1
            r1 = r35
            r11 = r2
            r2 = r10
            r12 = r3
            r3 = r34
            r14 = r4
            r4 = r33
            r15 = r5
            r5 = r37
            r13 = r6
            r6 = r0
            java.lang.Object r0 = r1.postProcessResponse(r2, r3, r4, r5, r6)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            java.lang.String r1 = "Response body was parsed successfully."
            com.microsoft.azure.storage.core.Logger.info(r13, r1)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            int r1 = r1.getStatusCode()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 < r2) goto L_0x0181
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            int r1 = r1.getStatusCode()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r2 = 300(0x12c, float:4.2E-43)
            if (r1 >= r2) goto L_0x0181
            java.io.InputStream r1 = r10.getInputStream()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r26 = 0
            r27 = -1
            r29 = 0
            r30 = 0
            r31 = 0
            com.microsoft.azure.storage.RequestOptions r32 = r35.getRequestOptions()     // Catch:{ StorageException | IOException -> 0x0178, all -> 0x017c }
            r25 = r1
            com.microsoft.azure.storage.core.Utility.writeToOutputStream(r25, r26, r27, r29, r30, r31, r32)     // Catch:{ StorageException | IOException -> 0x0178, all -> 0x017c }
        L_0x0178:
            r1.close()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            goto L_0x0181
        L_0x017c:
            r0 = move-exception
            r1.close()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            throw r0     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
        L_0x0181:
            java.lang.String r1 = "Operation completed."
            com.microsoft.azure.storage.core.Logger.info(r13, r1)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            long r1 = r1.getTime()
            long r1 = r1 - r18
            r13.setClientTimeInMs(r1)
            boolean r1 = r35.isSent()
            if (r1 == 0) goto L_0x01a1
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()
            fireRequestCompletedEvent(r13, r10, r1)
        L_0x01a1:
            return r0
        L_0x01a2:
            r10 = r1
            r11 = r2
            r12 = r3
            r14 = r4
            r15 = r5
            r13 = r6
            java.lang.String r0 = "Operation did not return the expected result or returned an exception."
            com.microsoft.azure.storage.core.Logger.warn(r13, r0)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            com.microsoft.azure.storage.StorageException r0 = r9.materializeException(r13)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r1.setException(r0)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            int r1 = r1.getStatusCode()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r2 = 501(0x1f5, float:7.02E-43)
            if (r1 == r2) goto L_0x01fa
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            int r1 = r1.getStatusCode()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r2 = 505(0x1f9, float:7.08E-43)
            if (r1 == r2) goto L_0x01fa
            java.lang.String r1 = r0.getErrorCode()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            java.lang.String r2 = "InvalidBlobType"
            boolean r1 = r1.equals(r2)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            if (r1 != 0) goto L_0x01fa
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            long r1 = r1.getTime()
            long r1 = r1 - r18
            r13.setClientTimeInMs(r1)
            boolean r1 = r35.isSent()
            if (r1 == 0) goto L_0x01f7
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()
            fireRequestCompletedEvent(r13, r10, r1)
        L_0x01f7:
            r1 = r10
            goto L_0x0281
        L_0x01fa:
            throw r0     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
        L_0x01fb:
            r0 = move-exception
            r10 = r1
            r11 = r2
            r12 = r3
            r14 = r4
            r15 = r5
            r13 = r6
            r1 = 1
            goto L_0x020c
        L_0x0204:
            r0 = move-exception
            r10 = r1
            r11 = r2
            r12 = r3
            r14 = r4
            r15 = r5
            r13 = r6
            r1 = 0
        L_0x020c:
            com.microsoft.azure.storage.core.Logger.info(r13, r15)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            if (r1 != 0) goto L_0x022e
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            java.util.Date r1 = r1.getStartDate()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            if (r1 != 0) goto L_0x0227
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            java.util.Date r2 = new java.util.Date     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r2.<init>()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            r1.setStartDate(r2)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
        L_0x0227:
            com.microsoft.azure.storage.RequestResult r1 = r35.getResult()     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
            fireErrorReceivingResponseEvent(r13, r10, r1)     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
        L_0x022e:
            throw r0     // Catch:{ StorageException -> 0x0236, Exception -> 0x0233, all -> 0x022f }
        L_0x022f:
            r0 = move-exception
            r1 = r10
            goto L_0x03be
        L_0x0233:
            r0 = move-exception
            r1 = r10
            goto L_0x024c
        L_0x0236:
            r0 = move-exception
            r1 = r10
            goto L_0x0289
        L_0x0239:
            r0 = move-exception
            r10 = r1
            goto L_0x0243
        L_0x023c:
            r0 = move-exception
            r10 = r1
            goto L_0x0247
        L_0x023f:
            r0 = move-exception
            r10 = r1
            goto L_0x0284
        L_0x0242:
            r0 = move-exception
        L_0x0243:
            r13 = r6
            goto L_0x03be
        L_0x0246:
            r0 = move-exception
        L_0x0247:
            r11 = r2
            r12 = r3
            r14 = r4
            r15 = r5
            r13 = r6
        L_0x024c:
            java.lang.Class r2 = r0.getClass()     // Catch:{ all -> 0x03bd }
            java.lang.String r2 = r2.getName()     // Catch:{ all -> 0x03bd }
            java.lang.String r3 = r0.getMessage()     // Catch:{ all -> 0x03bd }
            com.microsoft.azure.storage.core.Logger.warn(r13, r14, r2, r3)     // Catch:{ all -> 0x03bd }
            com.microsoft.azure.storage.StorageException r0 = com.microsoft.azure.storage.StorageException.translateException(r9, r0, r13)     // Catch:{ all -> 0x03bd }
            com.microsoft.azure.storage.RequestResult r2 = r35.getResult()     // Catch:{ all -> 0x03bd }
            r2.setException(r0)     // Catch:{ all -> 0x03bd }
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            long r2 = r2.getTime()
            long r2 = r2 - r18
            r13.setClientTimeInMs(r2)
            boolean r2 = r35.isSent()
            if (r2 == 0) goto L_0x0281
        L_0x027a:
            com.microsoft.azure.storage.RequestResult r2 = r35.getResult()
            fireRequestCompletedEvent(r13, r1, r2)
        L_0x0281:
            r2 = 3
            goto L_0x02ca
        L_0x0283:
            r0 = move-exception
        L_0x0284:
            r11 = r2
            r12 = r3
            r14 = r4
            r15 = r5
            r13 = r6
        L_0x0289:
            com.microsoft.azure.storage.RequestResult r2 = r35.getResult()     // Catch:{ all -> 0x03bd }
            int r3 = r0.getHttpStatusCode()     // Catch:{ all -> 0x03bd }
            r2.setStatusCode(r3)     // Catch:{ all -> 0x03bd }
            com.microsoft.azure.storage.RequestResult r2 = r35.getResult()     // Catch:{ all -> 0x03bd }
            java.lang.String r3 = r0.getMessage()     // Catch:{ all -> 0x03bd }
            r2.setStatusMessage(r3)     // Catch:{ all -> 0x03bd }
            com.microsoft.azure.storage.RequestResult r2 = r35.getResult()     // Catch:{ all -> 0x03bd }
            r2.setException(r0)     // Catch:{ all -> 0x03bd }
            java.lang.Class r2 = r0.getClass()     // Catch:{ all -> 0x03bd }
            java.lang.String r2 = r2.getName()     // Catch:{ all -> 0x03bd }
            java.lang.String r3 = r0.getMessage()     // Catch:{ all -> 0x03bd }
            com.microsoft.azure.storage.core.Logger.warn(r13, r14, r2, r3)     // Catch:{ all -> 0x03bd }
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            long r2 = r2.getTime()
            long r2 = r2 - r18
            r13.setClientTimeInMs(r2)
            boolean r2 = r35.isSent()
            if (r2 == 0) goto L_0x0281
            goto L_0x027a
        L_0x02ca:
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r11)
            r2[r21] = r3
            com.microsoft.azure.storage.RequestResult r3 = r35.getResult()
            int r3 = r3.getStatusCode()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r2[r23] = r3
            if (r0 != 0) goto L_0x02e5
            r3 = r20
            goto L_0x02e9
        L_0x02e5:
            java.lang.String r3 = r0.getMessage()
        L_0x02e9:
            r2[r22] = r3
            java.lang.String r3 = "Checking if the operation should be retried. Retry count = '%d', HTTP status code = '%d', Error Message = '%s'."
            com.microsoft.azure.storage.core.Logger.info((com.microsoft.azure.storage.OperationContext) r13, (java.lang.String) r3, (java.lang.Object[]) r2)
            com.microsoft.azure.storage.StorageLocation r2 = r35.getCurrentLocation()
            com.microsoft.azure.storage.LocationMode r3 = r35.getLocationMode()
            com.microsoft.azure.storage.StorageLocation r2 = getNextLocation(r2, r3)
            r9.setCurrentLocation(r2)
            com.microsoft.azure.storage.StorageLocation r2 = r35.getCurrentLocation()
            com.microsoft.azure.storage.LocationMode r3 = r35.getLocationMode()
            java.lang.String r4 = "The next location has been set to '%s', per location mode '%s'."
            com.microsoft.azure.storage.core.Logger.info(r13, r4, r2, r3)
            com.microsoft.azure.storage.RetryContext r2 = new com.microsoft.azure.storage.RetryContext
            int r3 = r11 + 1
            com.microsoft.azure.storage.RequestResult r4 = r35.getResult()
            com.microsoft.azure.storage.StorageLocation r5 = r35.getCurrentLocation()
            com.microsoft.azure.storage.LocationMode r6 = r35.getLocationMode()
            r2.<init>(r11, r4, r5, r6)
            com.microsoft.azure.storage.RetryInfo r4 = r12.evaluate(r2, r13)
            if (r4 != 0) goto L_0x0334
            if (r0 != 0) goto L_0x0328
            goto L_0x032c
        L_0x0328:
            java.lang.String r20 = r0.getMessage()
        L_0x032c:
            r1 = r20
            java.lang.String r2 = "Retry policy did not allow for a retry. Failing. Error Message = '%s'."
            com.microsoft.azure.storage.core.Logger.error((com.microsoft.azure.storage.OperationContext) r13, (java.lang.String) r2, (java.lang.Object) r1)
            throw r0
        L_0x0334:
            com.microsoft.azure.storage.RequestOptions r0 = r35.getRequestOptions()
            java.lang.Long r0 = r0.getOperationExpiryTimeInMs()
            int r5 = r4.getRetryInterval()
            long r5 = (long) r5
            boolean r0 = com.microsoft.azure.storage.core.Utility.validateMaxExecutionTimeout(r0, r5)
            if (r0 == 0) goto L_0x0373
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException
            java.lang.String r1 = "The client could not finish the operation within specified maximum execution timeout."
            r0.<init>(r1)
            com.microsoft.azure.storage.StorageException r1 = new com.microsoft.azure.storage.StorageException
            r25 = 306(0x132, float:4.29E-43)
            r26 = 0
            java.lang.String r23 = "OperationTimedOut"
            java.lang.String r24 = "The client could not finish the operation within specified maximum execution timeout."
            r22 = r1
            r27 = r0
            r22.<init>(r23, r24, r25, r26, r27)
            r9.initialize(r13)
            com.microsoft.azure.storage.RequestResult r0 = r35.getResult()
            r0.setException(r1)
            java.lang.String r0 = r1.getMessage()
            java.lang.String r2 = "Operation cannot be retried because maximum execution timeout has been reached. Failing. Inner error Message = '%s'."
            com.microsoft.azure.storage.core.Logger.error((com.microsoft.azure.storage.OperationContext) r13, (java.lang.String) r2, (java.lang.Object) r0)
            throw r1
        L_0x0373:
            com.microsoft.azure.storage.StorageLocation r0 = r4.getTargetLocation()
            r9.setCurrentLocation(r0)
            com.microsoft.azure.storage.LocationMode r0 = r4.getUpdatedLocationMode()
            r9.setLocationMode(r0)
            com.microsoft.azure.storage.StorageLocation r0 = r35.getCurrentLocation()
            com.microsoft.azure.storage.LocationMode r5 = r35.getLocationMode()
            java.lang.String r6 = "The retry policy set the next location to '%s' and updated the location mode to '%s'."
            com.microsoft.azure.storage.core.Logger.info(r13, r6, r0, r5)
            java.net.HttpURLConnection r0 = r35.getConnection()     // Catch:{ InterruptedException -> 0x03af }
            com.microsoft.azure.storage.RequestResult r5 = r35.getResult()     // Catch:{ InterruptedException -> 0x03af }
            fireRetryingEvent(r13, r0, r5, r2)     // Catch:{ InterruptedException -> 0x03af }
            java.lang.String r0 = "Operation will be retried after '%d'ms."
            int r2 = r4.getRetryInterval()     // Catch:{ InterruptedException -> 0x03af }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ InterruptedException -> 0x03af }
            com.microsoft.azure.storage.core.Logger.info((com.microsoft.azure.storage.OperationContext) r13, (java.lang.String) r0, (java.lang.Object) r2)     // Catch:{ InterruptedException -> 0x03af }
            int r0 = r4.getRetryInterval()     // Catch:{ InterruptedException -> 0x03af }
            long r4 = (long) r0     // Catch:{ InterruptedException -> 0x03af }
            java.lang.Thread.sleep(r4)     // Catch:{ InterruptedException -> 0x03af }
            goto L_0x03b6
        L_0x03af:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x03b6:
            r2 = r3
            r3 = r12
            r6 = r13
            r4 = r14
            r5 = r15
            goto L_0x0030
        L_0x03bd:
            r0 = move-exception
        L_0x03be:
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            long r2 = r2.getTime()
            long r2 = r2 - r18
            r13.setClientTimeInMs(r2)
            boolean r2 = r35.isSent()
            if (r2 == 0) goto L_0x03d9
            com.microsoft.azure.storage.RequestResult r2 = r35.getResult()
            fireRequestCompletedEvent(r13, r1, r2)
        L_0x03d9:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.core.ExecutionEngine.executeWithRetry(java.lang.Object, java.lang.Object, com.microsoft.azure.storage.core.StorageRequest, com.microsoft.azure.storage.RetryPolicyFactory, com.microsoft.azure.storage.OperationContext):java.lang.Object");
    }

    public static void fireErrorReceivingResponseEvent(OperationContext operationContext, HttpURLConnection httpURLConnection, RequestResult requestResult) {
        if (operationContext.getErrorReceivingResponseEventHandler().hasListeners() || OperationContext.getGlobalErrorReceivingResponseEventHandler().hasListeners()) {
            ErrorReceivingResponseEvent errorReceivingResponseEvent = new ErrorReceivingResponseEvent(operationContext, httpURLConnection, requestResult);
            operationContext.getErrorReceivingResponseEventHandler().fireEvent(errorReceivingResponseEvent);
            OperationContext.getGlobalErrorReceivingResponseEventHandler().fireEvent(errorReceivingResponseEvent);
        }
    }

    public static void fireRequestCompletedEvent(OperationContext operationContext, HttpURLConnection httpURLConnection, RequestResult requestResult) {
        if (operationContext.getRequestCompletedEventHandler().hasListeners() || OperationContext.getGlobalRequestCompletedEventHandler().hasListeners()) {
            RequestCompletedEvent requestCompletedEvent = new RequestCompletedEvent(operationContext, httpURLConnection, requestResult);
            operationContext.getRequestCompletedEventHandler().fireEvent(requestCompletedEvent);
            OperationContext.getGlobalRequestCompletedEventHandler().fireEvent(requestCompletedEvent);
        }
    }

    public static void fireResponseReceivedEvent(OperationContext operationContext, HttpURLConnection httpURLConnection, RequestResult requestResult) {
        if (operationContext.getResponseReceivedEventHandler().hasListeners() || OperationContext.getGlobalResponseReceivedEventHandler().hasListeners()) {
            ResponseReceivedEvent responseReceivedEvent = new ResponseReceivedEvent(operationContext, httpURLConnection, requestResult);
            operationContext.getResponseReceivedEventHandler().fireEvent(responseReceivedEvent);
            OperationContext.getGlobalResponseReceivedEventHandler().fireEvent(responseReceivedEvent);
        }
    }

    public static void fireRetryingEvent(OperationContext operationContext, HttpURLConnection httpURLConnection, RequestResult requestResult, RetryContext retryContext) {
        if (operationContext.getRetryingEventHandler().hasListeners() || OperationContext.getGlobalRetryingEventHandler().hasListeners()) {
            RetryingEvent retryingEvent = new RetryingEvent(operationContext, httpURLConnection, requestResult, retryContext);
            operationContext.getRetryingEventHandler().fireEvent(retryingEvent);
            OperationContext.getGlobalRetryingEventHandler().fireEvent(retryingEvent);
        }
    }

    public static void fireSendingRequestEvent(OperationContext operationContext, HttpURLConnection httpURLConnection, RequestResult requestResult) {
        if (operationContext.getSendingRequestEventHandler().hasListeners() || OperationContext.getGlobalSendingRequestEventHandler().hasListeners()) {
            SendingRequestEvent sendingRequestEvent = new SendingRequestEvent(operationContext, httpURLConnection, requestResult);
            operationContext.getSendingRequestEventHandler().fireEvent(sendingRequestEvent);
            OperationContext.getGlobalSendingRequestEventHandler().fireEvent(sendingRequestEvent);
        }
    }

    public static StorageLocation getNextLocation(StorageLocation storageLocation, LocationMode locationMode) {
        int ordinal = locationMode.ordinal();
        if (ordinal == 0) {
            return StorageLocation.PRIMARY;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                return StorageLocation.SECONDARY;
            }
            if (ordinal != 3) {
                return StorageLocation.PRIMARY;
            }
        }
        StorageLocation storageLocation2 = StorageLocation.PRIMARY;
        return storageLocation == storageLocation2 ? StorageLocation.SECONDARY : storageLocation2;
    }

    public static <CLIENT_TYPE, PARENT_TYPE, RESULT_TYPE> HttpURLConnection setupStorageRequest(CLIENT_TYPE client_type, PARENT_TYPE parent_type, StorageRequest<CLIENT_TYPE, PARENT_TYPE, RESULT_TYPE> storageRequest, int i2, OperationContext operationContext) {
        try {
            storageRequest.initialize(operationContext);
            if (!Utility.validateMaxExecutionTimeout(storageRequest.getRequestOptions().getOperationExpiryTimeInMs())) {
                if (i2 > 0) {
                    storageRequest.recoveryAction(operationContext);
                    Logger.info(operationContext, LogConstants.RETRY);
                } else {
                    storageRequest.applyLocationModeToRequest();
                    storageRequest.initializeLocation();
                    Logger.info(operationContext, LogConstants.STARTING);
                }
                storageRequest.setRequestLocationMode();
                storageRequest.validateLocation();
                Logger.info(operationContext, LogConstants.INIT_LOCATION, storageRequest.getCurrentLocation(), storageRequest.getLocationMode());
                HttpURLConnection buildRequest = storageRequest.buildRequest(client_type, parent_type, operationContext);
                storageRequest.setHeaders(buildRequest, parent_type, operationContext);
                if (operationContext.getUserHeaders() != null) {
                    for (Map.Entry next : operationContext.getUserHeaders().entrySet()) {
                        buildRequest.setRequestProperty((String) next.getKey(), (String) next.getValue());
                    }
                }
                fireSendingRequestEvent(operationContext, buildRequest, storageRequest.getResult());
                storageRequest.setIsSent(true);
                storageRequest.signRequest(buildRequest, client_type, operationContext);
                storageRequest.setConnection(buildRequest);
                return buildRequest;
            }
            throw new StorageException(StorageErrorCodeStrings.OPERATION_TIMED_OUT, SR.MAXIMUM_EXECUTION_TIMEOUT_EXCEPTION, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, new TimeoutException(SR.MAXIMUM_EXECUTION_TIMEOUT_EXCEPTION));
        } catch (StorageException e2) {
            throw e2;
        } catch (Exception e3) {
            Exception exc = e3;
            throw new StorageException((String) null, exc.getMessage(), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, exc);
        }
    }
}
