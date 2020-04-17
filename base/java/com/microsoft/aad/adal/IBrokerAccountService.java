package com.microsoft.aad.adal;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.Map;

public interface IBrokerAccountService extends IInterface {

    public static abstract class Stub extends Binder implements IBrokerAccountService {
        public static final String DESCRIPTOR = "com.microsoft.aad.adal.IBrokerAccountService";
        public static final int TRANSACTION_acquireTokenSilently = 2;
        public static final int TRANSACTION_getBrokerUsers = 1;
        public static final int TRANSACTION_getInactiveBrokerKey = 5;
        public static final int TRANSACTION_getIntentForInteractiveRequest = 3;
        public static final int TRANSACTION_removeAccounts = 4;

        public static class Proxy implements IBrokerAccountService {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public Bundle acquireTokenSilently(Map map) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeMap(map);
                    this.mRemote.transact(2, obtain, obtain2, 0);
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

            public Bundle getBrokerUsers() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle getInactiveBrokerKey(Bundle bundle) {
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

            public Intent getIntentForInteractiveRequest() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
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

            public void removeAccounts() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBrokerAccountService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IBrokerAccountService)) {
                return new Proxy(iBinder);
            }
            return (IBrokerAccountService) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                Bundle brokerUsers = getBrokerUsers();
                parcel2.writeNoException();
                if (brokerUsers != null) {
                    parcel2.writeInt(1);
                    brokerUsers.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                Bundle acquireTokenSilently = acquireTokenSilently(parcel.readHashMap(Stub.class.getClassLoader()));
                parcel2.writeNoException();
                if (acquireTokenSilently != null) {
                    parcel2.writeInt(1);
                    acquireTokenSilently.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                Intent intentForInteractiveRequest = getIntentForInteractiveRequest();
                parcel2.writeNoException();
                if (intentForInteractiveRequest != null) {
                    parcel2.writeInt(1);
                    intentForInteractiveRequest.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                removeAccounts();
                parcel2.writeNoException();
                return true;
            } else if (i2 == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                Bundle inactiveBrokerKey = getInactiveBrokerKey(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (inactiveBrokerKey != null) {
                    parcel2.writeInt(1);
                    inactiveBrokerKey.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    Bundle acquireTokenSilently(Map map);

    Bundle getBrokerUsers();

    Bundle getInactiveBrokerKey(Bundle bundle);

    Intent getIntentForInteractiveRequest();

    void removeAccounts();
}
