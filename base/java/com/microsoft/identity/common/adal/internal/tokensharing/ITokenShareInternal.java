package com.microsoft.identity.common.adal.internal.tokensharing;

public interface ITokenShareInternal {
    String getMsaFamilyRefreshToken(String str);

    String getOrgIdFamilyRefreshToken(String str);

    void saveMsaFamilyRefreshToken(String str);

    void saveOrgIdFamilyRefreshToken(String str);
}
