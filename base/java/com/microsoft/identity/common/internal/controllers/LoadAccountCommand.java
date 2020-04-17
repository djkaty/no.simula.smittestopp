package com.microsoft.identity.common.internal.controllers;

import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.OperationParameters;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.List;

public class LoadAccountCommand extends BaseCommand<List<ICacheRecord>> {
    public static final String TAG = "LoadAccountCommand";

    public LoadAccountCommand(OperationParameters operationParameters, BaseController baseController, CommandCallback commandCallback) {
        super(operationParameters, baseController, commandCallback);
    }

    public int getCommandNameHashCode() {
        return TAG.hashCode();
    }

    public LoadAccountCommand(OperationParameters operationParameters, List<BaseController> list, CommandCallback commandCallback) {
        super(operationParameters, list, commandCallback);
    }

    public List<ICacheRecord> execute() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getControllers().size(); i2++) {
            BaseController baseController = getControllers().get(i2);
            String a = a.a(new StringBuilder(), TAG, ":execute");
            StringBuilder a2 = a.a("Executing with controller: ");
            a2.append(baseController.getClass().getSimpleName());
            Logger.verbose(a, a2.toString());
            arrayList.addAll(baseController.getAccounts(getParameters()));
        }
        return arrayList;
    }
}
