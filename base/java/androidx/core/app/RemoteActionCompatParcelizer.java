package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import d.z.a;
import d.z.b;
import d.z.c;

public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        Object obj = remoteActionCompat.a;
        if (aVar.a(1)) {
            obj = aVar.c();
        }
        remoteActionCompat.a = (IconCompat) obj;
        remoteActionCompat.b = aVar.a(remoteActionCompat.b, 2);
        remoteActionCompat.f51c = aVar.a(remoteActionCompat.f51c, 3);
        remoteActionCompat.f52d = (PendingIntent) aVar.a(remoteActionCompat.f52d, 4);
        remoteActionCompat.f53e = aVar.a(remoteActionCompat.f53e, 5);
        remoteActionCompat.f54f = aVar.a(remoteActionCompat.f54f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) {
        if (aVar != null) {
            IconCompat iconCompat = remoteActionCompat.a;
            aVar.b(1);
            aVar.a((c) iconCompat);
            CharSequence charSequence = remoteActionCompat.b;
            aVar.b(2);
            b bVar = (b) aVar;
            TextUtils.writeToParcel(charSequence, bVar.f1041e, 0);
            CharSequence charSequence2 = remoteActionCompat.f51c;
            aVar.b(3);
            TextUtils.writeToParcel(charSequence2, bVar.f1041e, 0);
            aVar.b((Parcelable) remoteActionCompat.f52d, 4);
            boolean z = remoteActionCompat.f53e;
            aVar.b(5);
            bVar.f1041e.writeInt(z ? 1 : 0);
            boolean z2 = remoteActionCompat.f54f;
            aVar.b(6);
            bVar.f1041e.writeInt(z2 ? 1 : 0);
            return;
        }
        throw null;
    }
}
