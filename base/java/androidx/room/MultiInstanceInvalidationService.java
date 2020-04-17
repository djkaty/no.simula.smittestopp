package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import d.u.c;
import d.u.d;
import java.util.HashMap;

public class MultiInstanceInvalidationService extends Service {
    public final d.a A = new b();
    public int x = 0;
    public final HashMap<Integer, String> y = new HashMap<>();
    public final RemoteCallbackList<c> z = new a();

    public class a extends RemoteCallbackList<c> {
        public a() {
        }

        public void onCallbackDied(IInterface iInterface, Object obj) {
            c cVar = (c) iInterface;
            MultiInstanceInvalidationService.this.y.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    public IBinder onBind(Intent intent) {
        return this.A;
    }

    public class b extends d.a {
        public b() {
        }

        public int a(c cVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.z) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i2 = multiInstanceInvalidationService.x + 1;
                multiInstanceInvalidationService.x = i2;
                if (MultiInstanceInvalidationService.this.z.register(cVar, Integer.valueOf(i2))) {
                    MultiInstanceInvalidationService.this.y.put(Integer.valueOf(i2), str);
                    return i2;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.x--;
                return 0;
            }
        }

        public void a(c cVar, int i2) {
            synchronized (MultiInstanceInvalidationService.this.z) {
                MultiInstanceInvalidationService.this.z.unregister(cVar);
                MultiInstanceInvalidationService.this.y.remove(Integer.valueOf(i2));
            }
        }

        public void a(int i2, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.z) {
                String str = MultiInstanceInvalidationService.this.y.get(Integer.valueOf(i2));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.z.beginBroadcast();
                for (int i3 = 0; i3 < beginBroadcast; i3++) {
                    try {
                        int intValue = ((Integer) MultiInstanceInvalidationService.this.z.getBroadcastCookie(i3)).intValue();
                        String str2 = MultiInstanceInvalidationService.this.y.get(Integer.valueOf(intValue));
                        if (i2 != intValue && str.equals(str2)) {
                            MultiInstanceInvalidationService.this.z.getBroadcastItem(i3).a(strArr);
                        }
                    } catch (RemoteException e2) {
                        Log.w("ROOM", "Error invoking a remote callback", e2);
                    } catch (Throwable th) {
                        MultiInstanceInvalidationService.this.z.finishBroadcast();
                        throw th;
                    }
                }
                MultiInstanceInvalidationService.this.z.finishBroadcast();
            }
        }
    }
}
