package com.microsoft.identity.client.claims;

import com.microsoft.identity.client.claims.RequestedClaimAdditionalInformation;
import e.c.c.g;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import e.c.c.p;
import e.c.c.q;
import e.c.c.r;
import java.lang.reflect.Type;

public class RequestClaimAdditionalInformationSerializer implements r<RequestedClaimAdditionalInformation> {
    public j serialize(RequestedClaimAdditionalInformation requestedClaimAdditionalInformation, Type type, q qVar) {
        m mVar = new m();
        mVar.a(RequestedClaimAdditionalInformation.SerializedNames.ESSENTIAL, mVar.a((Object) requestedClaimAdditionalInformation.getEssential()));
        if (requestedClaimAdditionalInformation.getValue() != null) {
            mVar.a("value", mVar.a((Object) requestedClaimAdditionalInformation.getValue().toString()));
        }
        if (requestedClaimAdditionalInformation.getValues().size() > 0) {
            g gVar = new g();
            for (Object obj : requestedClaimAdditionalInformation.getValues()) {
                String obj2 = obj.toString();
                gVar.x.add(obj2 == null ? l.a : new p(obj2));
            }
            mVar.a(RequestedClaimAdditionalInformation.SerializedNames.VALUES, (j) gVar);
        }
        return mVar;
    }
}
