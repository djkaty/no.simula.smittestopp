package d.o;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import com.microsoft.identity.client.claims.RequestedClaimAdditionalInformation;
import d.v.a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class w {
    public final Map<String, Object> a;
    public final a.b b;

    public class a implements a.b {
        public a() {
        }

        public Bundle a() {
            Set<String> keySet = w.this.a.keySet();
            ArrayList arrayList = new ArrayList(keySet.size());
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            for (String next : keySet) {
                arrayList.add(next);
                arrayList2.add(w.this.a.get(next));
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList(RequestedClaimAdditionalInformation.SerializedNames.VALUES, arrayList2);
            return bundle;
        }
    }

    static {
        Class cls = Boolean.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        Class cls4 = Long.TYPE;
        Class<Binder> cls5 = Binder.class;
        Class<Bundle> cls6 = Bundle.class;
        Class cls7 = Byte.TYPE;
        Class cls8 = Character.TYPE;
        Class<CharSequence> cls9 = CharSequence.class;
        Class<CharSequence[]> cls10 = CharSequence[].class;
        Class<ArrayList> cls11 = ArrayList.class;
        Class cls12 = Float.TYPE;
        Class<Parcelable> cls13 = Parcelable.class;
        Class<Parcelable[]> cls14 = Parcelable[].class;
        Class<Serializable> cls15 = Serializable.class;
        Class cls16 = Short.TYPE;
        Class<SparseArray> cls17 = SparseArray.class;
        Class<Size> cls18 = Size.class;
        Class<SizeF> cls19 = SizeF.class;
    }

    public w(Map<String, Object> map) {
        new HashMap();
        this.b = new a();
        this.a = new HashMap(map);
    }

    public static w a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new w();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new w(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(RequestedClaimAdditionalInformation.SerializedNames.VALUES);
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
            hashMap.put((String) parcelableArrayList.get(i2), parcelableArrayList2.get(i2));
        }
        return new w(hashMap);
    }

    public w() {
        new HashMap();
        this.b = new a();
        this.a = new HashMap();
    }
}
