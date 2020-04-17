package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.core.SR;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

public enum EdmType {
    NULL,
    BINARY,
    BOOLEAN,
    BYTE,
    DATE_TIME,
    DATE_TIME_OFFSET,
    DECIMAL,
    DOUBLE,
    SINGLE,
    GUID,
    INT16,
    INT32,
    INT64,
    SBYTE,
    STRING,
    TIME;
    
    public static final Set<EdmType> UNANNOTATED = null;

    /* access modifiers changed from: public */
    static {
        EdmType edmType;
        EdmType edmType2;
        EdmType edmType3;
        EdmType edmType4;
        UNANNOTATED = Collections.unmodifiableSet(EnumSet.of(edmType, edmType2, edmType3, edmType4));
    }

    public static EdmType parse(String str) {
        if (str == null || str.length() == 0) {
            return STRING;
        }
        if (str.equals(ODataConstants.EDMTYPE_DATETIME)) {
            return DATE_TIME;
        }
        if (str.equals(ODataConstants.EDMTYPE_INT32)) {
            return INT32;
        }
        if (str.equals(ODataConstants.EDMTYPE_BOOLEAN)) {
            return BOOLEAN;
        }
        if (str.equals(ODataConstants.EDMTYPE_DOUBLE)) {
            return DOUBLE;
        }
        if (str.equals(ODataConstants.EDMTYPE_INT64)) {
            return INT64;
        }
        if (str.equals(ODataConstants.EDMTYPE_GUID)) {
            return GUID;
        }
        if (str.equals(ODataConstants.EDMTYPE_BINARY)) {
            return BINARY;
        }
        throw new IllegalArgumentException(String.format(SR.INVALID_EDMTYPE_VALUE, new Object[]{str}));
    }

    public final boolean mustAnnotateType() {
        return !UNANNOTATED.contains(this);
    }

    public String toString() {
        if (this == BINARY) {
            return ODataConstants.EDMTYPE_BINARY;
        }
        if (this == STRING) {
            return ODataConstants.EDMTYPE_STRING;
        }
        if (this == BOOLEAN) {
            return ODataConstants.EDMTYPE_BOOLEAN;
        }
        if (this == DOUBLE) {
            return ODataConstants.EDMTYPE_DOUBLE;
        }
        if (this == GUID) {
            return ODataConstants.EDMTYPE_GUID;
        }
        if (this == INT32) {
            return ODataConstants.EDMTYPE_INT32;
        }
        if (this == INT64) {
            return ODataConstants.EDMTYPE_INT64;
        }
        return this == DATE_TIME ? ODataConstants.EDMTYPE_DATETIME : "";
    }
}
