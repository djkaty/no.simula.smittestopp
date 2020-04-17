package com.microsoft.identity.common.internal.controllers;

import android.content.Intent;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;

public class InteractiveTokenCommand extends TokenCommand {
    public static final String TAG = "InteractiveTokenCommand";

    public InteractiveTokenCommand(AcquireTokenOperationParameters acquireTokenOperationParameters, BaseController baseController, CommandCallback commandCallback) {
        super((OperationParameters) acquireTokenOperationParameters, baseController, commandCallback);
    }

    public int getCommandNameHashCode() {
        return TAG.hashCode();
    }

    public void notify(int i2, int i3, Intent intent) {
        getDefaultController().completeAcquireToken(i2, i3, intent);
    }

    public AcquireTokenResult execute() {
        if (getParameters() instanceof AcquireTokenOperationParameters) {
            Logger.info(TAG + ":execute", "Executing interactive token command...");
            return getDefaultController().acquireToken((AcquireTokenOperationParameters) getParameters());
        }
        throw new IllegalArgumentException("Invalid operation parameters");
    }
}
