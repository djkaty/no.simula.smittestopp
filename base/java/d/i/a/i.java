package d.i.a;

import android.os.Bundle;

public class i {
    public static final Object a = new Object();

    public static Bundle a(e eVar) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putInt("icon", eVar.f543i);
        bundle2.putCharSequence("title", eVar.f544j);
        bundle2.putParcelable("actionIntent", eVar.f545k);
        if (eVar.a != null) {
            bundle = new Bundle(eVar.a);
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", eVar.f539e);
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", a(eVar.f537c));
        bundle2.putBoolean("showsUserInterface", eVar.f540f);
        bundle2.putInt("semanticAction", eVar.f541g);
        return bundle2;
    }

    public static Bundle[] a(j[] jVarArr) {
        if (jVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[jVarArr.length];
        if (jVarArr.length <= 0) {
            return bundleArr;
        }
        j jVar = jVarArr[0];
        new Bundle();
        throw null;
    }
}
