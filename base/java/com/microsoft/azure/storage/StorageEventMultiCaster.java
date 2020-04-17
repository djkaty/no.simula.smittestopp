package com.microsoft.azure.storage;

import com.microsoft.azure.storage.BaseEvent;
import com.microsoft.azure.storage.StorageEvent;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class StorageEventMultiCaster<EVENT_TYPE extends BaseEvent, EVENT_LISTENER_TYPE extends StorageEvent<EVENT_TYPE>> {
    public final CopyOnWriteArrayList<EVENT_LISTENER_TYPE> listeners = new CopyOnWriteArrayList<>();

    public void addListener(EVENT_LISTENER_TYPE event_listener_type) {
        this.listeners.add(event_listener_type);
    }

    public void fireEvent(EVENT_TYPE event_type) {
        Iterator<EVENT_LISTENER_TYPE> it = this.listeners.iterator();
        while (it.hasNext()) {
            ((StorageEvent) it.next()).eventOccurred(event_type);
        }
    }

    public boolean hasListeners() {
        return this.listeners.size() > 0;
    }

    public void removeListener(EVENT_LISTENER_TYPE event_listener_type) {
        this.listeners.remove(event_listener_type);
    }
}
