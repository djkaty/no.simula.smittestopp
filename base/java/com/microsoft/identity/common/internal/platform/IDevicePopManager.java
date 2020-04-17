package com.microsoft.identity.common.internal.platform;

import android.content.Context;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.controllers.TaskCompletedCallbackWithError;
import java.net.URL;

public interface IDevicePopManager {
    boolean asymmetricKeyExists();

    boolean asymmetricKeyExists(String str);

    boolean clearAsymmetricKey();

    String generateAsymmetricKey(Context context);

    void generateAsymmetricKey(Context context, TaskCompletedCallbackWithError<String, ClientException> taskCompletedCallbackWithError);

    String getAsymmetricKeyThumbprint();

    String getRequestConfirmation();

    void getRequestConfirmation(TaskCompletedCallbackWithError<String, ClientException> taskCompletedCallbackWithError);

    String mintSignedAccessToken(String str, URL url, String str2, String str3);
}
