package com.microsoft.identity.client;

public class CurrentAccountResult implements ICurrentAccountResult {
    public boolean mChanged;
    public IAccount mCurrentAccount;
    public IAccount mPriorAccount;

    public CurrentAccountResult(IAccount iAccount, IAccount iAccount2, boolean z) {
        this.mCurrentAccount = iAccount;
        this.mPriorAccount = iAccount2;
        this.mChanged = z;
    }

    public boolean didAccountChange() {
        return this.mChanged;
    }

    public IAccount getCurrentAccount() {
        return this.mCurrentAccount;
    }

    public IAccount getPriorAccount() {
        return this.mPriorAccount;
    }
}
