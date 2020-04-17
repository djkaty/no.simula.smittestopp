package com.microsoft.azure.storage.blob;

import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.azure.storage.SharedAccessPolicy;
import java.util.EnumSet;

public final class SharedAccessBlobPolicy extends SharedAccessPolicy {
    public EnumSet<SharedAccessBlobPermissions> permissions;

    public EnumSet<SharedAccessBlobPermissions> getPermissions() {
        return this.permissions;
    }

    public String permissionsToString() {
        if (this.permissions == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (this.permissions.contains(SharedAccessBlobPermissions.READ)) {
            sb.append("r");
        }
        if (this.permissions.contains(SharedAccessBlobPermissions.ADD)) {
            sb.append("a");
        }
        if (this.permissions.contains(SharedAccessBlobPermissions.CREATE)) {
            sb.append(UserIdContext.CUSTOM_PREFIX);
        }
        if (this.permissions.contains(SharedAccessBlobPermissions.WRITE)) {
            sb.append("w");
        }
        if (this.permissions.contains(SharedAccessBlobPermissions.DELETE)) {
            sb.append("d");
        }
        if (this.permissions.contains(SharedAccessBlobPermissions.LIST)) {
            sb.append("l");
        }
        return sb.toString();
    }

    public void setPermissions(EnumSet<SharedAccessBlobPermissions> enumSet) {
        this.permissions = enumSet;
    }

    public void setPermissionsFromString(String str) {
        EnumSet<SharedAccessBlobPermissions> noneOf = EnumSet.noneOf(SharedAccessBlobPermissions.class);
        for (char c2 : str.toCharArray()) {
            if (c2 == 'a') {
                noneOf.add(SharedAccessBlobPermissions.ADD);
            } else if (c2 == 'l') {
                noneOf.add(SharedAccessBlobPermissions.LIST);
            } else if (c2 == 'r') {
                noneOf.add(SharedAccessBlobPermissions.READ);
            } else if (c2 == 'w') {
                noneOf.add(SharedAccessBlobPermissions.WRITE);
            } else if (c2 == 'c') {
                noneOf.add(SharedAccessBlobPermissions.CREATE);
            } else if (c2 == 'd') {
                noneOf.add(SharedAccessBlobPermissions.DELETE);
            } else {
                throw new IllegalArgumentException("value");
            }
        }
        this.permissions = noneOf;
    }
}
