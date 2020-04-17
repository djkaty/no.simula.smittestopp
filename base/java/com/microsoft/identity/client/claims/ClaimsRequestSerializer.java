package com.microsoft.identity.client.claims;

import com.google.gson.internal.bind.TreeTypeAdapter;
import e.c.c.j;
import e.c.c.m;
import e.c.c.q;
import e.c.c.r;
import java.lang.reflect.Type;
import java.util.List;

public class ClaimsRequestSerializer implements r<ClaimsRequest> {
    public void addPropertiesToObject(List<RequestedClaim> list, m mVar, q qVar) {
        for (RequestedClaim next : list) {
            mVar.a(next.getName(), ((TreeTypeAdapter.b) qVar).a((Object) next.getAdditionalInformation(), (Type) RequestedClaimAdditionalInformation.class));
        }
    }

    public j serialize(ClaimsRequest claimsRequest, Type type, q qVar) {
        m mVar = new m();
        m mVar2 = new m();
        m mVar3 = new m();
        m mVar4 = new m();
        addPropertiesToObject(claimsRequest.getAccessTokenClaimsRequested(), mVar3, qVar);
        addPropertiesToObject(claimsRequest.getIdTokenClaimsRequested(), mVar4, qVar);
        addPropertiesToObject(claimsRequest.getUserInfoClaimsRequested(), mVar2, qVar);
        if (mVar2.a.z != 0) {
            mVar.a(ClaimsRequest.USERINFO, (j) mVar2);
        }
        if (mVar4.a.z != 0) {
            mVar.a("id_token", (j) mVar4);
        }
        if (mVar3.a.z != 0) {
            mVar.a("access_token", (j) mVar3);
        }
        return mVar;
    }
}
