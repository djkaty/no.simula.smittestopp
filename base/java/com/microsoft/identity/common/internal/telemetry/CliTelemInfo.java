package com.microsoft.identity.common.internal.telemetry;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import java.io.Serializable;
import java.util.regex.Pattern;

public class CliTelemInfo implements Serializable {
    public static final String TAG = CliTelemInfo.class.getSimpleName();
    public String mRefreshTokenAge;
    public String mServerErrorCode;
    public String mServerSubErrorCode;
    public String mSpeRing;
    public String mVersion;

    public CliTelemInfo() {
    }

    public static CliTelemInfo fromXMsCliTelemHeader(String str) {
        if (StringExtensions.isNullOrBlank(str)) {
            return null;
        }
        String[] split = str.split(",");
        if (split.length == 0) {
            Logger.warn(TAG, "SPE Ring header missing version field.");
            return null;
        }
        String str2 = split[0];
        CliTelemInfo cliTelemInfo = new CliTelemInfo();
        cliTelemInfo.setVersion(str2);
        if (!str2.equals("1")) {
            Logger.warn(TAG, "Unrecognized x-ms-clitelem header version");
            return null;
        } else if (!Pattern.compile("^[1-9]+\\.?[0-9|\\.]*,[0-9|\\.]*,[0-9|\\.]*,[^,]*[0-9\\.]*,[^,]*$").matcher(str).matches()) {
            Logger.warn(TAG, "Malformed x-ms-clitelem header");
            return null;
        } else {
            String[] split2 = str.split(",", 5);
            cliTelemInfo.setServerErrorCode(split2[1]);
            cliTelemInfo.setServerSubErrorCode(split2[2]);
            cliTelemInfo.setRefreshTokenAge(split2[3]);
            cliTelemInfo.setSpeRing(split2[4]);
            return cliTelemInfo;
        }
    }

    public String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public String getServerErrorCode() {
        return this.mServerErrorCode;
    }

    public String getServerSubErrorCode() {
        return this.mServerSubErrorCode;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public void setServerErrorCode(String str) {
        this.mServerErrorCode = str;
    }

    public void setServerSubErrorCode(String str) {
        this.mServerSubErrorCode = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public CliTelemInfo(CliTelemInfo cliTelemInfo) {
        if (cliTelemInfo != null) {
            this.mVersion = cliTelemInfo.mVersion;
            this.mServerErrorCode = cliTelemInfo.mServerErrorCode;
            this.mServerSubErrorCode = cliTelemInfo.mServerSubErrorCode;
            this.mRefreshTokenAge = cliTelemInfo.mRefreshTokenAge;
            this.mSpeRing = cliTelemInfo.mSpeRing;
        }
    }
}
