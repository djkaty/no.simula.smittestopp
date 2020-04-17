package com.microsoft.identity.client;

import com.microsoft.identity.common.adal.internal.tokensharing.ITokenShareInternal;

public interface ITokenShare extends ITokenShareInternal {
    String getMsaFamilyRefreshToken(String str);

    String getOrgIdFamilyRefreshToken(String str);

    void saveMsaFamilyRefreshToken(String str);

    void saveOrgIdFamilyRefreshToken(String str);
}
