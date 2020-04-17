package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import d.f.a;
import e.c.a.a.b.i.k.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;
import java.util.WeakHashMap;

public final class zzc extends Fragment implements e {
    public Map<String, LifecycleCallback> x = new a();

    static {
        new WeakHashMap();
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.x.values()) {
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }

    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        for (LifecycleCallback lifecycleCallback : this.x.values()) {
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        for (Map.Entry next : this.x.entrySet()) {
            LifecycleCallback lifecycleCallback = (LifecycleCallback) next.getValue();
            if (bundle != null) {
                bundle.getBundle((String) next.getKey());
                continue;
            }
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }

    public final void onDestroy() {
        super.onDestroy();
        for (LifecycleCallback lifecycleCallback : this.x.values()) {
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }

    public final void onResume() {
        super.onResume();
        for (LifecycleCallback lifecycleCallback : this.x.values()) {
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry next : this.x.entrySet()) {
                Bundle bundle2 = new Bundle();
                if (((LifecycleCallback) next.getValue()) != null) {
                    bundle.putBundle((String) next.getKey(), bundle2);
                } else {
                    throw null;
                }
            }
        }
    }

    public final void onStart() {
        super.onStart();
        for (LifecycleCallback lifecycleCallback : this.x.values()) {
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }

    public final void onStop() {
        super.onStop();
        for (LifecycleCallback lifecycleCallback : this.x.values()) {
            if (lifecycleCallback == null) {
                throw null;
            }
        }
    }
}
