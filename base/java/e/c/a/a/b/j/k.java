package e.c.a.a.b.j;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import e.c.a.a.d.b.b;
import e.c.a.a.d.b.c;

public interface k extends IInterface {

    public static abstract class a extends b implements k {

        /* renamed from: e.c.a.a.b.j.k$a$a  reason: collision with other inner class name */
        public static class C0065a extends e.c.a.a.d.b.a implements k {
            public C0065a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            public final Account getAccount() {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken(this.b);
                obtain = Parcel.obtain();
                try {
                    this.a.transact(2, obtain, obtain, 0);
                    obtain.readException();
                    obtain.recycle();
                    return (Account) c.a(obtain, Account.CREATOR);
                } catch (RuntimeException e2) {
                    throw e2;
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static k a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof k) {
                return (k) queryLocalInterface;
            }
            return new C0065a(iBinder);
        }
    }

    Account getAccount();
}
