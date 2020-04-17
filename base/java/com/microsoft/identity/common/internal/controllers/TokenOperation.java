package com.microsoft.identity.common.internal.controllers;

import android.content.Intent;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;

public interface TokenOperation {
    AcquireTokenResult execute();

    void notify(int i2, int i3, Intent intent);
}
