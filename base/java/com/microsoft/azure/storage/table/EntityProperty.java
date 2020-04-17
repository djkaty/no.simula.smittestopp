package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.util.Date;
import java.util.UUID;

public final class EntityProperty {
    public boolean dateBackwardCompatibility = false;
    public EdmType edmType = EdmType.NULL;
    public boolean isEncrypted = false;
    public Class<?> type;
    public String value;

    public EntityProperty(String str, Class<?> cls) {
        this.type = cls;
        this.value = str;
        if (cls.equals(byte[].class)) {
            getValueAsByteArray();
            this.edmType = EdmType.BINARY;
        } else if (cls.equals(Byte[].class)) {
            getValueAsByteObjectArray();
            this.edmType = EdmType.BINARY;
        } else if (cls.equals(String.class)) {
            this.edmType = EdmType.STRING;
        } else if (cls.equals(Boolean.TYPE)) {
            getValueAsBoolean();
            this.edmType = EdmType.BOOLEAN;
        } else if (cls.equals(Boolean.class)) {
            getValueAsBooleanObject();
            this.edmType = EdmType.BOOLEAN;
        } else if (cls.equals(Date.class)) {
            getValueAsDate();
            this.edmType = EdmType.DATE_TIME;
        } else if (cls.equals(Double.TYPE)) {
            getValueAsDouble();
            this.edmType = EdmType.DOUBLE;
        } else if (cls.equals(Double.class)) {
            getValueAsDoubleObject();
            this.edmType = EdmType.DOUBLE;
        } else if (cls.equals(UUID.class)) {
            getValueAsUUID();
            this.edmType = EdmType.GUID;
        } else if (cls.equals(Integer.TYPE)) {
            getValueAsInteger();
            this.edmType = EdmType.INT32;
        } else if (cls.equals(Integer.class)) {
            getValueAsIntegerObject();
            this.edmType = EdmType.INT32;
        } else if (cls.equals(Long.TYPE)) {
            getValueAsLong();
            this.edmType = EdmType.INT64;
        } else if (cls.equals(Long.class)) {
            getValueAsLongObject();
            this.edmType = EdmType.INT64;
        } else {
            throw new IllegalArgumentException(String.format(SR.TYPE_NOT_SUPPORTED, new Object[]{cls.toString()}));
        }
    }

    public EdmType getEdmType() {
        return this.edmType;
    }

    public boolean getIsNull() {
        return this.value == null;
    }

    public Class<?> getType() {
        return this.type;
    }

    public boolean getValueAsBoolean() {
        if (!getIsNull()) {
            return Boolean.parseBoolean(this.value);
        }
        throw new IllegalArgumentException(SR.ENTITY_PROPERTY_CANNOT_BE_NULL_FOR_PRIMITIVES);
    }

    public Boolean getValueAsBooleanObject() {
        if (getIsNull()) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(this.value));
    }

    public byte[] getValueAsByteArray() {
        if (getIsNull()) {
            return null;
        }
        return Base64.decode(this.value);
    }

    public Byte[] getValueAsByteObjectArray() {
        if (getIsNull()) {
            return null;
        }
        return Base64.decodeAsByteObjectArray(this.value);
    }

    public Date getValueAsDate() {
        if (getIsNull()) {
            return null;
        }
        return Utility.parseDate(this.value, this.dateBackwardCompatibility);
    }

    public double getValueAsDouble() {
        if (getIsNull()) {
            throw new IllegalArgumentException(SR.ENTITY_PROPERTY_CANNOT_BE_NULL_FOR_PRIMITIVES);
        } else if (this.value.equals("Infinity") || this.value.equals("INF")) {
            return Double.POSITIVE_INFINITY;
        } else {
            if (this.value.equals("-Infinity") || this.value.equals("-INF")) {
                return Double.NEGATIVE_INFINITY;
            }
            if (this.value.equals("NaN")) {
                return Double.NaN;
            }
            return Double.parseDouble(this.value);
        }
    }

    public Double getValueAsDoubleObject() {
        if (getIsNull()) {
            return null;
        }
        if (this.value.equals("Infinity") || this.value.equals("INF")) {
            return Double.valueOf(Double.POSITIVE_INFINITY);
        }
        if (this.value.equals("-Infinity") || this.value.equals("-INF")) {
            return Double.valueOf(Double.NEGATIVE_INFINITY);
        }
        if (this.value.equals("NaN")) {
            return Double.valueOf(Double.NaN);
        }
        return Double.valueOf(Double.parseDouble(this.value));
    }

    public int getValueAsInteger() {
        if (!getIsNull()) {
            return Integer.parseInt(this.value);
        }
        throw new IllegalArgumentException(SR.ENTITY_PROPERTY_CANNOT_BE_NULL_FOR_PRIMITIVES);
    }

    public Integer getValueAsIntegerObject() {
        if (getIsNull()) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(this.value));
    }

    public long getValueAsLong() {
        if (!getIsNull()) {
            return Long.parseLong(this.value);
        }
        throw new IllegalArgumentException(SR.ENTITY_PROPERTY_CANNOT_BE_NULL_FOR_PRIMITIVES);
    }

    public Long getValueAsLongObject() {
        if (getIsNull()) {
            return null;
        }
        return Long.valueOf(Long.parseLong(this.value));
    }

    public String getValueAsString() {
        if (getIsNull()) {
            return null;
        }
        return this.value;
    }

    public UUID getValueAsUUID() {
        if (getIsNull()) {
            return null;
        }
        return UUID.fromString(this.value);
    }

    public boolean isEncrypted() {
        return this.isEncrypted;
    }

    public void setDateBackwardCompatibility(boolean z) {
        this.dateBackwardCompatibility = z;
    }

    public void setIsEncrypted(boolean z) {
        this.isEncrypted = z;
    }

    public final synchronized void setValue(boolean z) {
        this.edmType = EdmType.BOOLEAN;
        this.type = Boolean.TYPE;
        this.value = z ? "true" : "false";
    }

    public final synchronized void setValue(Boolean bool) {
        this.edmType = EdmType.BOOLEAN;
        this.type = Boolean.class;
        if (bool == null) {
            this.value = null;
        } else {
            this.value = bool.booleanValue() ? "true" : "false";
        }
    }

    public final synchronized void setValue(byte[] bArr) {
        String str;
        this.edmType = EdmType.BINARY;
        this.type = byte[].class;
        if (bArr == null) {
            str = null;
        } else {
            str = Base64.encode(bArr);
        }
        this.value = str;
    }

    public final synchronized void setValue(Byte[] bArr) {
        String str;
        this.edmType = EdmType.BINARY;
        this.type = Byte[].class;
        if (bArr == null) {
            str = null;
        } else {
            str = Base64.encode(bArr);
        }
        this.value = str;
    }

    public final synchronized void setValue(Date date) {
        String str;
        this.edmType = EdmType.DATE_TIME;
        this.type = Date.class;
        if (date == null) {
            str = null;
        } else {
            str = Utility.getJavaISO8601Time(date);
        }
        this.value = str;
    }

    public final synchronized void setValue(double d2) {
        this.edmType = EdmType.DOUBLE;
        this.type = Double.TYPE;
        this.value = Double.toString(d2);
    }

    public final synchronized void setValue(Double d2) {
        String str;
        this.edmType = EdmType.DOUBLE;
        this.type = Double.class;
        if (d2 == null) {
            str = null;
        } else {
            str = Double.toString(d2.doubleValue());
        }
        this.value = str;
    }

    public final synchronized void setValue(int i2) {
        this.edmType = EdmType.INT32;
        this.type = Integer.TYPE;
        this.value = Integer.toString(i2);
    }

    public final synchronized void setValue(Integer num) {
        String str;
        this.edmType = EdmType.INT32;
        this.type = Integer.class;
        if (num == null) {
            str = null;
        } else {
            str = Integer.toString(num.intValue());
        }
        this.value = str;
    }

    public final synchronized void setValue(long j2) {
        this.edmType = EdmType.INT64;
        this.type = Long.TYPE;
        this.value = Long.toString(j2);
    }

    public final synchronized void setValue(Long l2) {
        String str;
        this.edmType = EdmType.INT64;
        this.type = Long.class;
        if (l2 == null) {
            str = null;
        } else {
            str = Long.toString(l2.longValue());
        }
        this.value = str;
    }

    public EntityProperty(Object obj, Class<?> cls) {
        if (cls.equals(byte[].class)) {
            setValue((byte[]) obj);
            this.type = cls;
        } else if (cls.equals(Byte[].class)) {
            setValue((Byte[]) obj);
            this.type = cls;
        } else if (cls.equals(String.class)) {
            setValue((String) obj);
            this.type = cls;
        } else if (cls.equals(Boolean.TYPE)) {
            setValue(((Boolean) obj).booleanValue());
            this.type = cls;
        } else if (cls.equals(Boolean.class)) {
            setValue((Boolean) obj);
            this.type = cls;
        } else if (cls.equals(Double.TYPE)) {
            setValue(((Double) obj).doubleValue());
            this.type = cls;
        } else if (cls.equals(Double.class)) {
            setValue((Double) obj);
            this.type = cls;
        } else if (cls.equals(UUID.class)) {
            setValue((UUID) obj);
            this.type = cls;
        } else if (cls.equals(Integer.TYPE)) {
            setValue(((Integer) obj).intValue());
            this.type = cls;
        } else if (cls.equals(Integer.class)) {
            setValue((Integer) obj);
            this.type = cls;
        } else if (cls.equals(Long.TYPE)) {
            setValue(((Long) obj).longValue());
            this.type = cls;
        } else if (cls.equals(Long.class)) {
            setValue((Long) obj);
            this.type = cls;
        } else if (cls.equals(Date.class)) {
            setValue((Date) obj);
            this.type = cls;
        } else {
            throw new IllegalArgumentException(String.format(SR.TYPE_NOT_SUPPORTED, new Object[]{cls.toString()}));
        }
    }

    public final synchronized void setValue(String str) {
        this.edmType = EdmType.STRING;
        this.type = String.class;
        this.value = str;
    }

    public final synchronized void setValue(UUID uuid) {
        String str;
        this.edmType = EdmType.GUID;
        this.type = UUID.class;
        if (uuid == null) {
            str = null;
        } else {
            str = uuid.toString();
        }
        this.value = str;
    }

    public EntityProperty(String str, EdmType edmType2) {
        this.edmType = edmType2;
        this.value = str;
        if (edmType2 == EdmType.STRING) {
            this.type = String.class;
        } else if (edmType2 == EdmType.BINARY) {
            getValueAsByteArray();
            this.type = Byte[].class;
        } else if (edmType2 == EdmType.BOOLEAN) {
            getValueAsBoolean();
            this.type = Boolean.class;
        } else if (edmType2 == EdmType.DOUBLE) {
            getValueAsDouble();
            this.type = Double.class;
        } else if (edmType2 == EdmType.GUID) {
            getValueAsUUID();
            this.type = UUID.class;
        } else if (edmType2 == EdmType.INT32) {
            getValueAsInteger();
            this.type = Integer.class;
        } else if (edmType2 == EdmType.INT64) {
            getValueAsLong();
            this.type = Long.class;
        } else if (edmType2 == EdmType.DATE_TIME) {
            getValueAsDate();
            this.type = Date.class;
        } else if (edmType2 == null) {
            throw new IllegalArgumentException(SR.EDMTYPE_WAS_NULL);
        } else {
            throw new IllegalArgumentException(String.format(SR.INVALID_EDMTYPE_VALUE, new Object[]{edmType2.toString()}));
        }
    }

    public EntityProperty(boolean z) {
        setValue(z);
    }

    public EntityProperty(Boolean bool) {
        setValue(bool);
    }

    public EntityProperty(byte[] bArr) {
        setValue(bArr);
    }

    public EntityProperty(Byte[] bArr) {
        setValue(bArr);
    }

    public EntityProperty(Date date) {
        setValue(date);
    }

    public EntityProperty(double d2) {
        setValue(d2);
    }

    public EntityProperty(Double d2) {
        setValue(d2);
    }

    public EntityProperty(int i2) {
        setValue(i2);
    }

    public EntityProperty(Integer num) {
        setValue(num);
    }

    public EntityProperty(long j2) {
        setValue(j2);
    }

    public EntityProperty(Long l2) {
        setValue(l2);
    }

    public EntityProperty(String str) {
        setValue(str);
    }

    public EntityProperty(UUID uuid) {
        setValue(uuid);
    }
}
