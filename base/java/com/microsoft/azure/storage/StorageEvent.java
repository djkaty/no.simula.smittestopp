package com.microsoft.azure.storage;

import com.microsoft.azure.storage.BaseEvent;
import java.util.EventListener;

public abstract class StorageEvent<T extends BaseEvent> implements EventListener {
    public abstract void eventOccurred(T t);
}
