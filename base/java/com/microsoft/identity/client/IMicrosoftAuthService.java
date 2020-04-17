package com.microsoft.identity.client;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface IMicrosoftAuthService extends IInterface {

    public static abstract class Stub extends Binder implements IMicrosoftAuthService {
        public static final String DESCRIPTOR = "com.microsoft.identity.client.IMicrosoftAuthService";
        public static final int TRANSACTION_acquireTokenSilently = 3;
        public static final int TRANSACTION_getAccounts = 2;
        public static final int TRANSACTION_getCurrentAccount = 7;
        public static final int TRANSACTION_getDeviceMode = 6;
        public static final int TRANSACTION_getIntentForInteractiveRequest = 4;
        public static final int TRANSACTION_hello = 1;
        public static final int TRANSACTION_removeAccount = 5;
        public static final int TRANSACTION_removeAccountFromSharedDevice = 8;

        public static class Proxy implements IMicrosoftAuthService {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public Bundle acquireTokenSilently(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public Bundle getAccounts(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle getCurrentAccount(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle getDeviceMode() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Intent getIntentForInteractiveRequest() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public Bundle hello(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle removeAccount(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle removeAccountFromSharedDevice(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMicrosoftAuthService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IMicrosoftAuthService)) {
                return new Proxy(iBinder);
            }
            return (IMicrosoftAuthService) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v4, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v8, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v12, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v17, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v12, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v22, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v15, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v26, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v18, resolved type: android.os.Bundle} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTransact(int r5, android.os.Parcel r6, android.os.Parcel r7, int r8) {
            /*
                r4 = this;
                r0 = 1598968902(0x5f4e5446, float:1.4867585E19)
                r1 = 1
                java.lang.String r2 = "com.microsoft.identity.client.IMicrosoftAuthService"
                if (r5 == r0) goto L_0x0124
                r0 = 0
                r3 = 0
                switch(r5) {
                    case 1: goto L_0x00fe;
                    case 2: goto L_0x00d8;
                    case 3: goto L_0x00b2;
                    case 4: goto L_0x009b;
                    case 5: goto L_0x0075;
                    case 6: goto L_0x005e;
                    case 7: goto L_0x0038;
                    case 8: goto L_0x0012;
                    default: goto L_0x000d;
                }
            L_0x000d:
                boolean r5 = super.onTransact(r5, r6, r7, r8)
                return r5
            L_0x0012:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0024
                android.os.Parcelable$Creator r5 = android.os.Bundle.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r0 = r5
                android.os.Bundle r0 = (android.os.Bundle) r0
            L_0x0024:
                android.os.Bundle r5 = r4.removeAccountFromSharedDevice(r0)
                r7.writeNoException()
                if (r5 == 0) goto L_0x0034
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x0037
            L_0x0034:
                r7.writeInt(r3)
            L_0x0037:
                return r1
            L_0x0038:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x004a
                android.os.Parcelable$Creator r5 = android.os.Bundle.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r0 = r5
                android.os.Bundle r0 = (android.os.Bundle) r0
            L_0x004a:
                android.os.Bundle r5 = r4.getCurrentAccount(r0)
                r7.writeNoException()
                if (r5 == 0) goto L_0x005a
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x005d
            L_0x005a:
                r7.writeInt(r3)
            L_0x005d:
                return r1
            L_0x005e:
                r6.enforceInterface(r2)
                android.os.Bundle r5 = r4.getDeviceMode()
                r7.writeNoException()
                if (r5 == 0) goto L_0x0071
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x0074
            L_0x0071:
                r7.writeInt(r3)
            L_0x0074:
                return r1
            L_0x0075:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0087
                android.os.Parcelable$Creator r5 = android.os.Bundle.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r0 = r5
                android.os.Bundle r0 = (android.os.Bundle) r0
            L_0x0087:
                android.os.Bundle r5 = r4.removeAccount(r0)
                r7.writeNoException()
                if (r5 == 0) goto L_0x0097
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x009a
            L_0x0097:
                r7.writeInt(r3)
            L_0x009a:
                return r1
            L_0x009b:
                r6.enforceInterface(r2)
                android.content.Intent r5 = r4.getIntentForInteractiveRequest()
                r7.writeNoException()
                if (r5 == 0) goto L_0x00ae
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x00b1
            L_0x00ae:
                r7.writeInt(r3)
            L_0x00b1:
                return r1
            L_0x00b2:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x00c4
                android.os.Parcelable$Creator r5 = android.os.Bundle.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r0 = r5
                android.os.Bundle r0 = (android.os.Bundle) r0
            L_0x00c4:
                android.os.Bundle r5 = r4.acquireTokenSilently(r0)
                r7.writeNoException()
                if (r5 == 0) goto L_0x00d4
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x00d7
            L_0x00d4:
                r7.writeInt(r3)
            L_0x00d7:
                return r1
            L_0x00d8:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x00ea
                android.os.Parcelable$Creator r5 = android.os.Bundle.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r0 = r5
                android.os.Bundle r0 = (android.os.Bundle) r0
            L_0x00ea:
                android.os.Bundle r5 = r4.getAccounts(r0)
                r7.writeNoException()
                if (r5 == 0) goto L_0x00fa
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x00fd
            L_0x00fa:
                r7.writeInt(r3)
            L_0x00fd:
                return r1
            L_0x00fe:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0110
                android.os.Parcelable$Creator r5 = android.os.Bundle.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r0 = r5
                android.os.Bundle r0 = (android.os.Bundle) r0
            L_0x0110:
                android.os.Bundle r5 = r4.hello(r0)
                r7.writeNoException()
                if (r5 == 0) goto L_0x0120
                r7.writeInt(r1)
                r5.writeToParcel(r7, r1)
                goto L_0x0123
            L_0x0120:
                r7.writeInt(r3)
            L_0x0123:
                return r1
            L_0x0124:
                r7.writeString(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.IMicrosoftAuthService.Stub.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    Bundle acquireTokenSilently(Bundle bundle);

    Bundle getAccounts(Bundle bundle);

    Bundle getCurrentAccount(Bundle bundle);

    Bundle getDeviceMode();

    Intent getIntentForInteractiveRequest();

    Bundle hello(Bundle bundle);

    Bundle removeAccount(Bundle bundle);

    Bundle removeAccountFromSharedDevice(Bundle bundle);
}
