package com.microsoft.identity.common.internal.controllers;

import android.content.Intent;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.UiRequiredException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import java.util.List;

public class TokenCommand extends BaseCommand<AcquireTokenResult> implements TokenOperation {
    public static final String TAG = "TokenCommand";

    public TokenCommand(OperationParameters operationParameters, BaseController baseController, CommandCallback commandCallback) {
        super(operationParameters, baseController, commandCallback);
    }

    public int getCommandNameHashCode() {
        return TAG.hashCode();
    }

    public boolean isEligibleForCaching() {
        return false;
    }

    public void notify(int i2, int i3, Intent intent) {
        throw new UnsupportedOperationException();
    }

    public TokenCommand(OperationParameters operationParameters, List<BaseController> list, CommandCallback commandCallback) {
        super(operationParameters, list, commandCallback);
    }

    public AcquireTokenResult execute() {
        AcquireTokenResult acquireTokenResult = null;
        int i2 = 0;
        while (i2 < getControllers().size()) {
            BaseController baseController = getControllers().get(i2);
            try {
                Logger.verbose(TAG + ":execute", "Executing with controller: " + baseController.getClass().getSimpleName());
                acquireTokenResult = baseController.acquireTokenSilent((AcquireTokenSilentOperationParameters) getParameters());
                if (acquireTokenResult.getSucceeded().booleanValue()) {
                    Logger.verbose(TAG + ":execute", "Executing with controller: " + baseController.getClass().getSimpleName() + ": Succeeded");
                    return acquireTokenResult;
                }
                i2++;
            } catch (ClientException | UiRequiredException e2) {
                if ((!e2.getErrorCode().equals("invalid_grant") || getControllers().size() <= i2 + 1) && ((!e2.getErrorCode().equals("no_tokens_found") && !e2.getErrorCode().equals("no_account_found")) || getControllers().size() <= i2 + 1)) {
                    throw e2;
                }
            }
        }
        return acquireTokenResult;
    }
}
