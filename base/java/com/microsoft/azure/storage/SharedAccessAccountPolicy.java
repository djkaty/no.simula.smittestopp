package com.microsoft.azure.storage;

import java.util.EnumSet;

public final class SharedAccessAccountPolicy extends SharedAccessPolicy {
    public EnumSet<SharedAccessAccountPermissions> permissions;
    public SharedAccessProtocols protocols;
    public IPRange range;
    public EnumSet<SharedAccessAccountResourceType> resourceTypes;
    public EnumSet<SharedAccessAccountService> services;

    public EnumSet<SharedAccessAccountPermissions> getPermissions() {
        return this.permissions;
    }

    public SharedAccessProtocols getProtocols() {
        return this.protocols;
    }

    public IPRange getRange() {
        return this.range;
    }

    public EnumSet<SharedAccessAccountResourceType> getResourceTypes() {
        return this.resourceTypes;
    }

    public EnumSet<SharedAccessAccountService> getServices() {
        return this.services;
    }

    public String permissionsToString() {
        return SharedAccessAccountPermissions.permissionsToString(getPermissions());
    }

    public String resourceTypesToString() {
        return SharedAccessAccountResourceType.resourceTypesToString(getResourceTypes());
    }

    public String servicesToString() {
        return SharedAccessAccountService.servicesToString(getServices());
    }

    public void setPermissions(EnumSet<SharedAccessAccountPermissions> enumSet) {
        this.permissions = enumSet;
    }

    public void setPermissionsFromString(String str) {
        setPermissions(SharedAccessAccountPermissions.permissionsFromString(str));
    }

    public void setProtocols(SharedAccessProtocols sharedAccessProtocols) {
        this.protocols = sharedAccessProtocols;
    }

    public void setRange(IPRange iPRange) {
        this.range = iPRange;
    }

    public void setResourceTypeFromString(String str) {
        setResourceTypes(SharedAccessAccountResourceType.resourceTypesFromString(str));
    }

    public void setResourceTypes(EnumSet<SharedAccessAccountResourceType> enumSet) {
        this.resourceTypes = enumSet;
    }

    public void setServiceFromString(String str) {
        setServices(SharedAccessAccountService.servicesFromString(str));
    }

    public void setServices(EnumSet<SharedAccessAccountService> enumSet) {
        this.services = enumSet;
    }
}
