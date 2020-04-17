package com.microsoft.identity.common.internal.ui.browser;

import com.microsoft.identity.common.internal.util.StringUtil;
import e.c.c.v.c;
import java.io.Serializable;
import java.util.Collections;
import java.util.Set;

public class BrowserDescriptor implements Serializable {
    @c("browser_package_name")
    public String mPackageName;
    @c("browser_signature_hashes")
    public Set<String> mSignatureHashes;
    @c("browser_version_lower_bound")
    public String mVersionLowerBound;
    @c("browser_version_upper_bound")
    public String mVersionUpperBound;

    public BrowserDescriptor(String str, Set<String> set, String str2, String str3) {
        this.mPackageName = str;
        this.mSignatureHashes = set;
        this.mVersionLowerBound = str2;
        this.mVersionUpperBound = str3;
    }

    public boolean matches(Browser browser) {
        if (!this.mPackageName.equalsIgnoreCase(browser.getPackageName()) || !this.mSignatureHashes.equals(browser.getSignatureHashes())) {
            return false;
        }
        if (!StringUtil.isEmpty(this.mVersionLowerBound) && StringUtil.compareSemanticVersion(browser.getVersion(), this.mVersionLowerBound) == -1) {
            return false;
        }
        if (StringUtil.isEmpty(this.mVersionUpperBound) || StringUtil.compareSemanticVersion(browser.getVersion(), this.mVersionUpperBound) != 1) {
            return true;
        }
        return false;
    }

    public BrowserDescriptor(String str, String str2, String str3, String str4) {
        this.mPackageName = str;
        this.mSignatureHashes = Collections.singleton(str2);
        this.mVersionLowerBound = str3;
        this.mVersionUpperBound = str4;
    }
}
