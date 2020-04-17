package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import java.util.EnumSet;
import java.util.Iterator;

public enum SharedAccessAccountService {
    BLOB('b'),
    FILE('f'),
    QUEUE('q'),
    TABLE('t');
    
    public char value;

    /* access modifiers changed from: public */
    SharedAccessAccountService(char c2) {
        this.value = c2;
    }

    public static EnumSet<SharedAccessAccountService> servicesFromString(String str) {
        boolean z;
        EnumSet<SharedAccessAccountService> noneOf = EnumSet.noneOf(SharedAccessAccountService.class);
        char[] charArray = str.toLowerCase().toCharArray();
        int length = charArray.length;
        int i2 = 0;
        while (i2 < length) {
            char c2 = charArray[i2];
            SharedAccessAccountService[] values = values();
            int length2 = values.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z = true;
                    break;
                }
                SharedAccessAccountService sharedAccessAccountService = values[i3];
                if (c2 == sharedAccessAccountService.value) {
                    noneOf.add(sharedAccessAccountService);
                    z = false;
                    break;
                }
                i3++;
            }
            if (!z) {
                i2++;
            } else {
                throw new IllegalArgumentException(String.format(SR.ENUM_COULD_NOT_BE_PARSED, new Object[]{"Services", str}));
            }
        }
        return noneOf;
    }

    public static String servicesToString(EnumSet<SharedAccessAccountService> enumSet) {
        if (enumSet == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            sb.append(((SharedAccessAccountService) it.next()).value);
        }
        return sb.toString();
    }
}
