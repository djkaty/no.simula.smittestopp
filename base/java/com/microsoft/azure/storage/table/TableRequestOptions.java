package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;

public class TableRequestOptions extends RequestOptions {
    public Boolean dateBackwardCompatibility;
    public TableEncryptionPolicy encryptionPolicy;
    public EncryptionResolver encryptionResolver;
    public TablePayloadFormat payloadFormat;
    public PropertyResolver propertyResolver;

    public interface EncryptionResolver {
        boolean encryptionResolver(String str, String str2, String str3);
    }

    public interface PropertyResolver {
        EdmType propertyResolver(String str, String str2, String str3, String str4);
    }

    public TableRequestOptions() {
    }

    public static void applyDefaults(TableRequestOptions tableRequestOptions) {
        Utility.assertNotNull("modifiedOptions", tableRequestOptions);
        RequestOptions.applyBaseDefaultsInternal(tableRequestOptions);
        if (tableRequestOptions.getTablePayloadFormat() == null) {
            tableRequestOptions.setTablePayloadFormat(TablePayloadFormat.Json);
        }
        if (tableRequestOptions.getDateBackwardCompatibility() == null) {
            tableRequestOptions.setDateBackwardCompatibility(false);
        }
    }

    public static void populate(TableRequestOptions tableRequestOptions, TableRequestOptions tableRequestOptions2) {
        RequestOptions.populateRequestOptions(tableRequestOptions, tableRequestOptions2, true);
        if (tableRequestOptions.getTablePayloadFormat() == null) {
            tableRequestOptions.setTablePayloadFormat(tableRequestOptions2.getTablePayloadFormat());
        }
        if (tableRequestOptions.getPropertyResolver() == null) {
            tableRequestOptions.setPropertyResolver(tableRequestOptions2.getPropertyResolver());
        }
        if (tableRequestOptions.getDateBackwardCompatibility() == null) {
            tableRequestOptions.setDateBackwardCompatibility(tableRequestOptions2.getDateBackwardCompatibility());
        }
        if (tableRequestOptions.getEncryptionPolicy() == null) {
            tableRequestOptions.setEncryptionPolicy(tableRequestOptions2.getEncryptionPolicy());
        }
        if (tableRequestOptions.getEncryptionResolver() == null) {
            tableRequestOptions.setEncryptionResolver(tableRequestOptions2.getEncryptionResolver());
        }
    }

    public static final TableRequestOptions populateAndApplyDefaults(TableRequestOptions tableRequestOptions, CloudTableClient cloudTableClient) {
        TableRequestOptions tableRequestOptions2 = new TableRequestOptions(tableRequestOptions);
        populate(tableRequestOptions2, cloudTableClient.getDefaultRequestOptions());
        applyDefaults(tableRequestOptions2);
        return tableRequestOptions2;
    }

    public void assertNoEncryptionPolicyOrStrictMode() {
        if (getEncryptionPolicy() == null) {
            assertPolicyIfRequired();
            return;
        }
        throw new IllegalArgumentException(SR.ENCRYPTION_NOT_SUPPORTED_FOR_OPERATION);
    }

    public void assertPolicyIfRequired() {
        if (requireEncryption() != null && requireEncryption().booleanValue() && getEncryptionPolicy() == null) {
            throw new IllegalArgumentException(SR.ENCRYPTION_POLICY_MISSING_IN_STRICT_MODE);
        }
    }

    public void clearEncryption() {
        setRequireEncryption(false);
        setEncryptionPolicy((TableEncryptionPolicy) null);
        setEncryptionResolver((EncryptionResolver) null);
    }

    public Boolean getDateBackwardCompatibility() {
        return this.dateBackwardCompatibility;
    }

    public TableEncryptionPolicy getEncryptionPolicy() {
        return this.encryptionPolicy;
    }

    public EncryptionResolver getEncryptionResolver() {
        return this.encryptionResolver;
    }

    public PropertyResolver getPropertyResolver() {
        return this.propertyResolver;
    }

    public TablePayloadFormat getTablePayloadFormat() {
        return this.payloadFormat;
    }

    public void setDateBackwardCompatibility(Boolean bool) {
        this.dateBackwardCompatibility = bool;
    }

    public void setEncryptionPolicy(TableEncryptionPolicy tableEncryptionPolicy) {
        this.encryptionPolicy = tableEncryptionPolicy;
    }

    public void setEncryptionResolver(EncryptionResolver encryptionResolver2) {
        this.encryptionResolver = encryptionResolver2;
    }

    public void setPropertyResolver(PropertyResolver propertyResolver2) {
        this.propertyResolver = propertyResolver2;
    }

    public void setTablePayloadFormat(TablePayloadFormat tablePayloadFormat) {
        this.payloadFormat = tablePayloadFormat;
    }

    public TableRequestOptions(TableRequestOptions tableRequestOptions) {
        super(tableRequestOptions);
        if (tableRequestOptions != null) {
            setTablePayloadFormat(tableRequestOptions.getTablePayloadFormat());
            setPropertyResolver(tableRequestOptions.getPropertyResolver());
            setDateBackwardCompatibility(tableRequestOptions.getDateBackwardCompatibility());
            setEncryptionPolicy(tableRequestOptions.getEncryptionPolicy());
            setEncryptionResolver(tableRequestOptions.getEncryptionResolver());
        }
    }
}
