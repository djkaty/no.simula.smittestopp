package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.table.TableEntity;
import java.util.Date;
import java.util.Formatter;
import java.util.UUID;

public class TableQuery<T extends TableEntity> {
    public Class<T> clazzType = null;
    public String[] columns = null;
    public String filterString = null;
    public String sourceTableName = null;
    public Integer takeCount;

    public static class Operators {
        public static final String AND = "and";
        public static final String NOT = "not";
        public static final String OR = "or";
    }

    public static class QueryComparisons {
        public static final String EQUAL = "eq";
        public static final String GREATER_THAN = "gt";
        public static final String GREATER_THAN_OR_EQUAL = "ge";
        public static final String LESS_THAN = "lt";
        public static final String LESS_THAN_OR_EQUAL = "le";
        public static final String NOT_EQUAL = "ne";
    }

    public TableQuery() {
    }

    public static String combineFilters(String str, String str2, String str3) {
        return String.format("(%s) %s (%s)", new Object[]{str, str2, str3});
    }

    public static <T extends TableEntity> TableQuery<T> from(Class<T> cls) {
        return new TableQuery<>(cls);
    }

    public static String generateFilterCondition(String str, String str2, boolean z) {
        return generateFilterCondition(str, str2, z ? "true" : "false", EdmType.BOOLEAN);
    }

    public UriQueryBuilder generateQueryBuilder() {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        if (!Utility.isNullOrEmpty(this.filterString)) {
            uriQueryBuilder.add(TableConstants.FILTER, this.filterString);
        }
        Integer num = this.takeCount;
        if (num != null) {
            uriQueryBuilder.add(TableConstants.TOP, num.toString());
        }
        String[] strArr = this.columns;
        if (strArr != null && strArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            while (true) {
                String[] strArr2 = this.columns;
                if (i2 >= strArr2.length) {
                    break;
                }
                if (TableConstants.ROW_KEY.equals(strArr2[i2])) {
                    z2 = true;
                } else if (TableConstants.PARTITION_KEY.equals(this.columns[i2])) {
                    z = true;
                } else if (TableConstants.TIMESTAMP.equals(this.columns[i2])) {
                    z3 = true;
                }
                sb.append(this.columns[i2]);
                if (i2 < this.columns.length - 1) {
                    sb.append(",");
                }
                i2++;
            }
            if (!z) {
                sb.append(",");
                sb.append(TableConstants.PARTITION_KEY);
            }
            if (!z2) {
                sb.append(",");
                sb.append(TableConstants.ROW_KEY);
            }
            if (!z3) {
                sb.append(",");
                sb.append(TableConstants.TIMESTAMP);
            }
            uriQueryBuilder.add(TableConstants.SELECT, sb.toString());
        }
        return uriQueryBuilder;
    }

    public Class<T> getClazzType() {
        return this.clazzType;
    }

    public String[] getColumns() {
        return this.columns;
    }

    public String getFilterString() {
        return this.filterString;
    }

    public String getSourceTableName() {
        return this.sourceTableName;
    }

    public Integer getTakeCount() {
        return this.takeCount;
    }

    public TableQuery<T> select(String[] strArr) {
        setColumns(strArr);
        return this;
    }

    public void setClazzType(Class<T> cls) {
        Utility.assertNotNull("class type", cls);
        Utility.checkNullaryCtor(cls);
        this.clazzType = cls;
    }

    public void setColumns(String[] strArr) {
        this.columns = strArr;
    }

    public void setFilterString(String str) {
        Utility.assertNotNullOrEmpty("filterString", str);
        this.filterString = str;
    }

    public void setSourceTableName(String str) {
        Utility.assertNotNullOrEmpty("tableName", str);
        this.sourceTableName = str;
    }

    public void setTakeCount(Integer num) {
        if (num == null || num.intValue() > 0) {
            this.takeCount = num;
            return;
        }
        throw new IllegalArgumentException(SR.TAKE_COUNT_ZERO_OR_NEGATIVE);
    }

    public TableQuery<T> take(Integer num) {
        if (num != null) {
            setTakeCount(num);
        }
        return this;
    }

    public TableQuery<T> where(String str) {
        setFilterString(str);
        return this;
    }

    public static String generateFilterCondition(String str, String str2, byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb);
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            formatter.format("%02x", new Object[]{Byte.valueOf(bArr[i2])});
        }
        formatter.flush();
        formatter.close();
        return generateFilterCondition(str, str2, sb.toString(), EdmType.BINARY);
    }

    public TableQuery(Class<T> cls) {
        setClazzType(cls);
    }

    public static String generateFilterCondition(String str, String str2, Byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb);
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            formatter.format("%02x", new Object[]{Byte.valueOf(bArr[i2].byteValue())});
        }
        formatter.flush();
        formatter.close();
        return generateFilterCondition(str, str2, sb.toString(), EdmType.BINARY);
    }

    public static String generateFilterCondition(String str, String str2, Date date) {
        return generateFilterCondition(str, str2, Utility.getJavaISO8601Time(date), EdmType.DATE_TIME);
    }

    public static String generateFilterCondition(String str, String str2, double d2) {
        return generateFilterCondition(str, str2, Double.toString(d2), EdmType.DOUBLE);
    }

    public static String generateFilterCondition(String str, String str2, int i2) {
        return generateFilterCondition(str, str2, Integer.toString(i2), EdmType.INT32);
    }

    public static String generateFilterCondition(String str, String str2, long j2) {
        return generateFilterCondition(str, str2, Long.toString(j2), EdmType.INT64);
    }

    public static String generateFilterCondition(String str, String str2, String str3) {
        return generateFilterCondition(str, str2, str3, EdmType.STRING);
    }

    public static String generateFilterCondition(String str, String str2, String str3, EdmType edmType) {
        if (!(edmType == EdmType.BOOLEAN || edmType == EdmType.DOUBLE || edmType == EdmType.INT32)) {
            if (edmType == EdmType.INT64) {
                str3 = String.format("%sL", new Object[]{str3});
            } else if (edmType == EdmType.DATE_TIME) {
                str3 = String.format("datetime'%s'", new Object[]{str3});
            } else if (edmType == EdmType.GUID) {
                str3 = String.format("guid'%s'", new Object[]{str3});
            } else if (edmType == EdmType.BINARY) {
                str3 = String.format("X'%s'", new Object[]{str3});
            } else {
                str3 = String.format("'%s'", new Object[]{str3.replace("'", "''")});
            }
        }
        return String.format("%s %s %s", new Object[]{str, str2, str3});
    }

    public static String generateFilterCondition(String str, String str2, UUID uuid) {
        return generateFilterCondition(str, str2, uuid.toString(), EdmType.GUID);
    }
}
