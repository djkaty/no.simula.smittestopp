package com.microsoft.identity.common.internal.ui.browser;

import com.microsoft.identity.common.internal.logging.Logger;
import java.util.Arrays;
import java.util.List;

public class BrowserBlocklist {
    public static final String TAG = "BrowserBlocklist";
    public List<Browser> mBrowsers;

    public BrowserBlocklist(Browser... browserArr) {
        this.mBrowsers = Arrays.asList(browserArr);
    }

    public boolean matches(Browser browser) {
        for (Browser equals : this.mBrowsers) {
            if (equals.equals(browser)) {
                Logger.verbose(TAG, "The target browser is in the block list.");
                return true;
            }
        }
        return false;
    }
}
