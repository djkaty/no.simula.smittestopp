package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.blob.ListBlobItem;
import java.util.Iterator;

public class LogRecordIterable implements Iterable<LogRecord> {
    public final Iterator<ListBlobItem> logBlobIterator;

    public LogRecordIterable(Iterator<ListBlobItem> it) {
        this.logBlobIterator = it;
    }

    public Iterator<LogRecord> iterator() {
        return new LogRecordIterator(this.logBlobIterator);
    }
}
