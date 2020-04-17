package d.s;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.navigation.common.R$styleable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class i {
    public String A;
    public CharSequence B;
    public ArrayList<h> C;
    public d.f.i<c> D;
    public HashMap<String, d> E;
    public final String x;
    public j y;
    public int z;

    public static class a implements Comparable<a> {
        public final i x;
        public final Bundle y;
        public final boolean z;

        public a(i iVar, Bundle bundle, boolean z2) {
            this.x = iVar;
            this.y = bundle;
            this.z = z2;
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            if (this.z && !aVar.z) {
                return 1;
            }
            if (this.z || !aVar.z) {
                return this.y.size() - aVar.y.size();
            }
            return -1;
        }
    }

    static {
        new HashMap();
    }

    public i(p<? extends i> pVar) {
        this.x = q.a((Class<? extends p>) pVar.getClass());
    }

    public static String a(Context context, int i2) {
        if (i2 <= 16777215) {
            return Integer.toString(i2);
        }
        try {
            return context.getResources().getResourceName(i2);
        } catch (Resources.NotFoundException unused) {
            return Integer.toString(i2);
        }
    }

    public boolean a() {
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        String str = this.A;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(this.z));
        } else {
            sb.append(str);
        }
        sb.append(")");
        if (this.B != null) {
            sb.append(" label=");
            sb.append(this.B);
        }
        return sb.toString();
    }

    public void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.Navigator);
        int resourceId = obtainAttributes.getResourceId(R$styleable.Navigator_android_id, 0);
        this.z = resourceId;
        this.A = null;
        this.A = a(context, resourceId);
        this.B = obtainAttributes.getText(R$styleable.Navigator_android_label);
        obtainAttributes.recycle();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v0, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v4, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v6, resolved type: java.util.regex.Matcher} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v5, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v2, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v7, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v6, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v7, resolved type: java.util.regex.Matcher} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v13, resolved type: android.os.Bundle} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v16, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v9, resolved type: java.util.regex.Matcher} */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00d9, code lost:
        if (r2 != false) goto L_0x00db;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0109 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d.s.i.a a(android.net.Uri r17) {
        /*
            r16 = this;
            r0 = r16
            java.util.ArrayList<d.s.h> r1 = r0.C
            r2 = 0
            if (r1 != 0) goto L_0x0008
            return r2
        L_0x0008:
            java.util.Iterator r1 = r1.iterator()
            r3 = r2
        L_0x000d:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L_0x010c
            java.lang.Object r4 = r1.next()
            d.s.h r4 = (d.s.h) r4
            java.util.HashMap<java.lang.String, d.s.d> r5 = r0.E
            if (r5 != 0) goto L_0x0022
            java.util.Map r5 = java.util.Collections.emptyMap()
            goto L_0x0026
        L_0x0022:
            java.util.Map r5 = java.util.Collections.unmodifiableMap(r5)
        L_0x0026:
            java.util.regex.Pattern r6 = r4.b
            java.lang.String r7 = r17.toString()
            java.util.regex.Matcher r6 = r6.matcher(r7)
            boolean r7 = r6.matches()
            if (r7 != 0) goto L_0x003b
        L_0x0036:
            r11 = r17
        L_0x0038:
            r7 = r2
            goto L_0x00f7
        L_0x003b:
            android.os.Bundle r7 = new android.os.Bundle
            r7.<init>()
            java.util.ArrayList<java.lang.String> r8 = r4.a
            int r8 = r8.size()
            r10 = 0
        L_0x0047:
            if (r10 >= r8) goto L_0x0068
            java.util.ArrayList<java.lang.String> r11 = r4.a
            java.lang.Object r11 = r11.get(r10)
            java.lang.String r11 = (java.lang.String) r11
            int r10 = r10 + 1
            java.lang.String r12 = r6.group(r10)
            java.lang.String r12 = android.net.Uri.decode(r12)
            java.lang.Object r13 = r5.get(r11)
            d.s.d r13 = (d.s.d) r13
            boolean r11 = r4.a(r7, r11, r12, r13)
            if (r11 == 0) goto L_0x0047
            goto L_0x0036
        L_0x0068:
            boolean r6 = r4.f736d
            if (r6 == 0) goto L_0x00f5
            java.util.Map<java.lang.String, d.s.h$a> r6 = r4.f737e
            java.util.Set r6 = r6.keySet()
            java.util.Iterator r6 = r6.iterator()
        L_0x0076:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto L_0x00f5
            java.lang.Object r8 = r6.next()
            java.lang.String r8 = (java.lang.String) r8
            java.util.Map<java.lang.String, d.s.h$a> r10 = r4.f737e
            java.lang.Object r10 = r10.get(r8)
            d.s.h$a r10 = (d.s.h.a) r10
            r11 = r17
            java.lang.String r8 = r11.getQueryParameter(r8)
            if (r8 == 0) goto L_0x00a3
            java.lang.String r12 = r10.a
            java.util.regex.Pattern r12 = java.util.regex.Pattern.compile(r12)
            java.util.regex.Matcher r8 = r12.matcher(r8)
            boolean r12 = r8.matches()
            if (r12 != 0) goto L_0x00a4
            goto L_0x0038
        L_0x00a3:
            r8 = r2
        L_0x00a4:
            r12 = 0
        L_0x00a5:
            java.util.ArrayList<java.lang.String> r13 = r10.b
            int r13 = r13.size()
            if (r12 >= r13) goto L_0x0076
            if (r8 == 0) goto L_0x00ba
            int r13 = r12 + 1
            java.lang.String r13 = r8.group(r13)
            java.lang.String r13 = android.net.Uri.decode(r13)
            goto L_0x00bb
        L_0x00ba:
            r13 = r2
        L_0x00bb:
            java.util.ArrayList<java.lang.String> r14 = r10.b
            java.lang.Object r14 = r14.get(r12)
            java.lang.String r14 = (java.lang.String) r14
            java.lang.Object r15 = r5.get(r14)
            d.s.d r15 = (d.s.d) r15
            if (r15 == 0) goto L_0x00e9
            if (r13 == 0) goto L_0x00db
            java.lang.String r2 = "[{}]"
            java.lang.String r9 = ""
            java.lang.String r2 = r13.replaceAll(r2, r9)
            boolean r2 = r2.equals(r14)
            if (r2 == 0) goto L_0x00e9
        L_0x00db:
            java.lang.Object r2 = r15.f731d
            if (r2 == 0) goto L_0x00e4
            java.lang.String r13 = r2.toString()
            goto L_0x00e9
        L_0x00e4:
            boolean r2 = r15.b
            if (r2 == 0) goto L_0x00e9
            r13 = 0
        L_0x00e9:
            boolean r2 = r4.a(r7, r14, r13, r15)
            if (r2 == 0) goto L_0x00f1
            r7 = 0
            goto L_0x00f7
        L_0x00f1:
            int r12 = r12 + 1
            r2 = 0
            goto L_0x00a5
        L_0x00f5:
            r11 = r17
        L_0x00f7:
            if (r7 == 0) goto L_0x0109
            d.s.i$a r2 = new d.s.i$a
            boolean r4 = r4.f735c
            r2.<init>(r0, r7, r4)
            if (r3 == 0) goto L_0x0108
            int r4 = r2.compareTo(r3)
            if (r4 <= 0) goto L_0x0109
        L_0x0108:
            r3 = r2
        L_0x0109:
            r2 = 0
            goto L_0x000d
        L_0x010c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.i.a(android.net.Uri):d.s.i$a");
    }

    public final c a(int i2) {
        c cVar;
        d.f.i<c> iVar = this.D;
        if (iVar == null) {
            cVar = null;
        } else {
            cVar = iVar.b(i2, null);
        }
        if (cVar != null) {
            return cVar;
        }
        j jVar = this.y;
        if (jVar != null) {
            return jVar.a(i2);
        }
        return null;
    }

    public Bundle a(Bundle bundle) {
        HashMap<String, d> hashMap;
        if (bundle == null && ((hashMap = this.E) == null || hashMap.isEmpty())) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        HashMap<String, d> hashMap2 = this.E;
        if (hashMap2 != null) {
            for (Map.Entry next : hashMap2.entrySet()) {
                d dVar = (d) next.getValue();
                String str = (String) next.getKey();
                if (dVar.f730c) {
                    dVar.a.a(bundle2, str, dVar.f731d);
                }
            }
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            HashMap<String, d> hashMap3 = this.E;
            if (hashMap3 != null) {
                for (Map.Entry next2 : hashMap3.entrySet()) {
                    d dVar2 = (d) next2.getValue();
                    String str2 = (String) next2.getKey();
                    boolean z2 = false;
                    if (dVar2.b || !bundle.containsKey(str2) || bundle.get(str2) != null) {
                        try {
                            dVar2.a.a(bundle, str2);
                            z2 = true;
                            continue;
                        } catch (ClassCastException unused) {
                            continue;
                        }
                    }
                    if (!z2) {
                        StringBuilder a2 = e.a.a.a.a.a("Wrong argument type for '");
                        a2.append((String) next2.getKey());
                        a2.append("' in argument bundle. ");
                        a2.append(((d) next2.getValue()).a.a());
                        a2.append(" expected.");
                        throw new IllegalArgumentException(a2.toString());
                    }
                }
            }
        }
        return bundle2;
    }
}
