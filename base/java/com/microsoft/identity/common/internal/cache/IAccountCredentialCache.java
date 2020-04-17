package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import java.util.List;

public interface IAccountCredentialCache {
    void clearAll();

    AccountRecord getAccount(String str);

    List<AccountRecord> getAccounts();

    List<AccountRecord> getAccountsFilteredBy(String str, String str2, String str3);

    Credential getCredential(String str);

    List<Credential> getCredentials();

    List<Credential> getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6);

    boolean removeAccount(AccountRecord accountRecord);

    boolean removeCredential(Credential credential);

    void saveAccount(AccountRecord accountRecord);

    void saveCredential(Credential credential);
}
