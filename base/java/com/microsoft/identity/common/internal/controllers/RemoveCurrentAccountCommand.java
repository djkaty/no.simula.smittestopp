package com.microsoft.identity.common.internal.controllers;

import com.microsoft.identity.common.internal.request.OperationParameters;

public class RemoveCurrentAccountCommand extends BaseCommand<Boolean> {
    public static final String TAG = "RemoveCurrentAccountCommand";

    public RemoveCurrentAccountCommand(OperationParameters operationParameters, BaseController baseController, CommandCallback commandCallback) {
        super(operationParameters, baseController, commandCallback);
    }

    public int getCommandNameHashCode() {
        return TAG.hashCode();
    }

    public Boolean execute() {
        return Boolean.valueOf(getDefaultController().removeCurrentAccount(getParameters()));
    }
}
