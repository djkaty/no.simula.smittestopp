package com.microsoft.azure.proton.transport.ws.impl;

public final class Base64 {
    public static final int[] BASE64D16_CONVERSION_TABLE = {1296647489, 1666798929, 1936681831, 942944375};
    public static final int BASE64D8_CONVERSION_TABLE = 2003259713;
    public static final int BASE64_END_LOWERCASE = 52;
    public static final int BASE64_END_NUMBER = 62;
    public static final int BASE64_END_UPPERCASE = 26;
    public static final int BASE64_GROUP_SIZE = 4;
    public static final byte BASE64_PAD = 61;
    public static final int BASE64_PLUS = 62;
    public static final int BASE64_SLASH = 63;
    public static final byte BYTE_END_LOWERCASE = 122;
    public static final byte BYTE_END_NUMBER = 57;
    public static final byte BYTE_END_UPPERCASE = 90;
    public static final int BYTE_GROUP_SIZE = 3;
    public static final byte BYTE_PLUS = 43;
    public static final byte BYTE_SLASH = 47;
    public static final byte BYTE_START_LOWERCASE = 97;
    public static final byte BYTE_START_NUMBER = 48;
    public static final byte BYTE_START_UPPERCASE = 65;
    public static final int HALF_NIBBLE = 2;
    public static final int ISOLATE_BASE64 = 63;
    public static final int ISOLATE_BYTE = 255;
    public static final int ISOLATE_LSB_BASE64 = 15;
    public static final int ISOLATE_MSB_BASE64 = 3;
    public static final int ONE_AND_HALF_NIBBLE = 6;
    public static final int ONE_BYTE = 8;
    public static final int ONE_NIBBLE = 4;
    public static final int THREE_BYTES = 24;
    public static final int TWO_BYTES = 16;

    public static int base64EstimatedLength(byte[] bArr) {
        if (bArr.length == 0) {
            return 0;
        }
        int length = (bArr.length / 4) * 3;
        if (bArr[bArr.length - 1] != 61) {
            return length;
        }
        if (bArr[bArr.length - 2] == 61) {
            length--;
        }
        return length - 1;
    }

    public static byte base64ToByte(byte b) {
        int i2;
        if (b < 26) {
            i2 = b + 65;
        } else if (b < 52) {
            i2 = (b - 26) + 97;
        } else if (b >= 62) {
            return b == 62 ? (byte) 43 : 47;
        } else {
            i2 = (b - 52) + 48;
        }
        return (byte) i2;
    }

    public static byte base64d16ToByte(byte b) {
        return extractBase64FromInteger(BASE64D16_CONVERSION_TABLE[b >> 2], b & 3);
    }

    public static byte base64d8ToByte(byte b) {
        return extractBase64FromInteger(2003259713, b);
    }

    public static byte byteToBase64(byte b) {
        int i2;
        if (b >= 65 && b <= 90) {
            i2 = b - 65;
        } else if (b >= 97 && b <= 122) {
            i2 = (b - 97) + 26;
        } else if (b >= 48 && b <= 57) {
            i2 = (b - 48) + 52;
        } else if (b == 43) {
            return 62;
        } else {
            if (b == 47) {
                return 63;
            }
            throw new IllegalArgumentException("provided byte value out of base64 range");
        }
        return (byte) i2;
    }

    public static byte[] decodeBase64Local(byte[] bArr) {
        if (bArr != null) {
            int i2 = 0;
            if (bArr.length == 0) {
                return new byte[0];
            }
            if (bArr.length % 4 == 0) {
                int numberOfValidBase64BytesWithoutPad = numberOfValidBase64BytesWithoutPad(bArr);
                byte[] bArr2 = new byte[base64EstimatedLength(bArr)];
                int i3 = 0;
                while (numberOfValidBase64BytesWithoutPad >= 4) {
                    int i4 = i2 + 1;
                    byte byteToBase64 = byteToBase64(bArr[i2]);
                    int i5 = i4 + 1;
                    byte byteToBase642 = byteToBase64(bArr[i4]);
                    int i6 = i5 + 1;
                    byte byteToBase643 = byteToBase64(bArr[i5]);
                    int i7 = i6 + 1;
                    byte byteToBase644 = byteToBase64(bArr[i6]);
                    int i8 = i3 + 1;
                    bArr2[i3] = (byte) ((byteToBase64 << 2) | (byteToBase642 >> 4));
                    int i9 = i8 + 1;
                    bArr2[i8] = (byte) ((byteToBase642 << 4) | (byteToBase643 >> 2));
                    i3 = i9 + 1;
                    bArr2[i9] = (byte) ((byteToBase643 << 6) | byteToBase644);
                    numberOfValidBase64BytesWithoutPad -= 4;
                    i2 = i7;
                }
                if (numberOfValidBase64BytesWithoutPad == 3) {
                    int i10 = i2 + 1;
                    byte byteToBase645 = byteToBase64(bArr[i2]);
                    int i11 = i10 + 1;
                    byte byteToBase646 = byteToBase64(bArr[i10]);
                    byte byteToBase647 = byteToBase64(bArr[i11]);
                    int i12 = i3 + 1;
                    bArr2[i3] = (byte) ((byteToBase645 << 2) | (byteToBase646 >> 4));
                    bArr2[i12] = (byte) ((byteToBase646 << 4) | (byteToBase647 >> 2));
                    i2 = i11;
                    i3 = i12;
                }
                if (numberOfValidBase64BytesWithoutPad == 2) {
                    bArr2[i3] = (byte) ((byteToBase64(bArr[i2 + 1]) >> 4) | (byteToBase64(bArr[i2]) << 2));
                }
                return bArr2;
            }
            throw new IllegalArgumentException("invalid base64Values length");
        }
        throw new IllegalArgumentException("null or empty base64Values");
    }

    public static byte[] encodeBase64Internal(byte[] bArr) {
        byte[] bArr2 = new byte[((((bArr.length - 1) / 3) + 1) * 4)];
        int i2 = 0;
        int i3 = 0;
        while (bArr.length - i2 >= 3) {
            int i4 = i3 + 1;
            bArr2[i3] = base64ToByte((byte) ((bArr[i2] >> 2) & 63));
            int i5 = i4 + 1;
            int i6 = i2 + 1;
            bArr2[i4] = base64ToByte((byte) (((bArr[i2] << 4) & 63) | ((bArr[i6] >> 4) & 15)));
            int i7 = i5 + 1;
            int i8 = i2 + 2;
            bArr2[i5] = base64ToByte((byte) (((bArr[i6] << 2) & 63) | ((bArr[i8] >> 6) & 3)));
            i3 = i7 + 1;
            bArr2[i7] = base64ToByte((byte) (bArr[i8] & 63));
            i2 += 3;
        }
        if (bArr.length - i2 == 2) {
            int i9 = i3 + 1;
            bArr2[i3] = base64ToByte((byte) ((bArr[i2] >> 2) & 63));
            int i10 = i9 + 1;
            int i11 = i2 + 1;
            bArr2[i9] = base64ToByte((byte) (((bArr[i2] << 4) & 63) | ((bArr[i11] >> 4) & 15)));
            int i12 = i10 + 1;
            bArr2[i10] = base64d16ToByte((byte) (bArr[i11] & 15));
            bArr2[i12] = 61;
            i3 = i12;
        }
        if (bArr.length - i2 == 1) {
            int i13 = i3 + 1;
            bArr2[i3] = base64ToByte((byte) ((bArr[i2] >> 2) & 63));
            int i14 = i13 + 1;
            bArr2[i13] = base64d8ToByte((byte) (bArr[i2] & 3));
            bArr2[i14] = 61;
            bArr2[i14 + 1] = 61;
        }
        return bArr2;
    }

    public static byte[] encodeBase64Local(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("null or empty dataValues");
        } else if (bArr.length == 0) {
            return new byte[0];
        } else {
            return encodeBase64Internal(bArr);
        }
    }

    public static String encodeBase64StringLocal(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("null or empty dataValues");
        } else if (bArr.length == 0) {
            return new String();
        } else {
            return new String(encodeBase64Internal(bArr));
        }
    }

    public static byte extractBase64FromInteger(int i2, int i3) {
        return (byte) ((i2 >> (i3 << 3)) & 255);
    }

    public static int numberOfValidBase64BytesWithoutPad(byte[] bArr) {
        int length = bArr.length;
        if (bArr[length - 1] == 61) {
            length--;
        }
        return bArr[length + -1] == 61 ? length - 1 : length;
    }
}
