package com.microsoft.identity.client.claims;

import com.google.gson.internal.bind.TreeTypeAdapter;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import java.lang.reflect.Type;
import java.util.List;

public class ClaimsRequestDeserializer implements i<ClaimsRequest> {
    private void addProperties(List<RequestedClaim> list, m mVar, h hVar) {
        if (mVar != null) {
            for (String next : mVar.a.keySet()) {
                RequestedClaim requestedClaim = new RequestedClaim();
                requestedClaim.setName(next);
                if (!(mVar.a(next) instanceof l)) {
                    requestedClaim.setAdditionalInformation((RequestedClaimAdditionalInformation) ((TreeTypeAdapter.b) hVar).a((j) mVar.b(next), (Type) RequestedClaimAdditionalInformation.class));
                }
                list.add(requestedClaim);
            }
        }
    }

    public ClaimsRequest deserialize(j jVar, Type type, h hVar) {
        ClaimsRequest claimsRequest = new ClaimsRequest();
        addProperties(claimsRequest.getAccessTokenClaimsRequested(), jVar.c().b("access_token"), hVar);
        addProperties(claimsRequest.getIdTokenClaimsRequested(), jVar.c().b("id_token"), hVar);
        addProperties(claimsRequest.getUserInfoClaimsRequested(), jVar.c().b(ClaimsRequest.USERINFO), hVar);
        return claimsRequest;
    }
}
