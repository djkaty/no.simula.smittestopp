package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.exceptions.BadFormatException;
import com.microsoft.azure.sdk.iot.device.exceptions.HubOrDeviceIdNotFoundException;
import com.microsoft.azure.sdk.iot.device.exceptions.InternalServerErrorException;
import com.microsoft.azure.sdk.iot.device.exceptions.IotHubServiceException;
import com.microsoft.azure.sdk.iot.device.exceptions.PreconditionFailedException;
import com.microsoft.azure.sdk.iot.device.exceptions.RequestEntityTooLargeException;
import com.microsoft.azure.sdk.iot.device.exceptions.ServerBusyException;
import com.microsoft.azure.sdk.iot.device.exceptions.ServiceUnknownException;
import com.microsoft.azure.sdk.iot.device.exceptions.ThrottledException;
import com.microsoft.azure.sdk.iot.device.exceptions.TooManyDevicesException;
import com.microsoft.azure.sdk.iot.device.exceptions.UnauthorizedException;

public enum IotHubStatusCode {
    OK,
    OK_EMPTY,
    BAD_FORMAT,
    UNAUTHORIZED,
    TOO_MANY_DEVICES,
    HUB_OR_DEVICE_ID_NOT_FOUND,
    PRECONDITION_FAILED,
    REQUEST_ENTITY_TOO_LARGE,
    THROTTLED,
    INTERNAL_SERVER_ERROR,
    SERVER_BUSY,
    ERROR,
    MESSAGE_EXPIRED,
    MESSAGE_CANCELLED_ONCLOSE;

    /* renamed from: com.microsoft.azure.sdk.iot.device.IotHubStatusCode$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode = null;

        /* JADX WARNING: Can't wrap try/catch for region: R(31:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|(2:17|18)|19|(2:21|22)|23|(2:25|26)|27|29|30|31|(2:33|34)|35|(2:37|38)|39|41|42|43|44|45|46|47|48|50) */
        /* JADX WARNING: Can't wrap try/catch for region: R(37:0|1|2|3|5|6|7|9|10|11|(2:13|14)|15|(2:17|18)|19|21|22|23|25|26|27|29|30|31|(2:33|34)|35|37|38|39|41|42|43|44|45|46|47|48|50) */
        /* JADX WARNING: Can't wrap try/catch for region: R(39:0|1|2|3|5|6|7|9|10|11|(2:13|14)|15|17|18|19|21|22|23|25|26|27|29|30|31|33|34|35|37|38|39|41|42|43|44|45|46|47|48|50) */
        /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:43:0x005d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:45:0x0063 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:47:0x0069 */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode[] r0 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r2 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r3 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK_EMPTY     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                r2 = 13
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x001f }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r4 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.MESSAGE_CANCELLED_ONCLOSE     // Catch:{ NoSuchFieldError -> 0x001f }
                r3[r2] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                r3 = 4
                r4 = 12
                int[] r5 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0028 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r6 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.MESSAGE_EXPIRED     // Catch:{ NoSuchFieldError -> 0x0028 }
                r5[r4] = r3     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                r5 = 5
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x002f }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.BAD_FORMAT     // Catch:{ NoSuchFieldError -> 0x002f }
                r6[r0] = r5     // Catch:{ NoSuchFieldError -> 0x002f }
            L_0x002f:
                r0 = 6
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0036 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.UNAUTHORIZED     // Catch:{ NoSuchFieldError -> 0x0036 }
                r6[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0036 }
            L_0x0036:
                r1 = 7
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x003d }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.TOO_MANY_DEVICES     // Catch:{ NoSuchFieldError -> 0x003d }
                r6[r3] = r1     // Catch:{ NoSuchFieldError -> 0x003d }
            L_0x003d:
                r3 = 8
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0045 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.HUB_OR_DEVICE_ID_NOT_FOUND     // Catch:{ NoSuchFieldError -> 0x0045 }
                r6[r5] = r3     // Catch:{ NoSuchFieldError -> 0x0045 }
            L_0x0045:
                r5 = 9
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x004d }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.PRECONDITION_FAILED     // Catch:{ NoSuchFieldError -> 0x004d }
                r6[r0] = r5     // Catch:{ NoSuchFieldError -> 0x004d }
            L_0x004d:
                r0 = 10
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0055 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.REQUEST_ENTITY_TOO_LARGE     // Catch:{ NoSuchFieldError -> 0x0055 }
                r6[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0055 }
            L_0x0055:
                r1 = 11
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x005d }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r7 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.THROTTLED     // Catch:{ NoSuchFieldError -> 0x005d }
                r6[r3] = r1     // Catch:{ NoSuchFieldError -> 0x005d }
            L_0x005d:
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0063 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r6 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.INTERNAL_SERVER_ERROR     // Catch:{ NoSuchFieldError -> 0x0063 }
                r3[r5] = r4     // Catch:{ NoSuchFieldError -> 0x0063 }
            L_0x0063:
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0069 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r4 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.SERVER_BUSY     // Catch:{ NoSuchFieldError -> 0x0069 }
                r3[r0] = r2     // Catch:{ NoSuchFieldError -> 0x0069 }
            L_0x0069:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubStatusCode     // Catch:{ NoSuchFieldError -> 0x0071 }
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r2 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.ERROR     // Catch:{ NoSuchFieldError -> 0x0071 }
                r2 = 14
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0071 }
            L_0x0071:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.IotHubStatusCode.AnonymousClass1.<clinit>():void");
        }
    }

    public static IotHubServiceException getConnectionStatusException(IotHubStatusCode iotHubStatusCode, String str) {
        IotHubServiceException iotHubServiceException;
        switch (iotHubStatusCode.ordinal()) {
            case 0:
            case 1:
            case 12:
            case 13:
                return null;
            case 2:
                iotHubServiceException = new BadFormatException(str);
                break;
            case 3:
                iotHubServiceException = new UnauthorizedException(str);
                break;
            case 4:
                iotHubServiceException = new TooManyDevicesException(str);
                break;
            case 5:
                iotHubServiceException = new HubOrDeviceIdNotFoundException(str);
                break;
            case 6:
                iotHubServiceException = new PreconditionFailedException(str);
                break;
            case 7:
                iotHubServiceException = new RequestEntityTooLargeException(str);
                break;
            case 8:
                iotHubServiceException = new ThrottledException(str);
                break;
            case 9:
                iotHubServiceException = new InternalServerErrorException(str);
                break;
            case 10:
                iotHubServiceException = new ServerBusyException(str);
                break;
            case 11:
                return new ServiceUnknownException("Service gave unknown status code: " + iotHubStatusCode);
            default:
                return new IotHubServiceException("Service gave unknown status code: " + iotHubStatusCode);
        }
        return iotHubServiceException;
    }

    public static IotHubStatusCode getIotHubStatusCode(int i2) {
        if (i2 == 200) {
            return OK;
        }
        if (i2 == 204) {
            return OK_EMPTY;
        }
        if (i2 == 429) {
            return THROTTLED;
        }
        if (i2 == 500) {
            return INTERNAL_SERVER_ERROR;
        }
        if (i2 == 503) {
            return SERVER_BUSY;
        }
        if (i2 == 400) {
            return BAD_FORMAT;
        }
        if (i2 == 401) {
            return UNAUTHORIZED;
        }
        if (i2 == 403) {
            return TOO_MANY_DEVICES;
        }
        if (i2 == 404) {
            return HUB_OR_DEVICE_ID_NOT_FOUND;
        }
        if (i2 == 412) {
            return PRECONDITION_FAILED;
        }
        if (i2 != 413) {
            return ERROR;
        }
        return REQUEST_ENTITY_TOO_LARGE;
    }
}
