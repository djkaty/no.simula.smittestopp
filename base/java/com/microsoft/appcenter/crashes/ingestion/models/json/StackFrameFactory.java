package com.microsoft.appcenter.crashes.ingestion.models.json;

import com.microsoft.appcenter.crashes.ingestion.models.StackFrame;
import com.microsoft.appcenter.ingestion.models.json.ModelFactory;
import java.util.ArrayList;
import java.util.List;

public class StackFrameFactory implements ModelFactory<StackFrame> {
    public static final StackFrameFactory sInstance = new StackFrameFactory();

    public static StackFrameFactory getInstance() {
        return sInstance;
    }

    public List<StackFrame> createList(int i2) {
        return new ArrayList(i2);
    }

    public StackFrame create() {
        return new StackFrame();
    }
}
