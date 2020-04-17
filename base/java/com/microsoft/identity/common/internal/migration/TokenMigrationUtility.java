package com.microsoft.identity.common.internal.migration;

import android.util.Pair;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.cache.IShareSingleSignOnState;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class TokenMigrationUtility<T extends BaseAccount, U extends RefreshToken> {
    public static final String TAG = "com.microsoft.identity.common.internal.migration.TokenMigrationUtility";
    public static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();

    public void _import(IMigrationAdapter<T, U> iMigrationAdapter, Map<String, String> map, IShareSingleSignOnState<T, U> iShareSingleSignOnState, TokenMigrationCallback tokenMigrationCallback) {
        final IMigrationAdapter<T, U> iMigrationAdapter2 = iMigrationAdapter;
        final Map<String, String> map2 = map;
        final IShareSingleSignOnState<T, U> iShareSingleSignOnState2 = iShareSingleSignOnState;
        final TokenMigrationCallback tokenMigrationCallback2 = tokenMigrationCallback;
        sBackgroundExecutor.execute(new Runnable() {
            public void run() {
                int i2 = 0;
                for (Pair pair : iMigrationAdapter2.adapt(map2)) {
                    try {
                        iShareSingleSignOnState2.setSingleSignOnState((BaseAccount) pair.first, (RefreshToken) pair.second);
                        i2++;
                    } catch (ClientException unused) {
                        Logger.warn(TokenMigrationUtility.TAG, "Failed to save account/refresh token . Skipping ");
                    }
                }
                tokenMigrationCallback2.onMigrationFinished(i2);
            }
        });
    }
}
