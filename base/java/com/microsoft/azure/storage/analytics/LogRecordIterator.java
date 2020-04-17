package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.blob.CloudBlockBlob;
import com.microsoft.azure.storage.blob.ListBlobItem;
import com.microsoft.azure.storage.core.SR;
import java.io.IOException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class LogRecordIterator implements Iterator<LogRecord> {
    public boolean isLogRecordPending = false;
    public final Iterator<ListBlobItem> logBlobIterator;
    public LogRecord pendingLogRecord;
    public LogRecordStreamReader reader;

    public LogRecordIterator(Iterator<ListBlobItem> it) {
        this.logBlobIterator = it;
    }

    public boolean hasNext() {
        if (this.isLogRecordPending) {
            return true;
        }
        try {
            if (this.reader != null) {
                if (!this.reader.isEndOfFile()) {
                    this.pendingLogRecord = new LogRecord(this.reader);
                    this.isLogRecordPending = true;
                    return true;
                }
            }
            if (!this.logBlobIterator.hasNext()) {
                return false;
            }
            if (this.reader != null) {
                this.reader.close();
            }
            this.reader = new LogRecordStreamReader(((CloudBlockBlob) this.logBlobIterator.next()).openInputStream());
            return hasNext();
        } catch (IOException e2) {
            NoSuchElementException noSuchElementException = new NoSuchElementException(SR.ENUMERATION_ERROR);
            noSuchElementException.initCause(e2);
            throw noSuchElementException;
        } catch (StorageException e3) {
            NoSuchElementException noSuchElementException2 = new NoSuchElementException(SR.ENUMERATION_ERROR);
            noSuchElementException2.initCause(e3);
            throw noSuchElementException2;
        } catch (ParseException e4) {
            NoSuchElementException noSuchElementException3 = new NoSuchElementException(SR.ENUMERATION_ERROR);
            noSuchElementException3.initCause(e4);
            throw noSuchElementException3;
        } catch (URISyntaxException e5) {
            NoSuchElementException noSuchElementException4 = new NoSuchElementException(SR.ENUMERATION_ERROR);
            noSuchElementException4.initCause(e5);
            throw noSuchElementException4;
        }
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }

    public LogRecord next() {
        if (this.isLogRecordPending) {
            this.isLogRecordPending = false;
            return this.pendingLogRecord;
        } else if (hasNext()) {
            return next();
        } else {
            throw new NoSuchElementException(SR.ITERATOR_EMPTY);
        }
    }
}
