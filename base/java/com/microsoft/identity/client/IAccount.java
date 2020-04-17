package com.microsoft.identity.client;

import java.io.Serializable;

public interface IAccount extends Serializable, IClaimable {
    String getAuthority();

    String getId();
}
