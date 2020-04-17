package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.LoggingOperations;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.blob.BlobListingDetails;
import com.microsoft.azure.storage.blob.BlobRequestOptions;
import com.microsoft.azure.storage.blob.CloudBlob;
import com.microsoft.azure.storage.blob.CloudBlobDirectory;
import com.microsoft.azure.storage.blob.ListBlobItem;
import com.microsoft.azure.storage.core.SR;
import java.net.URISyntaxException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.TimeZone;

public class LogBlobIterator implements Iterator<ListBlobItem> {
    public static final DateFormat DAY_FORMAT = new SimpleDateFormat(DAY_STRING);
    public static final int DAY_FORMAT_LENGTH = 10;
    public static final String DAY_STRING = "yyyy/MM/dd";
    public static final DateFormat HOUR_FORMAT = new SimpleDateFormat(HOUR_STRING);
    public static final int HOUR_FORMAT_LENGTH = 13;
    public static final String HOUR_STRING = "yyyy/MM/dd/HH";
    public static final DateFormat MONTH_FORMAT = new SimpleDateFormat(MONTH_STRING);
    public static final int MONTH_FORMAT_LENGTH = 7;
    public static final String MONTH_STRING = "yyyy/MM";
    public static final DateFormat YEAR_FORMAT = new SimpleDateFormat(YEAR_STRING);
    public static final String YEAR_STRING = "yyyy";
    public Iterator<ListBlobItem> currentIterator;
    public String currentPrefixTime = null;
    public final EnumSet<BlobListingDetails> details;
    public Calendar endDate = null;
    public String endPrefix;
    public Boolean isExpired = false;
    public Boolean isItemPending = false;
    public final CloudBlobDirectory logDirectory;
    public final OperationContext opContext;
    public final EnumSet<LoggingOperations> operations;
    public final BlobRequestOptions options;
    public ListBlobItem pendingItem;
    public Calendar startDate = null;

    public LogBlobIterator(CloudBlobDirectory cloudBlobDirectory, Date date, Date date2, EnumSet<LoggingOperations> enumSet, EnumSet<BlobListingDetails> enumSet2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        HOUR_FORMAT.setTimeZone(timeZone);
        DAY_FORMAT.setTimeZone(timeZone);
        MONTH_FORMAT.setTimeZone(timeZone);
        YEAR_FORMAT.setTimeZone(timeZone);
        this.logDirectory = cloudBlobDirectory;
        this.operations = enumSet;
        this.details = enumSet2;
        this.opContext = operationContext;
        if (blobRequestOptions == null) {
            this.options = new BlobRequestOptions();
        } else {
            this.options = blobRequestOptions;
        }
        if (date != null) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            this.startDate = gregorianCalendar;
            gregorianCalendar.setTime(date);
            Calendar calendar = this.startDate;
            calendar.add(12, -calendar.get(12));
            this.startDate.setTimeZone(timeZone);
        }
        if (date2 != null) {
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
            this.endDate = gregorianCalendar2;
            gregorianCalendar2.setTime(date2);
            this.endDate.setTimeZone(timeZone);
            this.endPrefix = this.logDirectory.getPrefix() + HOUR_FORMAT.format(this.endDate.getTime());
        }
    }

    private boolean isCorrectLogType(ListBlobItem listBlobItem) {
        String str = ((CloudBlob) listBlobItem).getMetadata().get("LogType");
        if (str == null) {
            return true;
        }
        if (this.operations.contains(LoggingOperations.READ) && str.contains("read")) {
            return true;
        }
        if (this.operations.contains(LoggingOperations.WRITE) && str.contains("write")) {
            return true;
        }
        if (!this.operations.contains(LoggingOperations.DELETE) || !str.contains("delete")) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0053, code lost:
        if ((r9.logDirectory.getPrefix() + r9.currentPrefixTime).compareTo(r9.endPrefix) <= 0) goto L_0x0059;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void updateIterator() {
        /*
            r9 = this;
            java.lang.String r0 = r9.currentPrefixTime
            r1 = 1
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r1)
            if (r0 == 0) goto L_0x0012
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0012
            r9.isExpired = r2
            return
        L_0x0012:
            java.util.GregorianCalendar r0 = new java.util.GregorianCalendar
            r0.<init>()
            r3 = 11
            r0.add(r3, r1)
            java.lang.String r1 = "GMT"
            java.util.TimeZone r1 = java.util.TimeZone.getTimeZone(r1)
            r0.setTimeZone(r1)
            r9.updatePrefix()
            java.util.Calendar r1 = r9.startDate
            if (r1 == 0) goto L_0x0032
            int r0 = r1.compareTo(r0)
            if (r0 > 0) goto L_0x0056
        L_0x0032:
            java.util.Calendar r0 = r9.endDate
            if (r0 == 0) goto L_0x0059
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.microsoft.azure.storage.blob.CloudBlobDirectory r1 = r9.logDirectory
            java.lang.String r1 = r1.getPrefix()
            r0.append(r1)
            java.lang.String r1 = r9.currentPrefixTime
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = r9.endPrefix
            int r0 = r0.compareTo(r1)
            if (r0 > 0) goto L_0x0056
            goto L_0x0059
        L_0x0056:
            r9.isExpired = r2
            goto L_0x006e
        L_0x0059:
            com.microsoft.azure.storage.blob.CloudBlobDirectory r3 = r9.logDirectory
            java.lang.String r4 = r9.currentPrefixTime
            r5 = 1
            java.util.EnumSet<com.microsoft.azure.storage.blob.BlobListingDetails> r6 = r9.details
            com.microsoft.azure.storage.blob.BlobRequestOptions r7 = r9.options
            com.microsoft.azure.storage.OperationContext r8 = r9.opContext
            java.lang.Iterable r0 = r3.listBlobs(r4, r5, r6, r7, r8)
            java.util.Iterator r0 = r0.iterator()
            r9.currentIterator = r0
        L_0x006e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.analytics.LogBlobIterator.updateIterator():void");
    }

    private void updatePrefix() {
        Calendar calendar = this.startDate;
        if (calendar == null) {
            this.currentPrefixTime = "";
            return;
        }
        String str = this.currentPrefixTime;
        if (str == null) {
            this.currentPrefixTime = HOUR_FORMAT.format(calendar.getTime());
        } else if (str.length() == HOUR_FORMAT_LENGTH) {
            this.startDate.add(11, 1);
            if (this.startDate.get(11) != 0) {
                this.currentPrefixTime = HOUR_FORMAT.format(this.startDate.getTime());
            } else {
                this.currentPrefixTime = DAY_FORMAT.format(this.startDate.getTime());
            }
        } else if (this.currentPrefixTime.length() == DAY_FORMAT_LENGTH) {
            this.startDate.add(5, 1);
            if (this.startDate.get(5) != 1) {
                this.currentPrefixTime = DAY_FORMAT.format(this.startDate.getTime());
            } else {
                this.currentPrefixTime = MONTH_FORMAT.format(this.startDate.getTime());
            }
        } else if (this.currentPrefixTime.length() == MONTH_FORMAT_LENGTH) {
            this.startDate.add(2, 1);
            if (this.startDate.get(2) != 13) {
                this.currentPrefixTime = MONTH_FORMAT.format(this.startDate.getTime());
            } else {
                this.currentPrefixTime = YEAR_FORMAT.format(this.startDate.getTime());
            }
        } else {
            this.startDate.add(1, 1);
            this.currentPrefixTime = YEAR_FORMAT.format(this.startDate.getTime());
        }
    }

    public boolean hasNext() {
        if (this.isItemPending.booleanValue()) {
            return true;
        }
        try {
            if (this.currentIterator == null) {
                updateIterator();
            }
            while (!this.isExpired.booleanValue()) {
                while (this.currentIterator.hasNext()) {
                    ListBlobItem next = this.currentIterator.next();
                    if (this.endDate != null) {
                        if (next.getParent().getPrefix().compareTo(this.endPrefix) > 0) {
                            this.isExpired = true;
                            return false;
                        }
                    }
                    if (isCorrectLogType(next)) {
                        this.pendingItem = next;
                        this.isItemPending = true;
                        return true;
                    }
                }
                updateIterator();
            }
            return false;
        } catch (StorageException e2) {
            NoSuchElementException noSuchElementException = new NoSuchElementException(SR.ENUMERATION_ERROR);
            noSuchElementException.initCause(e2);
            throw noSuchElementException;
        } catch (URISyntaxException e3) {
            NoSuchElementException noSuchElementException2 = new NoSuchElementException(SR.ENUMERATION_ERROR);
            noSuchElementException2.initCause(e3);
            throw noSuchElementException2;
        }
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }

    public ListBlobItem next() {
        if (this.isItemPending.booleanValue()) {
            this.isItemPending = false;
            return this.pendingItem;
        } else if (hasNext()) {
            return next();
        } else {
            throw new NoSuchElementException(SR.ITERATOR_EMPTY);
        }
    }
}
