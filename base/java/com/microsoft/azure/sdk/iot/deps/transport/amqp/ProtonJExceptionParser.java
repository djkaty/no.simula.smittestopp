package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import k.a.b.a.b.n.j;
import k.a.b.a.d.f;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.h;

public class ProtonJExceptionParser {
    public static final String DEFAULT_ERROR_DESCRIPTION = "NoErrorDescription";
    public String error;
    public String errorDescription;

    public ProtonJExceptionParser(h hVar) {
        g gVar = (g) hVar;
        getTransportExceptionFromProtonEndpoints(gVar.o(), gVar.i(), gVar.U(), gVar.l(), gVar.T(), gVar.G());
    }

    private j getErrorConditionFromEndpoint(f fVar) {
        return (fVar.L() == null || fVar.L().a == null) ? fVar.H() : fVar.L();
    }

    private void getTransportExceptionFromProtonEndpoints(f... fVarArr) {
        j errorConditionFromEndpoint;
        k.a.b.a.b.f fVar;
        for (f fVar2 : fVarArr) {
            if (!(fVar2 == null || (errorConditionFromEndpoint = getErrorConditionFromEndpoint(fVar2)) == null || (fVar = errorConditionFromEndpoint.a) == null)) {
                this.error = fVar.x;
                String str = errorConditionFromEndpoint.b;
                if (str != null) {
                    this.errorDescription = str;
                } else {
                    this.errorDescription = DEFAULT_ERROR_DESCRIPTION;
                }
            }
        }
    }

    public String getError() {
        return this.error;
    }

    public String getErrorDescription() {
        return this.errorDescription;
    }
}
