package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import java.util.EnumSet;
import java.util.Iterator;

public enum SharedAccessAccountPermissions {
    READ('r'),
    ADD('a'),
    CREATE('c'),
    WRITE('w'),
    DELETE('d'),
    LIST('l'),
    UPDATE('u'),
    PROCESS_MESSAGES('p');
    
    public final char value;

    /* access modifiers changed from: public */
    SharedAccessAccountPermissions(char c2) {
        this.value = c2;
    }

    public static EnumSet<SharedAccessAccountPermissions> permissionsFromString(String str) {
        boolean z;
        EnumSet<SharedAccessAccountPermissions> noneOf = EnumSet.noneOf(SharedAccessAccountPermissions.class);
        char[] charArray = str.toLowerCase().toCharArray();
        int length = charArray.length;
        int i2 = 0;
        while (i2 < length) {
            char c2 = charArray[i2];
            SharedAccessAccountPermissions[] values = values();
            int length2 = values.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z = true;
                    break;
                }
                SharedAccessAccountPermissions sharedAccessAccountPermissions = values[i3];
                if (c2 == sharedAccessAccountPermissions.value) {
                    noneOf.add(sharedAccessAccountPermissions);
                    z = false;
                    break;
                }
                i3++;
            }
            if (!z) {
                i2++;
            } else {
                throw new IllegalArgumentException(String.format(SR.ENUM_COULD_NOT_BE_PARSED, new Object[]{"Permissions", str}));
            }
        }
        return noneOf;
    }

    public static String permissionsToString(EnumSet<SharedAccessAccountPermissions> enumSet) {
        if (enumSet == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            sb.append(((SharedAccessAccountPermissions) it.next()).value);
        }
        return sb.toString();
    }
}
