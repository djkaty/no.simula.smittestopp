package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import java.util.EnumSet;
import java.util.Iterator;

public enum SharedAccessAccountResourceType {
    SERVICE('s'),
    CONTAINER('c'),
    OBJECT('o');
    
    public char value;

    /* access modifiers changed from: public */
    SharedAccessAccountResourceType(char c2) {
        this.value = c2;
    }

    public static EnumSet<SharedAccessAccountResourceType> resourceTypesFromString(String str) {
        boolean z;
        EnumSet<SharedAccessAccountResourceType> noneOf = EnumSet.noneOf(SharedAccessAccountResourceType.class);
        char[] charArray = str.toLowerCase().toCharArray();
        int length = charArray.length;
        int i2 = 0;
        while (i2 < length) {
            char c2 = charArray[i2];
            SharedAccessAccountResourceType[] values = values();
            int length2 = values.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z = true;
                    break;
                }
                SharedAccessAccountResourceType sharedAccessAccountResourceType = values[i3];
                if (c2 == sharedAccessAccountResourceType.value) {
                    noneOf.add(sharedAccessAccountResourceType);
                    z = false;
                    break;
                }
                i3++;
            }
            if (!z) {
                i2++;
            } else {
                throw new IllegalArgumentException(String.format(SR.ENUM_COULD_NOT_BE_PARSED, new Object[]{"Resource Types", str}));
            }
        }
        return noneOf;
    }

    public static String resourceTypesToString(EnumSet<SharedAccessAccountResourceType> enumSet) {
        if (enumSet == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            sb.append(((SharedAccessAccountResourceType) it.next()).value);
        }
        return sb.toString();
    }
}
