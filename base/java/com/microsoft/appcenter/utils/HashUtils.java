package com.microsoft.appcenter.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashUtils {
    public static final char[] HEXADECIMAL_OUTPUT = "0123456789abcdef".toCharArray();

    public static String encodeHex(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b = bArr[i2] & 255;
            int i3 = i2 * 2;
            char[] cArr2 = HEXADECIMAL_OUTPUT;
            cArr[i3] = cArr2[b >>> 4];
            cArr[i3 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public static String sha256(String str) {
        return sha256(str, "UTF-8");
    }

    public static String sha256(String str, String str2) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(str.getBytes(str2));
            return encodeHex(instance.digest());
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }
}
