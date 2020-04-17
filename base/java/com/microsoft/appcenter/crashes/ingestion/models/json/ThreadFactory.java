package com.microsoft.appcenter.crashes.ingestion.models.json;

import com.microsoft.appcenter.crashes.ingestion.models.Thread;
import com.microsoft.appcenter.ingestion.models.json.ModelFactory;
import java.util.ArrayList;
import java.util.List;

public class ThreadFactory implements ModelFactory<Thread> {
    public static final ThreadFactory sInstance = new ThreadFactory();

    public static ThreadFactory getInstance() {
        return sInstance;
    }

    public List<Thread> createList(int i2) {
        return new ArrayList(i2);
    }

    public Thread create() {
        return new Thread();
    }
}
