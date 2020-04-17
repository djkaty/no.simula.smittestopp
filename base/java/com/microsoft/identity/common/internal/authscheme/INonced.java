package com.microsoft.identity.common.internal.authscheme;

import java.io.Serializable;

public interface INonced extends Serializable {
    String getNonce();
}
