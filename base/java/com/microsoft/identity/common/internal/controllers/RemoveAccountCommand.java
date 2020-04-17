package com.microsoft.identity.common.internal.controllers;

import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.OperationParameters;
import e.a.a.a.a;
import java.util.List;

public class RemoveAccountCommand extends BaseCommand<Boolean> {
    public static final String TAG = "RemoveAccountCommand";

    public RemoveAccountCommand(OperationParameters operationParameters, List<BaseController> list, CommandCallback commandCallback) {
        super(operationParameters, list, commandCallback);
    }

    public int getCommandNameHashCode() {
        return TAG.hashCode();
    }

    public Boolean execute() {
        boolean z = false;
        for (int i2 = 0; i2 < getControllers().size(); i2++) {
            BaseController baseController = getControllers().get(i2);
            String a = a.a(new StringBuilder(), TAG, ":execute");
            StringBuilder a2 = a.a("Executing with controller: ");
            a2.append(baseController.getClass().getSimpleName());
            Logger.verbose(a, a2.toString());
            z = baseController.removeAccount(getParameters());
        }
        return Boolean.valueOf(z);
    }
}
