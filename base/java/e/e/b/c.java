package e.e.b;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftIdToken;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsIdToken;
import i.a.b.d;
import i.a.b.i;
import java.io.Serializable;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class c implements Serializable {
    public final Map<String, Object> x;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(MicrosoftIdToken.ISSUER);
        hashSet.add("sub");
        hashSet.add(MicrosoftIdToken.AUDIENCE);
        hashSet.add(MicrosoftStsIdToken.EXPIRATION_TIME);
        hashSet.add(MicrosoftIdToken.NOT_BEFORE);
        hashSet.add(MicrosoftIdToken.ISSUED_AT);
        hashSet.add("jti");
        Collections.unmodifiableSet(hashSet);
    }

    public /* synthetic */ c(Map map, a aVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.x = linkedHashMap;
        linkedHashMap.putAll(map);
    }

    public static c a(d dVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : dVar.keySet()) {
            if (str.equals(MicrosoftIdToken.ISSUER)) {
                linkedHashMap.put(MicrosoftIdToken.ISSUER, e.c.a.a.b.l.c.d(dVar, MicrosoftIdToken.ISSUER));
            } else if (str.equals("sub")) {
                linkedHashMap.put("sub", e.c.a.a.b.l.c.d(dVar, "sub"));
            } else if (str.equals(MicrosoftIdToken.AUDIENCE)) {
                Object obj = dVar.get(MicrosoftIdToken.AUDIENCE);
                if (obj instanceof String) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(e.c.a.a.b.l.c.d(dVar, MicrosoftIdToken.AUDIENCE));
                    linkedHashMap.put(MicrosoftIdToken.AUDIENCE, arrayList);
                } else if (obj instanceof List) {
                    linkedHashMap.put(MicrosoftIdToken.AUDIENCE, e.c.a.a.b.l.c.e(dVar, MicrosoftIdToken.AUDIENCE));
                } else if (obj == null) {
                    linkedHashMap.put(MicrosoftIdToken.AUDIENCE, (Object) null);
                }
            } else if (str.equals(MicrosoftStsIdToken.EXPIRATION_TIME)) {
                linkedHashMap.put(MicrosoftStsIdToken.EXPIRATION_TIME, new Date(e.c.a.a.b.l.c.c(dVar, MicrosoftStsIdToken.EXPIRATION_TIME) * 1000));
            } else if (str.equals(MicrosoftIdToken.NOT_BEFORE)) {
                linkedHashMap.put(MicrosoftIdToken.NOT_BEFORE, new Date(e.c.a.a.b.l.c.c(dVar, MicrosoftIdToken.NOT_BEFORE) * 1000));
            } else if (str.equals(MicrosoftIdToken.ISSUED_AT)) {
                linkedHashMap.put(MicrosoftIdToken.ISSUED_AT, new Date(e.c.a.a.b.l.c.c(dVar, MicrosoftIdToken.ISSUED_AT) * 1000));
            } else if (str.equals("jti")) {
                linkedHashMap.put("jti", e.c.a.a.b.l.c.d(dVar, "jti"));
            } else {
                linkedHashMap.put(str, dVar.get(str));
            }
        }
        return new c(linkedHashMap, (a) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return Objects.equals(this.x, ((c) obj).x);
    }

    public int hashCode() {
        return Objects.hash(new Object[]{this.x});
    }

    public String toString() {
        return d.a((Map<String, ? extends Object>) a(), i.a);
    }

    public List<String> a(String str) {
        String[] strArr;
        if (this.x.get(str) == null) {
            strArr = null;
        } else {
            try {
                List list = (List) this.x.get(str);
                int size = list.size();
                strArr = new String[size];
                int i2 = 0;
                while (i2 < size) {
                    try {
                        strArr[i2] = (String) list.get(i2);
                        i2++;
                    } catch (ClassCastException unused) {
                        throw new ParseException(e.a.a.a.a.a("The \"", str, "\" claim is not a list / JSON array of strings"), 0);
                    }
                }
            } catch (ClassCastException unused2) {
                throw new ParseException(e.a.a.a.a.a("The \"", str, "\" claim is not a list / JSON array"), 0);
            }
        }
        if (strArr == null) {
            return null;
        }
        return Collections.unmodifiableList(Arrays.asList(strArr));
    }

    public d a() {
        List<T> list;
        d dVar = new d();
        for (Map.Entry next : this.x.entrySet()) {
            if (next.getValue() instanceof Date) {
                dVar.put(next.getKey(), Long.valueOf(((Date) next.getValue()).getTime() / 1000));
            } else if (MicrosoftIdToken.AUDIENCE.equals(next.getKey())) {
                Object obj = this.x.get(MicrosoftIdToken.AUDIENCE);
                if (obj instanceof String) {
                    list = Collections.singletonList((String) obj);
                } else {
                    try {
                        List<String> a2 = a(MicrosoftIdToken.AUDIENCE);
                        list = a2 != null ? Collections.unmodifiableList(a2) : Collections.emptyList();
                    } catch (ParseException unused) {
                        list = Collections.emptyList();
                    }
                }
                if (list != null && !list.isEmpty()) {
                    if (list.size() == 1) {
                        dVar.put(MicrosoftIdToken.AUDIENCE, list.get(0));
                    } else {
                        i.a.b.a aVar = new i.a.b.a();
                        aVar.addAll(list);
                        dVar.put(MicrosoftIdToken.AUDIENCE, aVar);
                    }
                }
            } else if (next.getValue() != null) {
                dVar.put(next.getKey(), next.getValue());
            }
        }
        return dVar;
    }
}
