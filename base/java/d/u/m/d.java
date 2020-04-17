package d.u.m;

import android.database.Cursor;
import com.microsoft.appcenter.ingestion.models.one.SdkExtension;
import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.azure.sdk.iot.deps.serializer.ParserUtility;
import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceOperations;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class d {
    public final String a;
    public final Map<String, a> b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<b> f929c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<C0047d> f930d;

    public static class a {
        public final String a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final int f931c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f932d;

        /* renamed from: e  reason: collision with root package name */
        public final int f933e;

        /* renamed from: f  reason: collision with root package name */
        public final String f934f;

        /* renamed from: g  reason: collision with root package name */
        public final int f935g;

        public a(String str, String str2, boolean z, int i2, String str3, int i3) {
            this.a = str;
            this.b = str2;
            this.f932d = z;
            this.f933e = i2;
            int i4 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i4 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i4 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i4 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.f931c = i4;
            this.f934f = str3;
            this.f935g = i3;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f933e != aVar.f933e || !this.a.equals(aVar.a) || this.f932d != aVar.f932d) {
                return false;
            }
            if (this.f935g == 1 && aVar.f935g == 2 && (str3 = this.f934f) != null && !str3.equals(aVar.f934f)) {
                return false;
            }
            if (this.f935g == 2 && aVar.f935g == 1 && (str2 = aVar.f934f) != null && !str2.equals(this.f934f)) {
                return false;
            }
            int i2 = this.f935g;
            if ((i2 == 0 || i2 != aVar.f935g || ((str = this.f934f) == null ? aVar.f934f == null : str.equals(aVar.f934f))) && this.f931c == aVar.f931c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.a.hashCode() * 31) + this.f931c) * 31) + (this.f932d ? 1231 : 1237)) * 31) + this.f933e;
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("Column{name='");
            e.a.a.a.a.a(a2, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", type='");
            e.a.a.a.a.a(a2, this.b, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", affinity='");
            a2.append(this.f931c);
            a2.append(WWWAuthenticateHeader.SINGLE_QUOTE);
            a2.append(", notNull=");
            a2.append(this.f932d);
            a2.append(", primaryKeyPosition=");
            a2.append(this.f933e);
            a2.append(", defaultValue='");
            a2.append(this.f934f);
            a2.append(WWWAuthenticateHeader.SINGLE_QUOTE);
            a2.append('}');
            return a2.toString();
        }
    }

    public static class b {
        public final String a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final String f936c;

        /* renamed from: d  reason: collision with root package name */
        public final List<String> f937d;

        /* renamed from: e  reason: collision with root package name */
        public final List<String> f938e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.a = str;
            this.b = str2;
            this.f936c = str3;
            this.f937d = Collections.unmodifiableList(list);
            this.f938e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a.equals(bVar.a) && this.b.equals(bVar.b) && this.f936c.equals(bVar.f936c) && this.f937d.equals(bVar.f937d)) {
                return this.f938e.equals(bVar.f938e);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.b.hashCode();
            int hashCode2 = this.f936c.hashCode();
            int hashCode3 = this.f937d.hashCode();
            return this.f938e.hashCode() + ((hashCode3 + ((hashCode2 + ((hashCode + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("ForeignKey{referenceTable='");
            e.a.a.a.a.a(a2, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", onDelete='");
            e.a.a.a.a.a(a2, this.b, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", onUpdate='");
            e.a.a.a.a.a(a2, this.f936c, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", columnNames=");
            a2.append(this.f937d);
            a2.append(", referenceColumnNames=");
            a2.append(this.f938e);
            a2.append('}');
            return a2.toString();
        }
    }

    public static class c implements Comparable<c> {
        public final String A;
        public final int x;
        public final int y;
        public final String z;

        public c(int i2, int i3, String str, String str2) {
            this.x = i2;
            this.y = i3;
            this.z = str;
            this.A = str2;
        }

        public int compareTo(Object obj) {
            c cVar = (c) obj;
            int i2 = this.x - cVar.x;
            return i2 == 0 ? this.y - cVar.y : i2;
        }
    }

    /* renamed from: d.u.m.d$d  reason: collision with other inner class name */
    public static class C0047d {
        public final String a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final List<String> f939c;

        public C0047d(String str, boolean z, List<String> list) {
            this.a = str;
            this.b = z;
            this.f939c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0047d.class != obj.getClass()) {
                return false;
            }
            C0047d dVar = (C0047d) obj;
            if (this.b != dVar.b || !this.f939c.equals(dVar.f939c)) {
                return false;
            }
            if (this.a.startsWith("index_")) {
                return dVar.a.startsWith("index_");
            }
            return this.a.equals(dVar.a);
        }

        public int hashCode() {
            int i2;
            if (this.a.startsWith("index_")) {
                i2 = -1184239155;
            } else {
                i2 = this.a.hashCode();
            }
            return this.f939c.hashCode() + (((i2 * 31) + (this.b ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("Index{name='");
            e.a.a.a.a.a(a2, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", unique=");
            a2.append(this.b);
            a2.append(", columns=");
            a2.append(this.f939c);
            a2.append('}');
            return a2.toString();
        }
    }

    public d(String str, Map<String, a> map, Set<b> set, Set<C0047d> set2) {
        Set<C0047d> set3;
        this.a = str;
        this.b = Collections.unmodifiableMap(map);
        this.f929c = Collections.unmodifiableSet(set);
        if (set2 == null) {
            set3 = null;
        } else {
            set3 = Collections.unmodifiableSet(set2);
        }
        this.f930d = set3;
    }

    public static List<c> a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex(SdkExtension.SEQ);
        int columnIndex3 = cursor.getColumnIndex(ParserUtility.FROM);
        int columnIndex4 = cursor.getColumnIndex(AmqpsDeviceOperations.TO_KEY);
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < count; i2++) {
            cursor.moveToPosition(i2);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public boolean equals(Object obj) {
        Set<C0047d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.a;
        if (str == null ? dVar.a != null : !str.equals(dVar.a)) {
            return false;
        }
        Map<String, a> map = this.b;
        if (map == null ? dVar.b != null : !map.equals(dVar.b)) {
            return false;
        }
        Set<b> set2 = this.f929c;
        if (set2 == null ? dVar.f929c != null : !set2.equals(dVar.f929c)) {
            return false;
        }
        Set<C0047d> set3 = this.f930d;
        if (set3 == null || (set = dVar.f930d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.b;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.f929c;
        if (set != null) {
            i2 = set.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("TableInfo{name='");
        e.a.a.a.a.a(a2, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", columns=");
        a2.append(this.b);
        a2.append(", foreignKeys=");
        a2.append(this.f929c);
        a2.append(", indices=");
        a2.append(this.f930d);
        a2.append('}');
        return a2.toString();
    }

    /* JADX INFO: finally extract failed */
    public static d a(d.w.a.b bVar, String str) {
        int i2;
        int i3;
        List<c> list;
        int i4;
        String str2 = str;
        d.w.a.f.a aVar = (d.w.a.f.a) bVar;
        Cursor a2 = aVar.a(e.a.a.a.a.a("PRAGMA table_info(`", str2, "`)"));
        HashMap hashMap = new HashMap();
        try {
            if (a2.getColumnCount() > 0) {
                int columnIndex = a2.getColumnIndex("name");
                int columnIndex2 = a2.getColumnIndex("type");
                int columnIndex3 = a2.getColumnIndex("notnull");
                int columnIndex4 = a2.getColumnIndex("pk");
                int columnIndex5 = a2.getColumnIndex("dflt_value");
                while (a2.moveToNext()) {
                    String string = a2.getString(columnIndex);
                    int i5 = columnIndex;
                    a aVar2 = r12;
                    a aVar3 = new a(string, a2.getString(columnIndex2), a2.getInt(columnIndex3) != 0, a2.getInt(columnIndex4), a2.getString(columnIndex5), 2);
                    hashMap.put(string, aVar2);
                    columnIndex = i5;
                }
            }
            a2.close();
            HashSet hashSet = new HashSet();
            Cursor a3 = aVar.a("PRAGMA foreign_key_list(`" + str2 + "`)");
            try {
                int columnIndex6 = a3.getColumnIndex("id");
                int columnIndex7 = a3.getColumnIndex(SdkExtension.SEQ);
                int columnIndex8 = a3.getColumnIndex(SR.TABLE);
                int columnIndex9 = a3.getColumnIndex("on_delete");
                int columnIndex10 = a3.getColumnIndex("on_update");
                List<c> a4 = a(a3);
                int count = a3.getCount();
                int i6 = 0;
                while (i6 < count) {
                    a3.moveToPosition(i6);
                    if (a3.getInt(columnIndex7) != 0) {
                        i2 = columnIndex6;
                        i4 = columnIndex7;
                        list = a4;
                        i3 = count;
                    } else {
                        int i7 = a3.getInt(columnIndex6);
                        i2 = columnIndex6;
                        ArrayList arrayList = new ArrayList();
                        i4 = columnIndex7;
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = ((ArrayList) a4).iterator();
                        while (it.hasNext()) {
                            List<c> list2 = a4;
                            c cVar = (c) it.next();
                            int i8 = count;
                            if (cVar.x == i7) {
                                arrayList.add(cVar.z);
                                arrayList2.add(cVar.A);
                            }
                            a4 = list2;
                            count = i8;
                        }
                        list = a4;
                        i3 = count;
                        hashSet.add(new b(a3.getString(columnIndex8), a3.getString(columnIndex9), a3.getString(columnIndex10), arrayList, arrayList2));
                    }
                    i6++;
                    columnIndex6 = i2;
                    columnIndex7 = i4;
                    a4 = list;
                    count = i3;
                }
                a3.close();
                Cursor a5 = aVar.a("PRAGMA index_list(`" + str2 + "`)");
                try {
                    int columnIndex11 = a5.getColumnIndex("name");
                    int columnIndex12 = a5.getColumnIndex("origin");
                    int columnIndex13 = a5.getColumnIndex("unique");
                    HashSet hashSet2 = null;
                    if (columnIndex11 != -1 && columnIndex12 != -1) {
                        if (columnIndex13 != -1) {
                            HashSet hashSet3 = new HashSet();
                            while (a5.moveToNext()) {
                                if (UserIdContext.CUSTOM_PREFIX.equals(a5.getString(columnIndex12))) {
                                    C0047d a6 = a(aVar, a5.getString(columnIndex11), a5.getInt(columnIndex13) == 1);
                                    if (a6 != null) {
                                        hashSet3.add(a6);
                                    }
                                }
                            }
                            a5.close();
                            hashSet2 = hashSet3;
                            return new d(str2, hashMap, hashSet, hashSet2);
                        }
                    }
                    return new d(str2, hashMap, hashSet, hashSet2);
                } finally {
                    a5.close();
                }
            } catch (Throwable th) {
                a3.close();
                throw th;
            }
        } catch (Throwable th2) {
            a2.close();
            throw th2;
        }
    }

    public static C0047d a(d.w.a.b bVar, String str, boolean z) {
        Cursor a2 = ((d.w.a.f.a) bVar).a(e.a.a.a.a.a("PRAGMA index_xinfo(`", str, "`)"));
        try {
            int columnIndex = a2.getColumnIndex("seqno");
            int columnIndex2 = a2.getColumnIndex("cid");
            int columnIndex3 = a2.getColumnIndex("name");
            if (!(columnIndex == -1 || columnIndex2 == -1)) {
                if (columnIndex3 != -1) {
                    TreeMap treeMap = new TreeMap();
                    while (a2.moveToNext()) {
                        if (a2.getInt(columnIndex2) >= 0) {
                            int i2 = a2.getInt(columnIndex);
                            treeMap.put(Integer.valueOf(i2), a2.getString(columnIndex3));
                        }
                    }
                    ArrayList arrayList = new ArrayList(treeMap.size());
                    arrayList.addAll(treeMap.values());
                    C0047d dVar = new C0047d(str, z, arrayList);
                    a2.close();
                    return dVar;
                }
            }
            return null;
        } finally {
            a2.close();
        }
    }
}
