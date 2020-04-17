package com.microsoft.azure.storage;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.net.HttpURLConnection;
import java.util.Date;

public final class AccessCondition {
    public Long ifAppendPositionEqual = null;
    public String ifMatchETag = null;
    public Long ifMaxSizeLessThanOrEqual = null;
    public Date ifModifiedSinceDate = null;
    public String ifNoneMatchETag = null;
    public Long ifSequenceNumberEqual = null;
    public Long ifSequenceNumberLessThan = null;
    public Long ifSequenceNumberLessThanOrEqual = null;
    public Date ifUnmodifiedSinceDate = null;
    public String leaseID = null;

    public static AccessCondition generateEmptyCondition() {
        return new AccessCondition();
    }

    public static AccessCondition generateIfExistsCondition() {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.setIfMatch("*");
        return accessCondition;
    }

    public static AccessCondition generateIfMatchCondition(String str) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.setIfMatch(str);
        return accessCondition;
    }

    public static AccessCondition generateIfModifiedSinceCondition(Date date) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.ifModifiedSinceDate = date;
        return accessCondition;
    }

    public static AccessCondition generateIfNoneMatchCondition(String str) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.setIfNoneMatch(str);
        return accessCondition;
    }

    public static AccessCondition generateIfNotExistsCondition() {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.setIfNoneMatch("*");
        return accessCondition;
    }

    public static AccessCondition generateIfNotModifiedSinceCondition(Date date) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.ifUnmodifiedSinceDate = date;
        return accessCondition;
    }

    public static AccessCondition generateIfSequenceNumberEqualCondition(long j2) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.ifSequenceNumberEqual = Long.valueOf(j2);
        return accessCondition;
    }

    public static AccessCondition generateIfSequenceNumberLessThanCondition(long j2) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.ifSequenceNumberLessThan = Long.valueOf(j2);
        return accessCondition;
    }

    public static AccessCondition generateIfSequenceNumberLessThanOrEqualCondition(long j2) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.ifSequenceNumberLessThanOrEqual = Long.valueOf(j2);
        return accessCondition;
    }

    public static AccessCondition generateLeaseCondition(String str) {
        AccessCondition accessCondition = new AccessCondition();
        accessCondition.leaseID = str;
        return accessCondition;
    }

    public static String normalizeEtag(String str) {
        if (Utility.isNullOrEmpty(str) || str.equals("*")) {
            return str;
        }
        if (str.startsWith("\"") && str.endsWith("\"")) {
            return str;
        }
        return String.format("\"%s\"", new Object[]{str});
    }

    public void applyAppendConditionToRequest(HttpURLConnection httpURLConnection) {
        Long l2 = this.ifMaxSizeLessThanOrEqual;
        if (l2 != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_MAX_SIZE_LESS_THAN_OR_EQUAL, l2.toString());
        }
        Long l3 = this.ifAppendPositionEqual;
        if (l3 != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_APPEND_POSITION_EQUAL_HEADER, l3.toString());
        }
    }

    public void applyConditionToRequest(HttpURLConnection httpURLConnection) {
        applyLeaseConditionToRequest(httpURLConnection);
        Date date = this.ifModifiedSinceDate;
        if (date != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_MODIFIED_SINCE, Utility.getGMTTime(date));
        }
        Date date2 = this.ifUnmodifiedSinceDate;
        if (date2 != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_UNMODIFIED_SINCE, Utility.getGMTTime(date2));
        }
        if (!Utility.isNullOrEmpty(this.ifMatchETag)) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_MATCH, this.ifMatchETag);
        }
        if (!Utility.isNullOrEmpty(this.ifNoneMatchETag)) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_NONE_MATCH, this.ifNoneMatchETag);
        }
    }

    public void applyLeaseConditionToRequest(HttpURLConnection httpURLConnection) {
        if (!Utility.isNullOrEmpty(this.leaseID)) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.LEASE_ID_HEADER, this.leaseID);
        }
    }

    public void applySequenceConditionToRequest(HttpURLConnection httpURLConnection) {
        Long l2 = this.ifSequenceNumberLessThanOrEqual;
        if (l2 != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_SEQUENCE_NUMBER_LESS_THAN_OR_EQUAL, l2.toString());
        }
        Long l3 = this.ifSequenceNumberLessThan;
        if (l3 != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_SEQUENCE_NUMBER_LESS_THAN, l3.toString());
        }
        Long l4 = this.ifSequenceNumberEqual;
        if (l4 != null) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.IF_SEQUENCE_NUMBER_EQUAL, l4.toString());
        }
    }

    public void applySourceConditionToRequest(HttpURLConnection httpURLConnection) {
        if (Utility.isNullOrEmpty(this.leaseID)) {
            Date date = this.ifModifiedSinceDate;
            if (date != null) {
                httpURLConnection.setRequestProperty(Constants.HeaderConstants.SOURCE_IF_MODIFIED_SINCE_HEADER, Utility.getGMTTime(date));
            }
            Date date2 = this.ifUnmodifiedSinceDate;
            if (date2 != null) {
                httpURLConnection.setRequestProperty(Constants.HeaderConstants.SOURCE_IF_UNMODIFIED_SINCE_HEADER, Utility.getGMTTime(date2));
            }
            if (!Utility.isNullOrEmpty(this.ifMatchETag)) {
                httpURLConnection.setRequestProperty(Constants.HeaderConstants.SOURCE_IF_MATCH_HEADER, this.ifMatchETag);
            }
            if (!Utility.isNullOrEmpty(this.ifNoneMatchETag)) {
                httpURLConnection.setRequestProperty(Constants.HeaderConstants.SOURCE_IF_NONE_MATCH_HEADER, this.ifNoneMatchETag);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(SR.LEASE_CONDITION_ON_SOURCE);
    }

    public Long getIfAppendPositionEqual() {
        return this.ifAppendPositionEqual;
    }

    public String getIfMatch() {
        return this.ifMatchETag;
    }

    public Long getIfMaxSizeLessThanOrEqual() {
        return this.ifMaxSizeLessThanOrEqual;
    }

    public Date getIfModifiedSinceDate() {
        return this.ifModifiedSinceDate;
    }

    public String getIfNoneMatch() {
        return this.ifNoneMatchETag;
    }

    public Long getIfSequenceNumberEqual() {
        return this.ifSequenceNumberEqual;
    }

    public Long getIfSequenceNumberLessThan() {
        return this.ifSequenceNumberLessThan;
    }

    public Long getIfSequenceNumberLessThanOrEqual() {
        return this.ifSequenceNumberLessThanOrEqual;
    }

    public Date getIfUnmodifiedSinceDate() {
        return this.ifUnmodifiedSinceDate;
    }

    public String getLeaseID() {
        return this.leaseID;
    }

    public void setIfAppendPositionEqual(Long l2) {
        this.ifAppendPositionEqual = l2;
    }

    public void setIfMatch(String str) {
        this.ifMatchETag = normalizeEtag(str);
    }

    public void setIfMaxSizeLessThanOrEqual(Long l2) {
        this.ifMaxSizeLessThanOrEqual = l2;
    }

    public void setIfModifiedSinceDate(Date date) {
        this.ifModifiedSinceDate = date;
    }

    public void setIfNoneMatch(String str) {
        this.ifNoneMatchETag = normalizeEtag(str);
    }

    public void setIfSequenceNumberEqual(Long l2) {
        this.ifSequenceNumberEqual = l2;
    }

    public void setIfSequenceNumberLessThan(Long l2) {
        this.ifSequenceNumberLessThan = l2;
    }

    public void setIfSequenceNumberLessThanOrEqual(Long l2) {
        this.ifSequenceNumberLessThanOrEqual = l2;
    }

    public void setIfUnmodifiedSinceDate(Date date) {
        this.ifUnmodifiedSinceDate = date;
    }

    public void setLeaseID(String str) {
        this.leaseID = str;
    }

    public boolean verifyConditional(String str, Date date) {
        Date date2 = this.ifModifiedSinceDate;
        if (date2 != null && !date.after(date2)) {
            return false;
        }
        Date date3 = this.ifUnmodifiedSinceDate;
        if (date3 != null && date.after(date3)) {
            return false;
        }
        if (!Utility.isNullOrEmpty(this.ifMatchETag) && !this.ifMatchETag.equals(str) && !this.ifMatchETag.equals("*")) {
            return false;
        }
        if (Utility.isNullOrEmpty(this.ifNoneMatchETag) || !this.ifNoneMatchETag.equals(str)) {
            return true;
        }
        return false;
    }
}
