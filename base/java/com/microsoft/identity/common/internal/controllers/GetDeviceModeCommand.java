package com.microsoft.identity.common.internal.controllers;

import com.microsoft.identity.common.internal.request.OperationParameters;

public class GetDeviceModeCommand extends BaseCommand<Boolean> {
    public static final String TAG = "GetDeviceModeCommand";

    public GetDeviceModeCommand(OperationParameters operationParameters, BaseController baseController, CommandCallback commandCallback) {
        super(operationParameters, baseController, commandCallback);
    }

    public int getCommandNameHashCode() {
        return TAG.hashCode();
    }

    public Boolean execute() {
        return Boolean.valueOf(getDefaultController().getDeviceMode(getParameters()));
    }
}
