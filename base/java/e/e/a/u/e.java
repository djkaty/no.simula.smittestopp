package e.e.a.u;

import e.a.a.a.a;
import java.text.ParseException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public enum e {
    SIGN("sign"),
    VERIFY("verify"),
    ENCRYPT("encrypt"),
    DECRYPT("decrypt"),
    WRAP_KEY("wrapKey"),
    UNWRAP_KEY("unwrapKey"),
    DERIVE_KEY("deriveKey"),
    DERIVE_BITS("deriveBits");
    
    public final String identifier;

    /* access modifiers changed from: public */
    e(String str) {
        if (str != null) {
            this.identifier = str;
            return;
        }
        throw new IllegalArgumentException("The key operation identifier must not be null");
    }

    public static Set<e> parse(List<String> list) {
        e eVar;
        if (list == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String next : list) {
            if (next != null) {
                e[] values = values();
                int length = values.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        eVar = null;
                        break;
                    }
                    eVar = values[i2];
                    if (next.equals(eVar.identifier())) {
                        break;
                    }
                    i2++;
                }
                if (eVar != null) {
                    linkedHashSet.add(eVar);
                } else {
                    throw new ParseException(a.b("Invalid JWK operation: ", next), 0);
                }
            }
        }
        return linkedHashSet;
    }

    public String identifier() {
        return this.identifier;
    }

    public String toString() {
        return identifier();
    }
}
