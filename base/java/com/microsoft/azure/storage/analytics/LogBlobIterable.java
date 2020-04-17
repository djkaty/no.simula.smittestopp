package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.LoggingOperations;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.blob.BlobListingDetails;
import com.microsoft.azure.storage.blob.BlobRequestOptions;
import com.microsoft.azure.storage.blob.CloudBlobDirectory;
import com.microsoft.azure.storage.blob.ListBlobItem;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;

public class LogBlobIterable implements Iterable<ListBlobItem> {
    public final EnumSet<BlobListingDetails> details;
    public final Date endTime;
    public final CloudBlobDirectory logDirectory;
    public final OperationContext opContext;
    public final EnumSet<LoggingOperations> operations;
    public final BlobRequestOptions options;
    public final Date startTime;

    public LogBlobIterable(CloudBlobDirectory cloudBlobDirectory, Date date, Date date2, EnumSet<LoggingOperations> enumSet, EnumSet<BlobListingDetails> enumSet2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        this.logDirectory = cloudBlobDirectory;
        this.startTime = date;
        this.endTime = date2;
        this.operations = enumSet;
        this.details = enumSet2;
        this.options = blobRequestOptions;
        this.opContext = operationContext;
    }

    public Iterator<ListBlobItem> iterator() {
        return new LogBlobIterator(this.logDirectory, this.startTime, this.endTime, this.operations, this.details, this.options, this.opContext);
    }
}
