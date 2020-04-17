package com.microsoft.identity.client;

import android.content.Context;
import com.google.gson.Gson;
import com.microsoft.identity.client.Logger;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.client.internal.configuration.LogLevelDeserializer;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AuthorityDeserializer;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudienceDeserializer;
import com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.msal.R;
import e.a.a.a.a;
import e.c.c.e;
import e.c.c.w.t;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;

public class PublicClientApplicationConfigurationFactory {
    public static final String TAG = "PublicClientApplicationConfigurationFactory";

    public static Gson getGsonForLoadingConfiguration() {
        e eVar = new e();
        eVar.a(Authority.class, new AuthorityDeserializer());
        eVar.a(AzureActiveDirectoryAudience.class, new AzureActiveDirectoryAudienceDeserializer());
        eVar.a(Logger.LogLevel.class, new LogLevelDeserializer());
        return eVar.a();
    }

    public static PublicClientApplicationConfiguration initializeConfiguration(Context context) {
        return initializeConfigurationInternal(context, (PublicClientApplicationConfiguration) null);
    }

    public static PublicClientApplicationConfiguration initializeConfigurationInternal(Context context, PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        MsalUtils.validateNonNullArgument(context, PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        PublicClientApplicationConfiguration loadDefaultConfiguration = loadDefaultConfiguration(context);
        if (publicClientApplicationConfiguration != null) {
            loadDefaultConfiguration.mergeConfiguration(publicClientApplicationConfiguration);
            loadDefaultConfiguration.validateConfiguration();
        }
        loadDefaultConfiguration.setOAuth2TokenCache(MsalOAuth2TokenCache.create(context));
        return loadDefaultConfiguration;
    }

    public static PublicClientApplicationConfiguration loadConfiguration(Context context, int i2) {
        return loadConfiguration(context.getResources().openRawResource(i2), i2 == R.raw.msal_default_config);
    }

    public static PublicClientApplicationConfiguration loadDefaultConfiguration(Context context) {
        a.b(new StringBuilder(), TAG, ":loadDefaultConfiguration", "Loading default configuration");
        PublicClientApplicationConfiguration loadConfiguration = loadConfiguration(context, R.raw.msal_default_config);
        loadConfiguration.setAppContext(context);
        return loadConfiguration;
    }

    public static PublicClientApplicationConfiguration initializeConfiguration(Context context, int i2) {
        return initializeConfigurationInternal(context, loadConfiguration(context, i2));
    }

    public static PublicClientApplicationConfiguration initializeConfiguration(Context context, File file) {
        MsalUtils.validateNonNullArgument(file, "configFile");
        return initializeConfigurationInternal(context, loadConfiguration(file));
    }

    public static PublicClientApplicationConfiguration loadConfiguration(File file) {
        try {
            return loadConfiguration((InputStream) new FileInputStream(file), false);
        } catch (FileNotFoundException unused) {
            StringBuilder a = a.a("Provided configuration file path=");
            a.append(file.getPath());
            a.append(" not found.");
            throw new IllegalArgumentException(a.toString());
        }
    }

    public static PublicClientApplicationConfiguration loadConfiguration(InputStream inputStream, boolean z) {
        try {
            byte[] bArr = new byte[inputStream.available()];
            inputStream.read(bArr);
            try {
                inputStream.close();
            } catch (IOException unused) {
                if (z) {
                    a.c(new StringBuilder(), TAG, "loadConfiguration", "Unable to close default configuration file. This can cause memory leak.");
                } else {
                    a.c(new StringBuilder(), TAG, "loadConfiguration", "Unable to close provided configuration file. This can cause memory leak.");
                }
            }
            Class cls = PublicClientApplicationConfiguration.class;
            return (PublicClientApplicationConfiguration) t.a(cls).cast(getGsonForLoadingConfiguration().a(new String(bArr), (Type) cls));
        } catch (IOException e2) {
            if (z) {
                throw new IllegalStateException("Unable to open default configuration file.", e2);
            }
            throw new IllegalArgumentException("Unable to open provided configuration file.", e2);
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
                if (z) {
                    a.c(new StringBuilder(), TAG, "loadConfiguration", "Unable to close default configuration file. This can cause memory leak.");
                } else {
                    a.c(new StringBuilder(), TAG, "loadConfiguration", "Unable to close provided configuration file. This can cause memory leak.");
                }
            }
            throw th;
        }
    }
}
