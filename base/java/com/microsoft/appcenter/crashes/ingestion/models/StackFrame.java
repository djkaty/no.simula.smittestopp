package com.microsoft.appcenter.crashes.ingestion.models;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class StackFrame implements Model {
    public static final String CLASS_NAME = "className";
    public static final String FILE_NAME = "fileName";
    public static final String LINE_NUMBER = "lineNumber";
    public static final String METHOD_NAME = "methodName";
    public String className;
    public String fileName;
    public Integer lineNumber;
    public String methodName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StackFrame.class != obj.getClass()) {
            return false;
        }
        StackFrame stackFrame = (StackFrame) obj;
        String str = this.className;
        if (str == null ? stackFrame.className != null : !str.equals(stackFrame.className)) {
            return false;
        }
        String str2 = this.methodName;
        if (str2 == null ? stackFrame.methodName != null : !str2.equals(stackFrame.methodName)) {
            return false;
        }
        Integer num = this.lineNumber;
        if (num == null ? stackFrame.lineNumber != null : !num.equals(stackFrame.lineNumber)) {
            return false;
        }
        String str3 = this.fileName;
        String str4 = stackFrame.fileName;
        if (str3 != null) {
            return str3.equals(str4);
        }
        if (str4 == null) {
            return true;
        }
        return false;
    }

    public String getClassName() {
        return this.className;
    }

    public String getFileName() {
        return this.fileName;
    }

    public Integer getLineNumber() {
        return this.lineNumber;
    }

    public String getMethodName() {
        return this.methodName;
    }

    public int hashCode() {
        String str = this.className;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.methodName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.lineNumber;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        String str3 = this.fileName;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode3 + i2;
    }

    public void read(JSONObject jSONObject) {
        setClassName(jSONObject.optString(CLASS_NAME, (String) null));
        setMethodName(jSONObject.optString("methodName", (String) null));
        setLineNumber(JSONUtils.readInteger(jSONObject, LINE_NUMBER));
        setFileName(jSONObject.optString("fileName", (String) null));
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setLineNumber(Integer num) {
        this.lineNumber = num;
    }

    public void setMethodName(String str) {
        this.methodName = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, CLASS_NAME, getClassName());
        JSONUtils.write(jSONStringer, "methodName", getMethodName());
        JSONUtils.write(jSONStringer, LINE_NUMBER, getLineNumber());
        JSONUtils.write(jSONStringer, "fileName", getFileName());
    }
}
