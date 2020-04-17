package com.microsoft.identity.common.internal.controllers;

import com.microsoft.identity.common.internal.request.OperationParameters;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseCommand<T> implements Command<T> {
    public CommandCallback mCallback;
    public List<BaseController> mControllers;
    public OperationParameters mParameters;
    public String mPublicApiId;

    public BaseCommand(OperationParameters operationParameters, BaseController baseController, CommandCallback commandCallback) {
        this.mParameters = operationParameters;
        ArrayList arrayList = new ArrayList();
        this.mControllers = arrayList;
        this.mCallback = commandCallback;
        arrayList.add(baseController);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BaseCommand)) {
            return false;
        }
        return this.mParameters.equals(((BaseCommand) obj).mParameters);
    }

    public abstract T execute();

    public CommandCallback getCallback() {
        return this.mCallback;
    }

    public abstract int getCommandNameHashCode();

    public List<BaseController> getControllers() {
        return this.mControllers;
    }

    public BaseController getDefaultController() {
        return this.mControllers.get(0);
    }

    public OperationParameters getParameters() {
        return this.mParameters;
    }

    public String getPublicApiId() {
        return this.mPublicApiId;
    }

    public int hashCode() {
        return this.mParameters.hashCode() + (getCommandNameHashCode() * 31);
    }

    public boolean isEligibleForCaching() {
        return false;
    }

    public void setCallback(CommandCallback commandCallback) {
        this.mCallback = commandCallback;
    }

    public void setControllers(List<BaseController> list) {
        this.mControllers = list;
    }

    public void setParameters(OperationParameters operationParameters) {
        this.mParameters = operationParameters;
    }

    public void setPublicApiId(String str) {
        this.mPublicApiId = str;
    }

    public BaseCommand(OperationParameters operationParameters, List<BaseController> list, CommandCallback commandCallback) {
        this.mParameters = operationParameters;
        this.mControllers = list;
        this.mCallback = commandCallback;
    }
}
