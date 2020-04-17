package com.microsoft.azure.storage.file;

import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.azure.storage.SharedAccessPolicy;
import java.util.EnumSet;

public final class SharedAccessFilePolicy extends SharedAccessPolicy {
    public EnumSet<SharedAccessFilePermissions> permissions;

    public EnumSet<SharedAccessFilePermissions> getPermissions() {
        return this.permissions;
    }

    public String permissionsToString() {
        if (this.permissions == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (this.permissions.contains(SharedAccessFilePermissions.READ)) {
            sb.append("r");
        }
        if (this.permissions.contains(SharedAccessFilePermissions.CREATE)) {
            sb.append(UserIdContext.CUSTOM_PREFIX);
        }
        if (this.permissions.contains(SharedAccessFilePermissions.WRITE)) {
            sb.append("w");
        }
        if (this.permissions.contains(SharedAccessFilePermissions.DELETE)) {
            sb.append("d");
        }
        if (this.permissions.contains(SharedAccessFilePermissions.LIST)) {
            sb.append("l");
        }
        return sb.toString();
    }

    public void setPermissions(EnumSet<SharedAccessFilePermissions> enumSet) {
        this.permissions = enumSet;
    }

    public void setPermissionsFromString(String str) {
        EnumSet<SharedAccessFilePermissions> noneOf = EnumSet.noneOf(SharedAccessFilePermissions.class);
        for (char c2 : str.toCharArray()) {
            if (c2 == 'c') {
                noneOf.add(SharedAccessFilePermissions.CREATE);
            } else if (c2 == 'd') {
                noneOf.add(SharedAccessFilePermissions.DELETE);
            } else if (c2 == 'l') {
                noneOf.add(SharedAccessFilePermissions.LIST);
            } else if (c2 == 'r') {
                noneOf.add(SharedAccessFilePermissions.READ);
            } else if (c2 == 'w') {
                noneOf.add(SharedAccessFilePermissions.WRITE);
            } else {
                throw new IllegalArgumentException("value");
            }
        }
        this.permissions = noneOf;
    }
}
