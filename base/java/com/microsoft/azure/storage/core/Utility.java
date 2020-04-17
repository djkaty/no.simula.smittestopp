package com.microsoft.azure.storage.core;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.StorageErrorCode;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.internal.eststelemetry.Schema;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import e.b.a.a.c;
import e.b.a.a.d;
import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.n;
import e.b.a.a.o.b;
import e.b.a.a.q.g;
import e.b.a.a.q.i;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeoutException;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamWriter;
import org.xml.sax.SAXException;

public final class Utility {
    public static final TimeZone GMT_ZONE = TimeZone.getTimeZone("GMT");
    public static final String ISO8601_PATTERN = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    public static final String ISO8601_PATTERN_NO_SECONDS = "yyyy-MM-dd'T'HH:mm'Z'";
    public static final String JAVA_ISO8601_PATTERN = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    public static final Locale LOCALE_US = Locale.US;
    public static final int MAX_PRECISION_DATESTRING_LENGTH = MAX_PRECISION_PATTERN.replaceAll("'", "").length();
    public static final String MAX_PRECISION_PATTERN = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    public static ThreadLocal<DateFormat> RFC1123_GMT_DATE_TIME_FORMATTER = new ThreadLocal<DateFormat>() {
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Utility.RFC1123_PATTERN, Utility.LOCALE_US);
            simpleDateFormat.setTimeZone(Utility.GMT_ZONE);
            return simpleDateFormat;
        }
    };
    public static final String RFC1123_PATTERN = "EEE, dd MMM yyyy HH:mm:ss z";
    public static final TimeZone UTC_ZONE = TimeZone.getTimeZone("UTC");
    public static final d jsonFactory = new d();
    public static final List<Integer> pathStylePorts = Arrays.asList(new Integer[]{10000, 10001, 10002, 10003, 10004, 10100, 10101, 10102, 10103, 10104, 11000, 11001, 11002, 11003, 11004, 11100, 11101, 11102, 11103, 11104});
    public static final ThreadLocal<SAXParser> saxParserThreadLocal = new ThreadLocal<SAXParser>() {
        public SAXParserFactory factory;

        public SAXParser initialValue() {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            this.factory = newInstance;
            newInstance.setNamespaceAware(true);
            try {
                return this.factory.newSAXParser();
            } catch (SAXException e2) {
                throw new RuntimeException("Unable to create SAXParser", e2);
            } catch (ParserConfigurationException e3) {
                throw new RuntimeException("Check parser configuration", e3);
            }
        }
    };
    public static final XMLOutputFactory xmlOutputFactory = XMLOutputFactory.newInstance();

    /* renamed from: com.microsoft.azure.storage.core.Utility$3  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$StorageLocation;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        static {
            /*
                com.microsoft.azure.storage.StorageLocation[] r0 = com.microsoft.azure.storage.StorageLocation.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$StorageLocation = r0
                r1 = 1
                com.microsoft.azure.storage.StorageLocation r2 = com.microsoft.azure.storage.StorageLocation.PRIMARY     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$StorageLocation     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.StorageLocation r2 = com.microsoft.azure.storage.StorageLocation.SECONDARY     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.core.Utility.AnonymousClass3.<clinit>():void");
        }
    }

    public static StreamMd5AndLength analyzeStream(InputStream inputStream, long j2, long j3, boolean z, boolean z2) {
        MessageDigest messageDigest;
        InputStream inputStream2 = inputStream;
        long j4 = Long.MAX_VALUE;
        long j5 = j3 < 0 ? Long.MAX_VALUE : j3;
        if (z) {
            if (inputStream.markSupported()) {
                inputStream2.mark(268435456);
            } else {
                throw new IllegalArgumentException(SR.INPUT_STREAM_SHOULD_BE_MARKABLE);
            }
        }
        if (z2) {
            try {
                messageDigest = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
            } catch (NoSuchAlgorithmException e2) {
                throw generateNewUnexpectedStorageException(e2);
            }
        } else {
            messageDigest = null;
        }
        if (j2 >= 0) {
            j4 = j2;
        }
        StreamMd5AndLength streamMd5AndLength = new StreamMd5AndLength();
        byte[] bArr = new byte[8192];
        long j6 = (long) 8192;
        int min = (int) Math.min(j6, j4 - streamMd5AndLength.getLength());
        int i2 = 0;
        int read = inputStream2.read(bArr, 0, min);
        while (true) {
            if (min <= 0 || read == -1) {
                break;
            }
            if (z2) {
                messageDigest.update(bArr, i2, read);
            }
            streamMd5AndLength.setLength(((long) read) + streamMd5AndLength.getLength());
            if (streamMd5AndLength.getLength() > j5) {
                streamMd5AndLength.setLength(-1);
                streamMd5AndLength.setMd5((String) null);
                break;
            }
            min = (int) Math.min(j6, j4 - streamMd5AndLength.getLength());
            read = inputStream2.read(bArr, 0, min);
            i2 = 0;
        }
        if (streamMd5AndLength.getLength() != -1 && z2) {
            streamMd5AndLength.setMd5(Base64.encode(messageDigest.digest()));
        }
        if (streamMd5AndLength.getLength() != -1 && j4 > 0) {
            streamMd5AndLength.setLength(Math.min(streamMd5AndLength.getLength(), j4));
        }
        if (z) {
            inputStream.reset();
            inputStream2.mark(268435456);
        }
        return streamMd5AndLength;
    }

    public static void assertContinuationType(ResultContinuation resultContinuation, ResultContinuationType resultContinuationType) {
        if (resultContinuation != null && resultContinuation.getContinuationType() != ResultContinuationType.NONE && resultContinuation.getContinuationType() != resultContinuationType) {
            throw new IllegalArgumentException(String.format(LOCALE_US, SR.UNEXPECTED_CONTINUATION_TYPE, new Object[]{resultContinuationType, resultContinuation.getContinuationType()}));
        }
    }

    public static void assertGreaterThanOrEqual(String str, long j2, long j3) {
        if (j2 < j3) {
            throw new IllegalArgumentException(String.format(SR.PARAMETER_SHOULD_BE_GREATER_OR_EQUAL, new Object[]{str, Long.valueOf(j3)}));
        }
    }

    public static void assertInBounds(String str, long j2, long j3, long j4) {
        if (j2 < j3 || j2 > j4) {
            throw new IllegalArgumentException(String.format(SR.PARAMETER_NOT_IN_RANGE, new Object[]{str, Long.valueOf(j3), Long.valueOf(j4)}));
        }
    }

    public static void assertNotNull(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format(LOCALE_US, SR.ARGUMENT_NULL, new Object[]{str}));
        }
    }

    public static void assertNotNullOrEmpty(String str, String str2) {
        assertNotNull(str, str2);
        if (isNullOrEmpty(str2)) {
            throw new IllegalArgumentException(String.format(LOCALE_US, SR.ARGUMENT_NULL_OR_EMPTY, new Object[]{str}));
        }
    }

    public static byte[] binaryAppend(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static void checkNullaryCtor(Class<?> cls) {
        try {
            if (cls.getDeclaredConstructor((Class[]) null) == null) {
                throw new IllegalArgumentException(SR.MISSING_NULLARY_CONSTRUCTOR);
            }
        } catch (Exception unused) {
            throw new IllegalArgumentException(SR.MISSING_NULLARY_CONSTRUCTOR);
        }
    }

    public static XMLStreamWriter createXMLStreamWriter(StringWriter stringWriter) {
        return xmlOutputFactory.createXMLStreamWriter(stringWriter);
    }

    public static boolean determinePathStyleFromUri(URI uri) {
        String path = uri.getPath();
        if (path != null && path.startsWith("/")) {
            path = path.substring(1);
        }
        if (isNullOrEmpty(path)) {
            return false;
        }
        if (pathStylePorts.contains(Integer.valueOf(uri.getPort())) || !isHostDnsName(uri)) {
            return true;
        }
        return false;
    }

    public static long encryptStreamIfUnderThreshold(InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream, Cipher cipher, long j2, long j3) {
        if (j3 < 0) {
            j3 = Long.MAX_VALUE;
        }
        if (inputStream.markSupported()) {
            inputStream.mark(268435456);
            if (j2 < 0) {
                j2 = Long.MAX_VALUE;
            }
            CipherOutputStream cipherOutputStream = new CipherOutputStream(byteArrayOutputStream, cipher);
            byte[] bArr = new byte[8192];
            long j4 = (long) 8192;
            int min = (int) Math.min(j4, j2 - ((long) byteArrayOutputStream.size()));
            int read = inputStream.read(bArr, 0, min);
            while (min > 0 && read != -1) {
                cipherOutputStream.write(bArr, 0, read);
                cipherOutputStream.flush();
                long size = (long) byteArrayOutputStream.size();
                if (size > j3) {
                    break;
                }
                min = (int) Math.min(j4, j2 - size);
                read = inputStream.read(bArr, 0, min);
            }
            inputStream.reset();
            inputStream.mark(268435456);
            cipherOutputStream.close();
            long size2 = (long) byteArrayOutputStream.size();
            if (size2 > j3) {
                return -1;
            }
            return size2;
        }
        throw new IllegalArgumentException(SR.INPUT_STREAM_SHOULD_BE_MARKABLE);
    }

    public static String formatETag(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            return str;
        }
        return String.format("\"%s\"", new Object[]{str});
    }

    public static StorageException generateNewUnexpectedStorageException(Exception exc) {
        StorageErrorCode storageErrorCode = StorageErrorCode.NONE;
        StorageException storageException = new StorageException("NONE", "Unexpected internal storage client error.", Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
        storageException.initCause(exc);
        return storageException;
    }

    public static String getGMTTime() {
        return getGMTTime(new Date());
    }

    public static String getJavaISO8601Time(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", LOCALE_US);
        simpleDateFormat.setTimeZone(UTC_ZONE);
        return simpleDateFormat.format(date);
    }

    public static f getJsonGenerator(StringWriter stringWriter) {
        d dVar = jsonFactory;
        i iVar = new i(dVar.a(stringWriter, false), dVar.C, stringWriter);
        n nVar = dVar.D;
        if (nVar != d.H) {
            iVar.D = nVar;
        }
        return iVar;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v2, resolved type: e.b.a.a.q.f} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v4, resolved type: e.b.a.a.i} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v5, resolved type: e.b.a.a.q.f} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: e.b.a.a.q.f} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static e.b.a.a.i getJsonParser(java.lang.String r12) {
        /*
            e.b.a.a.d r0 = jsonFactory
            if (r0 == 0) goto L_0x0047
            int r1 = r12.length()
            r2 = 32768(0x8000, float:4.5918E-41)
            if (r1 > r2) goto L_0x0039
            r2 = 1
            e.b.a.a.p.b r4 = r0.a(r12, r2)
            char[] r2 = r4.f1059g
            r4.a((java.lang.Object) r2)
            e.b.a.a.s.a r2 = r4.f1056d
            r3 = 0
            char[] r8 = r2.a(r3, r1)
            r4.f1059g = r8
            r12.getChars(r3, r1, r8, r3)
            r11 = 1
            e.b.a.a.q.f r12 = new e.b.a.a.q.f
            int r5 = r0.B
            e.b.a.a.r.b r2 = r0.x
            int r0 = r0.A
            e.b.a.a.r.b r7 = r2.b(r0)
            int r10 = r1 + 0
            r6 = 0
            r9 = 0
            r3 = r12
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
            goto L_0x0042
        L_0x0039:
            java.io.StringReader r1 = new java.io.StringReader
            r1.<init>(r12)
            e.b.a.a.i r12 = r0.a(r1)
        L_0x0042:
            e.b.a.a.i r12 = setupJsonParser(r12)
            return r12
        L_0x0047:
            r12 = 0
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.core.Utility.getJsonParser(java.lang.String):e.b.a.a.i");
    }

    public static RequestLocationMode getListingLocationMode(ResultContinuation resultContinuation) {
        if (resultContinuation == null || resultContinuation.getTargetLocation() == null) {
            return RequestLocationMode.PRIMARY_OR_SECONDARY;
        }
        int ordinal = resultContinuation.getTargetLocation().ordinal();
        if (ordinal == 0) {
            return RequestLocationMode.PRIMARY_ONLY;
        }
        if (ordinal == 1) {
            return RequestLocationMode.SECONDARY_ONLY;
        }
        throw new IllegalArgumentException(String.format(SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{ResponseType.TOKEN, resultContinuation.getTargetLocation()}));
    }

    public static int getRemainingTimeout(Long l2, Integer num) {
        if (l2 != null) {
            long longValue = l2.longValue() - new Date().getTime();
            if (longValue > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (longValue > 0) {
                return (int) longValue;
            }
            throw new StorageException(StorageErrorCodeStrings.OPERATION_TIMED_OUT, SR.MAXIMUM_EXECUTION_TIMEOUT_EXCEPTION, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, new TimeoutException(SR.MAXIMUM_EXECUTION_TIMEOUT_EXCEPTION));
        } else if (num != null) {
            return num.intValue() + Constants.DEFAULT_READ_TIMEOUT;
        } else {
            return Constants.DEFAULT_READ_TIMEOUT;
        }
    }

    public static SAXParser getSAXParser() {
        SAXParser sAXParser = saxParserThreadLocal.get();
        sAXParser.reset();
        return sAXParser;
    }

    public static String getStandardHeaderValue(HttpURLConnection httpURLConnection, String str) {
        String requestProperty = httpURLConnection.getRequestProperty(str);
        return requestProperty == null ? "" : requestProperty;
    }

    public static String getUTCTimeOrEmpty(Date date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ISO8601_PATTERN, LOCALE_US);
        simpleDateFormat.setTimeZone(UTC_ZONE);
        return simpleDateFormat.format(date);
    }

    public static IOException initIOException(Exception exc) {
        String str;
        if (exc == null || exc.getMessage() == null) {
            str = "Please see the cause for further information.";
        } else {
            str = exc.getMessage() + " Please see the cause for further information.";
        }
        return new IOException(str, exc);
    }

    public static boolean isHostDnsName(URI uri) {
        String host = uri.getHost();
        for (int i2 = 0; i2 < host.length(); i2++) {
            char charAt = host.charAt(i2);
            if (!Character.isDigit(charAt) && charAt != '.') {
                return true;
            }
        }
        return false;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNullOrEmptyOrWhitespace(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static void logHttpError(StorageException storageException, OperationContext operationContext) {
        if (Logger.shouldLog(operationContext)) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("Error response received. ");
                sb.append("HttpStatusCode= ");
                sb.append(storageException.getHttpStatusCode());
                sb.append(", HttpStatusMessage= ");
                sb.append(storageException.getMessage());
                sb.append(", ErrorCode= ");
                sb.append(storageException.getErrorCode());
                StorageExtendedErrorInformation extendedErrorInformation = storageException.getExtendedErrorInformation();
                if (extendedErrorInformation != null) {
                    sb.append(", ExtendedErrorInformation= {ErrorMessage= ");
                    sb.append(extendedErrorInformation.getErrorMessage());
                    HashMap<String, String[]> additionalDetails = extendedErrorInformation.getAdditionalDetails();
                    if (additionalDetails != null) {
                        sb.append(", AdditionalDetails= { ");
                        for (Map.Entry next : additionalDetails.entrySet()) {
                            sb.append((String) next.getKey());
                            sb.append("= ");
                            for (String append : (String[]) next.getValue()) {
                                sb.append(append);
                            }
                            sb.append(",");
                        }
                        sb.setCharAt(sb.length() - 1, '}');
                    }
                    sb.append("}");
                }
                Logger.debug(operationContext, sb.toString());
            } catch (Exception unused) {
            }
        }
    }

    public static void logHttpRequest(HttpURLConnection httpURLConnection, OperationContext operationContext) {
        if (Logger.shouldLog(operationContext)) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(httpURLConnection.getRequestMethod());
                sb.append(" ");
                sb.append(httpURLConnection.getURL());
                sb.append("\n");
                for (Map.Entry entry : httpURLConnection.getRequestProperties().entrySet()) {
                    if (entry.getKey() != null) {
                        sb.append((String) entry.getKey());
                        sb.append(": ");
                    }
                    for (int i2 = 0; i2 < ((List) entry.getValue()).size(); i2++) {
                        sb.append((String) ((List) entry.getValue()).get(i2));
                        if (i2 < ((List) entry.getValue()).size() - 1) {
                            sb.append(",");
                        }
                    }
                    sb.append(10);
                }
                Logger.trace(operationContext, sb.toString());
            } catch (Exception unused) {
            }
        }
    }

    public static void logHttpResponse(HttpURLConnection httpURLConnection, OperationContext operationContext) {
        if (Logger.shouldLog(operationContext)) {
            try {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry entry : httpURLConnection.getHeaderFields().entrySet()) {
                    if (entry.getKey() != null) {
                        sb.append((String) entry.getKey());
                        sb.append(": ");
                    }
                    for (int i2 = 0; i2 < ((List) entry.getValue()).size(); i2++) {
                        sb.append((String) ((List) entry.getValue()).get(i2));
                        if (i2 < ((List) entry.getValue()).size() - 1) {
                            sb.append(",");
                        }
                    }
                    sb.append(10);
                }
                Logger.trace(operationContext, sb.toString());
            } catch (Exception unused) {
            }
        }
    }

    public static HashMap<String, String> parseAccountString(String str) {
        String[] split = str.split(";");
        HashMap<String, String> hashMap = new HashMap<>();
        for (int i2 = 0; i2 < split.length; i2++) {
            if (split[i2].length() != 0) {
                int indexOf = split[i2].indexOf("=");
                if (indexOf >= 1) {
                    hashMap.put(split[i2].substring(0, indexOf), split[i2].substring(indexOf + 1));
                } else {
                    throw new IllegalArgumentException(SR.INVALID_CONNECTION_STRING);
                }
            }
        }
        return hashMap;
    }

    public static Date parseDate(String str) {
        int length = str.length();
        String str2 = MAX_PRECISION_PATTERN;
        if (length == 17) {
            str2 = ISO8601_PATTERN_NO_SECONDS;
        } else if (length != 20) {
            switch (length) {
                case 22:
                    str = str.replace("Z", "00");
                    break;
                case 23:
                    str = str.replace("Z", Schema.Value.FALSE);
                    break;
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                    str = str.substring(0, MAX_PRECISION_DATESTRING_LENGTH);
                    break;
                default:
                    throw new IllegalArgumentException(String.format(SR.INVALID_DATE_STRING, new Object[]{str}));
            }
        } else {
            str2 = ISO8601_PATTERN;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2, LOCALE_US);
        simpleDateFormat.setTimeZone(UTC_ZONE);
        try {
            return simpleDateFormat.parse(str);
        } catch (ParseException e2) {
            throw new IllegalArgumentException(String.format(SR.INVALID_DATE_STRING, new Object[]{str}), e2);
        }
    }

    public static Date parseRFC1123DateFromStringInGMT(String str) {
        return RFC1123_GMT_DATE_TIME_FORMATTER.get().parse(str);
    }

    public static String safeDecode(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "";
        }
        try {
            if (!str.contains("+")) {
                return URLDecoder.decode(str, "UTF-8");
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            for (int i3 = 0; i3 < str.length(); i3++) {
                if (str.charAt(i3) == '+') {
                    if (i3 > i2) {
                        sb.append(URLDecoder.decode(str.substring(i2, i3), "UTF-8"));
                    }
                    sb.append("+");
                    i2 = i3 + 1;
                }
            }
            if (i2 != str.length()) {
                sb.append(URLDecoder.decode(str.substring(i2, str.length()), "UTF-8"));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw generateNewUnexpectedStorageException(e2);
        }
    }

    public static String safeEncode(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            if (!str.contains(" ")) {
                return encode;
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            for (int i3 = 0; i3 < str.length(); i3++) {
                if (str.charAt(i3) == ' ') {
                    if (i3 > i2) {
                        sb.append(URLEncoder.encode(str.substring(i2, i3), "UTF-8"));
                    }
                    sb.append("%20");
                    i2 = i3 + 1;
                }
            }
            if (i2 != str.length()) {
                sb.append(URLEncoder.encode(str.substring(i2, str.length()), "UTF-8"));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw generateNewUnexpectedStorageException(e2);
        }
    }

    public static String safeRelativize(URI uri, URI uri2) {
        if (!uri.getHost().equals(uri2.getHost()) || !uri.getScheme().equals(uri2.getScheme())) {
            return uri2.toString();
        }
        String path = uri.getPath();
        String path2 = uri2.getPath();
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < path.length()) {
            if (i2 >= path2.length()) {
                if (path.charAt(i2) == '/') {
                    i3++;
                }
            } else if (path.charAt(i2) != path2.charAt(i2)) {
                break;
            } else if (path.charAt(i2) == '/') {
                i4 = i2 + 1;
            }
            i2++;
        }
        if (i2 < path2.length() && path2.charAt(i2) == '/') {
            int i5 = i2 - 1;
            if (!(path2.charAt(i5) == '/' && path.charAt(i5) == '/')) {
                i4 = i2 + 1;
            }
        }
        if (i2 == path2.length()) {
            return new URI((String) null, (String) null, (String) null, uri2.getQuery(), uri2.getFragment()).toString();
        }
        String substring = path2.substring(i4);
        StringBuilder sb = new StringBuilder();
        while (i3 > 0) {
            sb.append("../");
            i3--;
        }
        if (!isNullOrEmpty(substring)) {
            sb.append(substring);
        }
        if (!isNullOrEmpty(uri2.getQuery())) {
            sb.append(MsalUtils.QUERY_STRING_SYMBOL);
            sb.append(uri2.getQuery());
        }
        if (!isNullOrEmpty(uri2.getFragment())) {
            sb.append("#");
            sb.append(uri2.getRawFragment());
        }
        return sb.toString();
    }

    public static e.b.a.a.i setupJsonParser(e.b.a.a.i iVar) {
        i.a aVar = i.a.AUTO_CLOSE_SOURCE;
        b bVar = (b) iVar;
        bVar.x &= ~aVar.getMask();
        if (aVar == i.a.STRICT_DUPLICATE_DETECTION) {
            e.b.a.a.q.d dVar = bVar.N;
            dVar.f1071d = null;
            bVar.N = dVar;
        }
        i.a aVar2 = i.a.ALLOW_NON_NUMERIC_NUMBERS;
        b bVar2 = (b) iVar;
        bVar2.x |= aVar2.getMask();
        if (aVar2 == i.a.STRICT_DUPLICATE_DETECTION) {
            e.b.a.a.q.d dVar2 = bVar2.N;
            if (dVar2.f1071d == null) {
                dVar2.f1071d = new e.b.a.a.q.b(bVar2);
                bVar2.N = dVar2;
            }
        }
        return bVar2;
    }

    public static String trimEnd(String str, char c2) {
        int length = str.length() - 1;
        while (length > 0 && str.charAt(length) == c2) {
            length--;
        }
        return length == str.length() + -1 ? str : str.substring(length);
    }

    public static String trimStart(String str) {
        int i2 = 0;
        while (i2 < str.length() && str.charAt(i2) == ' ') {
            i2++;
        }
        return str.substring(i2);
    }

    public static boolean validateMaxExecutionTimeout(Long l2) {
        return validateMaxExecutionTimeout(l2, 0);
    }

    public static StreamMd5AndLength writeToOutputStream(InputStream inputStream, OutputStream outputStream, long j2, boolean z, boolean z2, OperationContext operationContext, RequestOptions requestOptions) {
        return writeToOutputStream(inputStream, outputStream, j2, z, z2, operationContext, requestOptions, true);
    }

    public static String getGMTTime(Date date) {
        return RFC1123_GMT_DATE_TIME_FORMATTER.get().format(date);
    }

    public static boolean validateMaxExecutionTimeout(Long l2, long j2) {
        if (l2 == null) {
            return false;
        }
        if (l2.longValue() < new Date().getTime() + j2) {
            return true;
        }
        return false;
    }

    public static StreamMd5AndLength writeToOutputStream(InputStream inputStream, OutputStream outputStream, long j2, boolean z, boolean z2, OperationContext operationContext, RequestOptions requestOptions, Boolean bool) {
        return writeToOutputStream(inputStream, outputStream, j2, z, z2, operationContext, requestOptions, bool, (StorageRequest<?, ?, Integer>) null, (StreamMd5AndLength) null);
    }

    public static StreamMd5AndLength writeToOutputStream(InputStream inputStream, OutputStream outputStream, long j2, boolean z, boolean z2, OperationContext operationContext, RequestOptions requestOptions, Boolean bool, StorageRequest<?, ?, Integer> storageRequest, StreamMd5AndLength streamMd5AndLength) {
        InputStream inputStream2 = inputStream;
        OutputStream outputStream2 = outputStream;
        StorageRequest<?, ?, Integer> storageRequest2 = storageRequest;
        StreamMd5AndLength streamMd5AndLength2 = streamMd5AndLength;
        if (z && inputStream.markSupported()) {
            inputStream.reset();
            inputStream2.mark(268435456);
        }
        if (streamMd5AndLength2 == null) {
            streamMd5AndLength2 = new StreamMd5AndLength();
            if (z2) {
                try {
                    streamMd5AndLength2.setDigest(MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM));
                } catch (NoSuchAlgorithmException e2) {
                    throw generateNewUnexpectedStorageException(e2);
                }
            }
        } else {
            streamMd5AndLength2.setMd5((String) null);
        }
        long j3 = j2 < 0 ? Long.MAX_VALUE : j2;
        byte[] bArr = new byte[8192];
        long j4 = (long) 8192;
        int min = (int) Math.min(j4, j3);
        int read = inputStream2.read(bArr, 0, min);
        while (min > 0 && read != -1) {
            if (!validateMaxExecutionTimeout(requestOptions.getOperationExpiryTimeInMs())) {
                if (outputStream2 != null) {
                    outputStream2.write(bArr, 0, read);
                }
                if (z2) {
                    streamMd5AndLength2.getDigest().update(bArr, 0, read);
                }
                long j5 = (long) read;
                streamMd5AndLength2.setLength(streamMd5AndLength2.getLength() + j5);
                streamMd5AndLength2.setCurrentOperationByteCount(streamMd5AndLength2.getCurrentOperationByteCount() + j5);
                if (storageRequest2 != null) {
                    storageRequest2.setCurrentRequestByteCount(storageRequest.getCurrentRequestByteCount() + j5);
                    storageRequest2.setCurrentDescriptor(streamMd5AndLength2);
                }
                min = (int) Math.min(j4, j3 - streamMd5AndLength2.getLength());
                read = inputStream2.read(bArr, 0, min);
            } else {
                throw initIOException(new TimeoutException(SR.MAXIMUM_EXECUTION_TIMEOUT_EXCEPTION));
            }
        }
        if (outputStream2 != null && bool.booleanValue()) {
            outputStream.flush();
        }
        return streamMd5AndLength2;
    }

    public static f getJsonGenerator(OutputStream outputStream) {
        Writer writer;
        d dVar = jsonFactory;
        if (dVar != null) {
            c cVar = c.UTF8;
            e.b.a.a.p.b a = dVar.a(outputStream, false);
            a.b = cVar;
            c cVar2 = c.UTF8;
            if (cVar == cVar2) {
                g gVar = new g(a, dVar.C, outputStream);
                n nVar = dVar.D;
                if (nVar == d.H) {
                    return gVar;
                }
                gVar.D = nVar;
                return gVar;
            }
            if (cVar == cVar2) {
                writer = new e.b.a.a.p.i(a, outputStream);
            } else {
                writer = new OutputStreamWriter(outputStream, cVar.getJavaName());
            }
            e.b.a.a.q.i iVar = new e.b.a.a.q.i(a, dVar.C, writer);
            n nVar2 = dVar.D;
            if (nVar2 != d.H) {
                iVar.D = nVar2;
            }
            return iVar;
        }
        throw null;
    }

    public static Date parseDate(String str, boolean z) {
        if (!z) {
            return parseDate(str);
        }
        if (str.length() > 24 && "0000".equals(str.substring(20, 24))) {
            str = str.substring(0, 20) + str.substring(24);
        }
        return parseDate(str);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: e.b.a.a.q.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: e.b.a.a.q.f} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v3, resolved type: e.b.a.a.p.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v3, resolved type: e.b.a.a.q.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: java.io.InputStreamReader} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v22, resolved type: e.b.a.a.p.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v6, resolved type: e.b.a.a.p.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v13, resolved type: e.b.a.a.q.h} */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00c2, code lost:
        if (r4.a(r5 >>> 16) == false) goto L_0x00f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00ef, code lost:
        if (r4.a((int) (r3[r5 + 1] & 255) | ((r3[r5] & 255) << 8)) != false) goto L_0x00f1;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0096  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00f6  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0163  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static e.b.a.a.i getJsonParser(java.io.InputStream r16) {
        /*
            r0 = r16
            e.b.a.a.d r1 = jsonFactory
            r2 = 0
            e.b.a.a.p.b r3 = r1.a(r0, r2)
            e.b.a.a.q.a r4 = new e.b.a.a.q.a
            r4.<init>(r3, r0)
            int r7 = r1.B
            e.b.a.a.r.a r9 = r1.y
            e.b.a.a.r.b r0 = r1.x
            int r1 = r1.A
            r3 = 4
            boolean r5 = r4.b(r3)
            r6 = 2
            r8 = 16
            r11 = 1
            r12 = 8
            if (r5 == 0) goto L_0x00d4
            byte[] r5 = r4.f1062c
            int r13 = r4.f1063d
            byte r14 = r5[r13]
            int r14 = r14 << 24
            int r15 = r13 + 1
            byte r15 = r5[r15]
            r15 = r15 & 255(0xff, float:3.57E-43)
            int r15 = r15 << r8
            r14 = r14 | r15
            int r15 = r13 + 2
            byte r8 = r5[r15]
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r8 = r8 << r12
            r8 = r8 | r14
            int r14 = r13 + 3
            byte r5 = r5[r14]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r5 = r5 | r8
            r8 = -16842752(0xfffffffffeff0000, float:-1.6947657E38)
            java.lang.String r12 = "3412"
            if (r5 == r8) goto L_0x00cf
            r8 = -131072(0xfffffffffffe0000, float:NaN)
            java.lang.String r3 = "2143"
            if (r5 == r8) goto L_0x008a
            r8 = 65279(0xfeff, float:9.1475E-41)
            if (r5 == r8) goto L_0x0081
            r13 = 65534(0xfffe, float:9.1833E-41)
            if (r5 == r13) goto L_0x007c
            int r10 = r5 >>> 16
            if (r10 != r8) goto L_0x0063
            r4.f1063d = r15
            r4.f1067h = r6
            r4.f1066g = r11
            goto L_0x0092
        L_0x0063:
            if (r10 != r13) goto L_0x006c
            r4.f1063d = r15
            r4.f1067h = r6
            r4.f1066g = r2
            goto L_0x0092
        L_0x006c:
            int r8 = r5 >>> 8
            r10 = 15711167(0xefbbbf, float:2.2016034E-38)
            if (r8 != r10) goto L_0x007a
            r4.f1063d = r14
            r4.f1067h = r11
            r4.f1066g = r11
            goto L_0x0092
        L_0x007a:
            r8 = 0
            goto L_0x0093
        L_0x007c:
            r4.a((java.lang.String) r3)
            r0 = 0
            throw r0
        L_0x0081:
            r4.f1066g = r11
            r8 = 4
            int r13 = r13 + r8
            r4.f1063d = r13
            r4.f1067h = r8
            goto L_0x0092
        L_0x008a:
            r8 = 4
            int r13 = r13 + r8
            r4.f1063d = r13
            r4.f1067h = r8
            r4.f1066g = r2
        L_0x0092:
            r8 = 1
        L_0x0093:
            if (r8 == 0) goto L_0x0096
            goto L_0x00f1
        L_0x0096:
            int r8 = r5 >> 8
            if (r8 != 0) goto L_0x009e
            r4.f1066g = r11
        L_0x009c:
            r3 = 4
            goto L_0x00a7
        L_0x009e:
            r8 = 16777215(0xffffff, float:2.3509886E-38)
            r8 = r8 & r5
            if (r8 != 0) goto L_0x00ab
            r4.f1066g = r2
            goto L_0x009c
        L_0x00a7:
            r4.f1067h = r3
            r3 = 1
            goto L_0x00b8
        L_0x00ab:
            r8 = -16711681(0xffffffffff00ffff, float:-1.714704E38)
            r8 = r8 & r5
            if (r8 == 0) goto L_0x00ca
            r8 = -65281(0xffffffffffff00ff, float:NaN)
            r8 = r8 & r5
            if (r8 == 0) goto L_0x00c5
            r3 = 0
        L_0x00b8:
            if (r3 == 0) goto L_0x00bb
            goto L_0x00f1
        L_0x00bb:
            r3 = 16
            int r5 = r5 >>> r3
            boolean r3 = r4.a((int) r5)
            if (r3 == 0) goto L_0x00f2
            goto L_0x00f1
        L_0x00c5:
            r4.a((java.lang.String) r3)
            r0 = 0
            throw r0
        L_0x00ca:
            r0 = 0
            r4.a((java.lang.String) r12)
            throw r0
        L_0x00cf:
            r0 = 0
            r4.a((java.lang.String) r12)
            throw r0
        L_0x00d4:
            boolean r3 = r4.b(r6)
            if (r3 == 0) goto L_0x00f2
            byte[] r3 = r4.f1062c
            int r5 = r4.f1063d
            byte r8 = r3[r5]
            r8 = r8 & 255(0xff, float:3.57E-43)
            r10 = 8
            int r8 = r8 << r10
            int r5 = r5 + r11
            byte r3 = r3[r5]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r3 = r3 | r8
            boolean r3 = r4.a((int) r3)
            if (r3 == 0) goto L_0x00f2
        L_0x00f1:
            r2 = 1
        L_0x00f2:
            java.lang.String r3 = "Internal error"
            if (r2 != 0) goto L_0x00f9
            e.b.a.a.c r2 = e.b.a.a.c.UTF8
            goto L_0x011e
        L_0x00f9:
            int r2 = r4.f1067h
            if (r2 == r11) goto L_0x011c
            if (r2 == r6) goto L_0x0112
            r5 = 4
            if (r2 != r5) goto L_0x010c
            boolean r2 = r4.f1066g
            if (r2 == 0) goto L_0x0109
            e.b.a.a.c r2 = e.b.a.a.c.UTF32_BE
            goto L_0x011e
        L_0x0109:
            e.b.a.a.c r2 = e.b.a.a.c.UTF32_LE
            goto L_0x011e
        L_0x010c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r3)
            throw r0
        L_0x0112:
            boolean r2 = r4.f1066g
            if (r2 == 0) goto L_0x0119
            e.b.a.a.c r2 = e.b.a.a.c.UTF16_BE
            goto L_0x011e
        L_0x0119:
            e.b.a.a.c r2 = e.b.a.a.c.UTF16_LE
            goto L_0x011e
        L_0x011c:
            e.b.a.a.c r2 = e.b.a.a.c.UTF8
        L_0x011e:
            e.b.a.a.p.b r5 = r4.a
            r5.b = r2
            e.b.a.a.c r5 = e.b.a.a.c.UTF8
            if (r2 != r5) goto L_0x0163
            e.b.a.a.d$a r2 = e.b.a.a.d.a.CANONICALIZE_FIELD_NAMES
            boolean r2 = r2.enabledIn(r1)
            if (r2 == 0) goto L_0x0163
            if (r9 == 0) goto L_0x0161
            e.b.a.a.r.a r0 = new e.b.a.a.r.a
            e.b.a.a.d$a r2 = e.b.a.a.d.a.INTERN_FIELD_NAMES
            boolean r10 = r2.enabledIn(r1)
            int r11 = r9.f1081c
            e.b.a.a.d$a r2 = e.b.a.a.d.a.FAIL_ON_SYMBOL_HASH_OVERFLOW
            boolean r12 = r2.enabledIn(r1)
            java.util.concurrent.atomic.AtomicReference<e.b.a.a.r.a$a> r1 = r9.b
            java.lang.Object r1 = r1.get()
            r13 = r1
            e.b.a.a.r.a$a r13 = (e.b.a.a.r.a.C0057a) r13
            r8 = r0
            r8.<init>(r9, r10, r11, r12, r13)
            e.b.a.a.q.h r1 = new e.b.a.a.q.h
            e.b.a.a.p.b r6 = r4.a
            java.io.InputStream r8 = r4.b
            byte[] r10 = r4.f1062c
            int r11 = r4.f1063d
            int r12 = r4.f1064e
            boolean r13 = r4.f1065f
            r5 = r1
            r9 = r0
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13)
            goto L_0x01cc
        L_0x0161:
            r0 = 0
            throw r0
        L_0x0163:
            e.b.a.a.q.f r2 = new e.b.a.a.q.f
            e.b.a.a.p.b r5 = r4.a
            e.b.a.a.c r6 = r5.b
            int r8 = r6.bits()
            r9 = 8
            if (r8 == r9) goto L_0x0196
            r9 = 16
            if (r8 == r9) goto L_0x0196
            r6 = 32
            if (r8 != r6) goto L_0x0190
            e.b.a.a.p.h r3 = new e.b.a.a.p.h
            e.b.a.a.p.b r10 = r4.a
            java.io.InputStream r11 = r4.b
            byte[] r12 = r4.f1062c
            int r13 = r4.f1063d
            int r14 = r4.f1064e
            e.b.a.a.c r4 = r10.b
            boolean r15 = r4.isBigEndian()
            r9 = r3
            r9.<init>(r10, r11, r12, r13, r14, r15)
            goto L_0x01c4
        L_0x0190:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r3)
            throw r0
        L_0x0196:
            java.io.InputStream r10 = r4.b
            if (r10 != 0) goto L_0x01a6
            java.io.ByteArrayInputStream r10 = new java.io.ByteArrayInputStream
            byte[] r3 = r4.f1062c
            int r8 = r4.f1063d
            int r4 = r4.f1064e
            r10.<init>(r3, r8, r4)
            goto L_0x01bb
        L_0x01a6:
            int r3 = r4.f1063d
            int r8 = r4.f1064e
            if (r3 >= r8) goto L_0x01bb
            e.b.a.a.p.e r3 = new e.b.a.a.p.e
            e.b.a.a.p.b r9 = r4.a
            byte[] r11 = r4.f1062c
            int r12 = r4.f1063d
            int r13 = r4.f1064e
            r8 = r3
            r8.<init>(r9, r10, r11, r12, r13)
            r10 = r3
        L_0x01bb:
            java.io.InputStreamReader r3 = new java.io.InputStreamReader
            java.lang.String r4 = r6.getJavaName()
            r3.<init>(r10, r4)
        L_0x01c4:
            e.b.a.a.r.b r0 = r0.b(r1)
            r2.<init>(r5, r7, r3, r0)
            r1 = r2
        L_0x01cc:
            e.b.a.a.i r0 = setupJsonParser(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.core.Utility.getJsonParser(java.io.InputStream):e.b.a.a.i");
    }
}
