package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.SharedAccessPolicy;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import java.util.EnumSet;

public final class SharedAccessQueuePolicy extends SharedAccessPolicy {
    public EnumSet<SharedAccessQueuePermissions> permissions;

    public EnumSet<SharedAccessQueuePermissions> getPermissions() {
        return this.permissions;
    }

    public String permissionsToString() {
        if (this.permissions == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (this.permissions.contains(SharedAccessQueuePermissions.READ)) {
            sb.append("r");
        }
        if (this.permissions.contains(SharedAccessQueuePermissions.ADD)) {
            sb.append("a");
        }
        if (this.permissions.contains(SharedAccessQueuePermissions.UPDATE)) {
            sb.append(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_HOST);
        }
        if (this.permissions.contains(SharedAccessQueuePermissions.PROCESSMESSAGES)) {
            sb.append(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_PATH);
        }
        return sb.toString();
    }

    public void setPermissions(EnumSet<SharedAccessQueuePermissions> enumSet) {
        this.permissions = enumSet;
    }

    public void setPermissionsFromString(String str) {
        char[] charArray = str.toCharArray();
        EnumSet<SharedAccessQueuePermissions> noneOf = EnumSet.noneOf(SharedAccessQueuePermissions.class);
        for (char c2 : charArray) {
            if (c2 == 'a') {
                noneOf.add(SharedAccessQueuePermissions.ADD);
            } else if (c2 == 'p') {
                noneOf.add(SharedAccessQueuePermissions.PROCESSMESSAGES);
            } else if (c2 == 'r') {
                noneOf.add(SharedAccessQueuePermissions.READ);
            } else if (c2 == 'u') {
                noneOf.add(SharedAccessQueuePermissions.UPDATE);
            } else {
                throw new IllegalArgumentException("value");
            }
        }
        this.permissions = noneOf;
    }
}
