package com.microsoft.azure.storage.core;

public final class Base64 {
    public static final String BASE_64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    public static final byte[] DECODE_64 = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    public static byte[] decode(String str) {
        int i2;
        if (str != null) {
            int length = (str.length() * 3) / 4;
            if (str.endsWith("==")) {
                length -= 2;
            } else if (str.endsWith("=")) {
                length--;
            }
            byte[] bArr = new byte[length];
            int i3 = 0;
            for (int i4 = 0; i4 < str.length(); i4 += 4) {
                byte b = DECODE_64[(byte) str.charAt(i4)];
                byte b2 = DECODE_64[(byte) str.charAt(i4 + 1)];
                byte b3 = DECODE_64[(byte) str.charAt(i4 + 2)];
                byte b4 = DECODE_64[(byte) str.charAt(i4 + 3)];
                if (b < 0 || b2 < 0 || b3 == -1 || b4 == -1) {
                    throw new IllegalArgumentException(SR.STRING_NOT_VALID);
                }
                int i5 = (b << 18) + (b2 << 12) + ((b3 & 255) << 6) + (b4 & 255);
                if (b3 == -2) {
                    i2 = i3 + 1;
                    bArr[i3] = (byte) (((i5 & 16773120) >> 16) & 255);
                } else if (b4 == -2) {
                    int i6 = i5 & 16777152;
                    int i7 = i3 + 1;
                    bArr[i3] = (byte) ((i6 >> 16) & 255);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) ((i6 >> 8) & 255);
                } else {
                    int i8 = i3 + 1;
                    bArr[i3] = (byte) ((i5 >> 16) & 255);
                    int i9 = i8 + 1;
                    bArr[i8] = (byte) ((i5 >> 8) & 255);
                    i2 = i9 + 1;
                    bArr[i9] = (byte) (i5 & 255);
                }
                i3 = i2;
            }
            return bArr;
        }
        throw new IllegalArgumentException(SR.STRING_NOT_VALID);
    }

    public static Byte[] decodeAsByteObjectArray(String str) {
        int i2;
        int length = (str.length() * 3) / 4;
        if (str.endsWith("==")) {
            length -= 2;
        } else if (str.endsWith("=")) {
            length--;
        }
        Byte[] bArr = new Byte[length];
        int i3 = 0;
        for (int i4 = 0; i4 < str.length(); i4 += 4) {
            byte b = DECODE_64[(byte) str.charAt(i4)];
            byte b2 = DECODE_64[(byte) str.charAt(i4 + 1)];
            byte b3 = DECODE_64[(byte) str.charAt(i4 + 2)];
            byte b4 = DECODE_64[(byte) str.charAt(i4 + 3)];
            if (b < 0 || b2 < 0 || b3 == -1 || b4 == -1) {
                throw new IllegalArgumentException(SR.STRING_NOT_VALID);
            }
            int i5 = (b << 18) + (b2 << 12) + ((b3 & 255) << 6) + (b4 & 255);
            if (b3 == -2) {
                i2 = i3 + 1;
                bArr[i3] = Byte.valueOf((byte) (((i5 & 16773120) >> 16) & 255));
            } else if (b4 == -2) {
                int i6 = i5 & 16777152;
                int i7 = i3 + 1;
                bArr[i3] = Byte.valueOf((byte) ((i6 >> 16) & 255));
                i3 = i7 + 1;
                bArr[i7] = Byte.valueOf((byte) ((i6 >> 8) & 255));
            } else {
                int i8 = i3 + 1;
                bArr[i3] = Byte.valueOf((byte) ((i5 >> 16) & 255));
                int i9 = i8 + 1;
                bArr[i8] = Byte.valueOf((byte) ((i5 >> 8) & 255));
                i2 = i9 + 1;
                bArr[i9] = Byte.valueOf((byte) (i5 & 255));
            }
            i3 = i2;
        }
        return bArr;
    }

    public static String encode(byte[] bArr) {
        int i2;
        int i3;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length % 3;
        int i4 = 0;
        for (int i5 = 0; i5 < bArr.length; i5 += 3) {
            if (i5 < bArr.length - length) {
                i2 = ((bArr[i5] & 255) << 16) + ((bArr[i5 + 1] & 255) << 8);
                i3 = bArr[i5 + 2] & 255;
            } else {
                if (length == 1) {
                    i4 = (bArr[i5] & 255) << 16;
                } else if (length == 2) {
                    i2 = (bArr[i5] & 255) << 16;
                    i3 = (bArr[i5 + 1] & 255) << 8;
                }
                sb.append(BASE_64_CHARS.charAt((byte) ((i4 >>> 18) & 63)));
                sb.append(BASE_64_CHARS.charAt((byte) ((i4 >>> 12) & 63)));
                sb.append(BASE_64_CHARS.charAt((byte) ((i4 >>> 6) & 63)));
                sb.append(BASE_64_CHARS.charAt((byte) (i4 & 63)));
            }
            i4 = i2 + i3;
            sb.append(BASE_64_CHARS.charAt((byte) ((i4 >>> 18) & 63)));
            sb.append(BASE_64_CHARS.charAt((byte) ((i4 >>> 12) & 63)));
            sb.append(BASE_64_CHARS.charAt((byte) ((i4 >>> 6) & 63)));
            sb.append(BASE_64_CHARS.charAt((byte) (i4 & 63)));
        }
        int length2 = sb.length();
        if (bArr.length % 3 == 1) {
            sb.replace(length2 - 2, length2, "==");
        } else if (bArr.length % 3 == 2) {
            sb.replace(length2 - 1, length2, "=");
        }
        return sb.toString();
    }

    public static boolean validateIsBase64String(String str) {
        if (str == null || str.length() % 4 != 0) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            byte charAt = (byte) str.charAt(i2);
            if (DECODE_64[charAt] == -2) {
                if (i2 < str.length() - 2) {
                    return false;
                }
                if (i2 == str.length() - 2 && DECODE_64[(byte) str.charAt(i2 + 1)] != -2) {
                    return false;
                }
            }
            if (charAt < 0 || DECODE_64[charAt] == -1) {
                return false;
            }
        }
        return true;
    }

    public static String encode(Byte[] bArr) {
        int byteValue;
        int byteValue2;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length % 3;
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length; i3 += 3) {
            if (i3 < bArr.length - length) {
                byteValue = ((bArr[i3].byteValue() & 255) << 16) + ((bArr[i3 + 1].byteValue() & 255) << 8);
                byteValue2 = bArr[i3 + 2].byteValue() & 255;
            } else {
                if (length == 1) {
                    i2 = (bArr[i3].byteValue() & 255) << 16;
                } else if (length == 2) {
                    byteValue = (bArr[i3].byteValue() & 255) << 16;
                    byteValue2 = (bArr[i3 + 1].byteValue() & 255) << 8;
                }
                sb.append(BASE_64_CHARS.charAt((byte) ((i2 >>> 18) & 63)));
                sb.append(BASE_64_CHARS.charAt((byte) ((i2 >>> 12) & 63)));
                sb.append(BASE_64_CHARS.charAt((byte) ((i2 >>> 6) & 63)));
                sb.append(BASE_64_CHARS.charAt((byte) (i2 & 63)));
            }
            i2 = byteValue + byteValue2;
            sb.append(BASE_64_CHARS.charAt((byte) ((i2 >>> 18) & 63)));
            sb.append(BASE_64_CHARS.charAt((byte) ((i2 >>> 12) & 63)));
            sb.append(BASE_64_CHARS.charAt((byte) ((i2 >>> 6) & 63)));
            sb.append(BASE_64_CHARS.charAt((byte) (i2 & 63)));
        }
        int length2 = sb.length();
        if (bArr.length % 3 == 1) {
            sb.replace(length2 - 2, length2, "==");
        } else if (bArr.length % 3 == 2) {
            sb.replace(length2 - 1, length2, "=");
        }
        return sb.toString();
    }
}
