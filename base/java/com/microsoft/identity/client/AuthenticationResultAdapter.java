package com.microsoft.identity.client;

import com.microsoft.identity.client.exception.MsalDeclinedScopeException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.result.ILocalAuthenticationResult;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class AuthenticationResultAdapter {
    public static final String TAG = "com.microsoft.identity.client.AuthenticationResultAdapter";

    public static IAuthenticationResult adapt(ILocalAuthenticationResult iLocalAuthenticationResult) {
        return new AuthenticationResult(iLocalAuthenticationResult.getCacheRecordWithTenantProfileData());
    }

    public static MsalDeclinedScopeException declinedScopeExceptionFromResult(ILocalAuthenticationResult iLocalAuthenticationResult, List<String> list, TokenParameters tokenParameters) {
        AcquireTokenSilentParameters acquireTokenSilentParameters;
        List asList = Arrays.asList(iLocalAuthenticationResult.getScope());
        String a = a.a(new StringBuilder(), TAG, ":declinedScopeExceptionFromResult");
        StringBuilder a2 = a.a("Returning DeclinedScopeException as not all requested scopes are granted, Requested scopes: ");
        a2.append(tokenParameters.getScopes().toString());
        a2.append(" Granted scopes:");
        a2.append(asList.toString());
        Logger.warn(a, a2.toString());
        if (tokenParameters instanceof AcquireTokenSilentParameters) {
            acquireTokenSilentParameters = (AcquireTokenSilentParameters) tokenParameters;
        } else {
            acquireTokenSilentParameters = TokenParametersAdapter.silentParametersFromInteractive((AcquireTokenParameters) tokenParameters, iLocalAuthenticationResult);
        }
        acquireTokenSilentParameters.setScopes(asList);
        return new MsalDeclinedScopeException(asList, list, acquireTokenSilentParameters);
    }

    public static List<String> getDeclinedScopes(List<String> list, List<String> list2) {
        HashSet hashSet = new HashSet();
        for (String lowerCase : list) {
            hashSet.add(lowerCase.toLowerCase());
        }
        HashSet hashSet2 = new HashSet();
        for (String lowerCase2 : list2) {
            hashSet2.add(lowerCase2.toLowerCase());
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!hashSet.contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
