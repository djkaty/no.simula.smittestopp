package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.SharedAccessPolicy;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import java.util.EnumSet;

public final class SharedAccessTablePolicy extends SharedAccessPolicy {
    public EnumSet<SharedAccessTablePermissions> permissions;

    public EnumSet<SharedAccessTablePermissions> getPermissions() {
        return this.permissions;
    }

    public String permissionsToString() {
        if (this.permissions == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (this.permissions.contains(SharedAccessTablePermissions.QUERY)) {
            sb.append("r");
        }
        if (this.permissions.contains(SharedAccessTablePermissions.ADD)) {
            sb.append("a");
        }
        if (this.permissions.contains(SharedAccessTablePermissions.UPDATE)) {
            sb.append(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_HOST);
        }
        if (this.permissions.contains(SharedAccessTablePermissions.DELETE)) {
            sb.append("d");
        }
        return sb.toString();
    }

    public void setPermissions(EnumSet<SharedAccessTablePermissions> enumSet) {
        this.permissions = enumSet;
    }

    public void setPermissionsFromString(String str) {
        char[] charArray = str.toCharArray();
        EnumSet<SharedAccessTablePermissions> noneOf = EnumSet.noneOf(SharedAccessTablePermissions.class);
        for (char c2 : charArray) {
            if (c2 == 'a') {
                noneOf.add(SharedAccessTablePermissions.ADD);
            } else if (c2 == 'd') {
                noneOf.add(SharedAccessTablePermissions.DELETE);
            } else if (c2 == 'r') {
                noneOf.add(SharedAccessTablePermissions.QUERY);
            } else if (c2 == 'u') {
                noneOf.add(SharedAccessTablePermissions.UPDATE);
            } else {
                throw new IllegalArgumentException(String.format(SR.ENUM_COULD_NOT_BE_PARSED, new Object[]{"Permissions", str}));
            }
        }
        this.permissions = noneOf;
    }
}
