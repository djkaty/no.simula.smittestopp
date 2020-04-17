package com.microsoft.azure.storage.core;

import e.b.a.a.h;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;

public final class JsonUtilities {
    public static void assertIsEndArrayJsonToken(i iVar) {
        if (((c) iVar).y != l.END_ARRAY) {
            throw new h(SR.EXPECTED_END_ARRAY, iVar.b());
        }
    }

    public static void assertIsEndObjectJsonToken(i iVar) {
        if (((c) iVar).y != l.END_OBJECT) {
            throw new h(SR.EXPECTED_END_OBJECT, iVar.b());
        }
    }

    public static void assertIsExpectedFieldName(i iVar, String str) {
        String c2 = iVar.c();
        if (str == null) {
            if (c2 != null) {
                throw new h(String.format(SR.UNEXPECTED_FIELD_NAME, new Object[]{str, c2}), iVar.b());
            }
        } else if (!str.equals(c2)) {
            throw new h(String.format(SR.UNEXPECTED_FIELD_NAME, new Object[]{str, c2}), iVar.b());
        }
    }

    public static void assertIsFieldNameJsonToken(i iVar) {
        if (((c) iVar).y != l.FIELD_NAME) {
            throw new h(SR.EXPECTED_A_FIELD_NAME, iVar.b());
        }
    }

    public static void assertIsStartArrayJsonToken(i iVar) {
        if (((c) iVar).y != l.START_ARRAY) {
            throw new h(SR.EXPECTED_START_ARRAY, iVar.b());
        }
    }

    public static void assertIsStartObjectJsonToken(i iVar) {
        if (((c) iVar).y != l.START_OBJECT) {
            throw new h(SR.EXPECTED_START_OBJECT, iVar.b());
        }
    }
}
