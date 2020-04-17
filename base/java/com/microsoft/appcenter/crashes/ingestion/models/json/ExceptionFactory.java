package com.microsoft.appcenter.crashes.ingestion.models.json;

import com.microsoft.appcenter.crashes.ingestion.models.Exception;
import com.microsoft.appcenter.ingestion.models.json.ModelFactory;
import java.util.ArrayList;
import java.util.List;

public class ExceptionFactory implements ModelFactory<Exception> {
    public static final ExceptionFactory sInstance = new ExceptionFactory();

    public static ExceptionFactory getInstance() {
        return sInstance;
    }

    public List<Exception> createList(int i2) {
        return new ArrayList(i2);
    }

    public Exception create() {
        return new Exception();
    }
}
