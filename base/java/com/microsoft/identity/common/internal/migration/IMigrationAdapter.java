package com.microsoft.identity.common.internal.migration;

import android.util.Pair;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import java.util.List;
import java.util.Map;

public interface IMigrationAdapter<T extends BaseAccount, U extends RefreshToken> {
    List<Pair<T, U>> adapt(Map<String, String> map);
}
