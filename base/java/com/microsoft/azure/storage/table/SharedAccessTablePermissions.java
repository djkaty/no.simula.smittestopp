package com.microsoft.azure.storage.table;

import java.util.EnumSet;

public enum SharedAccessTablePermissions {
    NONE((byte) 0),
    QUERY((byte) 1),
    ADD((byte) 2),
    UPDATE((byte) 4),
    DELETE((byte) 8);
    
    public byte value;

    /* access modifiers changed from: public */
    SharedAccessTablePermissions(byte b) {
        this.value = b;
    }

    public static EnumSet<SharedAccessTablePermissions> fromByte(byte b) {
        EnumSet<SharedAccessTablePermissions> noneOf = EnumSet.noneOf(SharedAccessTablePermissions.class);
        SharedAccessTablePermissions sharedAccessTablePermissions = QUERY;
        if (b == sharedAccessTablePermissions.value) {
            noneOf.add(sharedAccessTablePermissions);
        }
        SharedAccessTablePermissions sharedAccessTablePermissions2 = ADD;
        if (b == sharedAccessTablePermissions2.value) {
            noneOf.add(sharedAccessTablePermissions2);
        }
        SharedAccessTablePermissions sharedAccessTablePermissions3 = UPDATE;
        if (b == sharedAccessTablePermissions3.value) {
            noneOf.add(sharedAccessTablePermissions3);
        }
        SharedAccessTablePermissions sharedAccessTablePermissions4 = DELETE;
        if (b == sharedAccessTablePermissions4.value) {
            noneOf.add(sharedAccessTablePermissions4);
        }
        return noneOf;
    }
}
