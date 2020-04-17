package com.microsoft.appcenter.crashes.ingestion.models;

import com.microsoft.appcenter.crashes.ingestion.models.json.ExceptionFactory;
import com.microsoft.appcenter.crashes.ingestion.models.json.StackFrameFactory;
import com.microsoft.appcenter.ingestion.models.CommonProperties;
import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONObject;
import org.json.JSONStringer;

public class Exception implements Model {
    public static final String INNER_EXCEPTIONS = "innerExceptions";
    public static final String MESSAGE = "message";
    public static final String MINIDUMP_FILE_PATH = "minidumpFilePath";
    public static final String STACK_TRACE = "stackTrace";
    public static final String WRAPPER_SDK_NAME = "wrapperSdkName";
    public List<StackFrame> frames;
    public List<Exception> innerExceptions;
    public String message;
    public String minidumpFilePath;
    public String stackTrace;
    public String type;
    public String wrapperSdkName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Exception.class != obj.getClass()) {
            return false;
        }
        Exception exception = (Exception) obj;
        String str = this.type;
        if (str == null ? exception.type != null : !str.equals(exception.type)) {
            return false;
        }
        String str2 = this.message;
        if (str2 == null ? exception.message != null : !str2.equals(exception.message)) {
            return false;
        }
        String str3 = this.stackTrace;
        if (str3 == null ? exception.stackTrace != null : !str3.equals(exception.stackTrace)) {
            return false;
        }
        List<StackFrame> list = this.frames;
        if (list == null ? exception.frames != null : !list.equals(exception.frames)) {
            return false;
        }
        List<Exception> list2 = this.innerExceptions;
        if (list2 == null ? exception.innerExceptions != null : !list2.equals(exception.innerExceptions)) {
            return false;
        }
        String str4 = this.wrapperSdkName;
        if (str4 == null ? exception.wrapperSdkName != null : !str4.equals(exception.wrapperSdkName)) {
            return false;
        }
        String str5 = this.minidumpFilePath;
        String str6 = exception.minidumpFilePath;
        if (str5 != null) {
            return str5.equals(str6);
        }
        if (str6 == null) {
            return true;
        }
        return false;
    }

    public List<StackFrame> getFrames() {
        return this.frames;
    }

    public List<Exception> getInnerExceptions() {
        return this.innerExceptions;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMinidumpFilePath() {
        return this.minidumpFilePath;
    }

    public String getStackTrace() {
        return this.stackTrace;
    }

    public String getType() {
        return this.type;
    }

    public String getWrapperSdkName() {
        return this.wrapperSdkName;
    }

    public int hashCode() {
        String str = this.type;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.message;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.stackTrace;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<StackFrame> list = this.frames;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        List<Exception> list2 = this.innerExceptions;
        int hashCode5 = (hashCode4 + (list2 != null ? list2.hashCode() : 0)) * 31;
        String str4 = this.wrapperSdkName;
        int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.minidumpFilePath;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode6 + i2;
    }

    public void read(JSONObject jSONObject) {
        setType(jSONObject.optString("type", (String) null));
        setMessage(jSONObject.optString("message", (String) null));
        setStackTrace(jSONObject.optString(STACK_TRACE, (String) null));
        setFrames(JSONUtils.readArray(jSONObject, CommonProperties.FRAMES, StackFrameFactory.getInstance()));
        setInnerExceptions(JSONUtils.readArray(jSONObject, INNER_EXCEPTIONS, ExceptionFactory.getInstance()));
        setWrapperSdkName(jSONObject.optString("wrapperSdkName", (String) null));
        setMinidumpFilePath(jSONObject.optString(MINIDUMP_FILE_PATH, (String) null));
    }

    public void setFrames(List<StackFrame> list) {
        this.frames = list;
    }

    public void setInnerExceptions(List<Exception> list) {
        this.innerExceptions = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMinidumpFilePath(String str) {
        this.minidumpFilePath = str;
    }

    public void setStackTrace(String str) {
        this.stackTrace = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setWrapperSdkName(String str) {
        this.wrapperSdkName = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, "type", getType());
        JSONUtils.write(jSONStringer, "message", getMessage());
        JSONUtils.write(jSONStringer, STACK_TRACE, getStackTrace());
        JSONUtils.writeArray(jSONStringer, CommonProperties.FRAMES, getFrames());
        JSONUtils.writeArray(jSONStringer, INNER_EXCEPTIONS, getInnerExceptions());
        JSONUtils.write(jSONStringer, "wrapperSdkName", getWrapperSdkName());
        JSONUtils.write(jSONStringer, MINIDUMP_FILE_PATH, getMinidumpFilePath());
    }
}
