package com.microsoft.azure.storage;

import java.util.ArrayList;
import java.util.List;

public final class CorsProperties {
    public List<CorsRule> corsRules = new ArrayList();

    public List<CorsRule> getCorsRules() {
        return this.corsRules;
    }

    public void setCorsRules(List<CorsRule> list) {
        this.corsRules = list;
    }
}
