package com.microsoft.identity.client;

public interface ICurrentAccountResult {
    boolean didAccountChange();

    IAccount getCurrentAccount();

    IAccount getPriorAccount();
}
