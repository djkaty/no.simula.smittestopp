package k.a.b.a.b.k;

import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.f;

public enum y {
    LINK_DETACH("link-detach"),
    SESSION_END("session-end"),
    CONNECTION_CLOSE("connection-close"),
    NEVER("never");
    
    public static final Map<f, y> _map = null;
    public f _policy;

    /* access modifiers changed from: public */
    static {
        HashMap hashMap = new HashMap();
        _map = hashMap;
        hashMap.put(LINK_DETACH.getPolicy(), LINK_DETACH);
        _map.put(SESSION_END.getPolicy(), SESSION_END);
        _map.put(CONNECTION_CLOSE.getPolicy(), CONNECTION_CLOSE);
        _map.put(NEVER.getPolicy(), NEVER);
    }

    /* access modifiers changed from: public */
    y(String str) {
        this._policy = f.a(str);
    }

    public f getPolicy() {
        return this._policy;
    }

    public static y valueOf(f fVar) {
        y yVar = _map.get(fVar);
        if (yVar != null) {
            return yVar;
        }
        throw new IllegalArgumentException("Unknown TerminusExpiryPolicy: " + fVar);
    }
}
