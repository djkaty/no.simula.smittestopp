package com.microsoft.azure.storage.queue;

import java.util.EnumSet;

public enum SharedAccessQueuePermissions {
    NONE((byte) 0),
    READ((byte) 1),
    ADD((byte) 2),
    UPDATE((byte) 4),
    PROCESSMESSAGES((byte) 8);
    
    public byte value;

    /* access modifiers changed from: public */
    SharedAccessQueuePermissions(byte b) {
        this.value = b;
    }

    public static EnumSet<SharedAccessQueuePermissions> fromByte(byte b) {
        EnumSet<SharedAccessQueuePermissions> noneOf = EnumSet.noneOf(SharedAccessQueuePermissions.class);
        SharedAccessQueuePermissions sharedAccessQueuePermissions = READ;
        if (b == sharedAccessQueuePermissions.value) {
            noneOf.add(sharedAccessQueuePermissions);
        }
        SharedAccessQueuePermissions sharedAccessQueuePermissions2 = PROCESSMESSAGES;
        if (b == sharedAccessQueuePermissions2.value) {
            noneOf.add(sharedAccessQueuePermissions2);
        }
        SharedAccessQueuePermissions sharedAccessQueuePermissions3 = ADD;
        if (b == sharedAccessQueuePermissions3.value) {
            noneOf.add(sharedAccessQueuePermissions3);
        }
        SharedAccessQueuePermissions sharedAccessQueuePermissions4 = UPDATE;
        if (b == sharedAccessQueuePermissions4.value) {
            noneOf.add(sharedAccessQueuePermissions4);
        }
        return noneOf;
    }
}
