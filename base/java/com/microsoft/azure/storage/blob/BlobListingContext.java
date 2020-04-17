package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.ListingContext;
import java.util.EnumSet;

public final class BlobListingContext extends ListingContext {
    public String delimiter;
    public EnumSet<BlobListingDetails> listingDetails;

    public BlobListingContext(String str, Integer num, String str2, EnumSet<BlobListingDetails> enumSet) {
        super(str, num);
        setDelimiter(str2);
        setListingDetails(enumSet);
    }

    public String getDelimiter() {
        return this.delimiter;
    }

    public EnumSet<BlobListingDetails> getListingDetails() {
        return this.listingDetails;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setListingDetails(EnumSet<BlobListingDetails> enumSet) {
        this.listingDetails = enumSet;
    }
}
