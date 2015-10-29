// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.com.chinatelecom.ctpass.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package cn.com.chinatelecom.ctpass.aidl:
//            ServiceAIDL, AIDLCallback

public static abstract class attachInterface extends Binder
    implements ServiceAIDL
{
    private static class Proxy
        implements ServiceAIDL
    {

        private IBinder mRemote;

        public IBinder asBinder()
        {
            return mRemote;
        }

        public void connectCTPassService()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getCTPassToken(String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            mRemote.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String getCTPassTokenByPassword(String s, String s1, String s2, String s3)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeString(s3);
            mRemote.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String getInterfaceDescriptor()
        {
            return "cn.com.chinatelecom.ctpass.aidl.ServiceAIDL";
        }

        public String getOTP(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel.writeInt(i);
            mRemote.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getOTPByPassword(int i, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel.writeInt(i);
            parcel.writeString(s);
            mRemote.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String queryPasswordStatus()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            mRemote.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void registerCallback(AIDLCallback aidlcallback)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            if (aidlcallback == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            aidlcallback = aidlcallback.asBinder();
_L1:
            parcel.writeStrongBinder(aidlcallback);
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            aidlcallback = null;
              goto _L1
            aidlcallback;
            parcel1.recycle();
            parcel.recycle();
            throw aidlcallback;
        }

        public void unregisterCallback(AIDLCallback aidlcallback)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            if (aidlcallback == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            aidlcallback = aidlcallback.asBinder();
_L1:
            parcel.writeStrongBinder(aidlcallback);
            mRemote.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            aidlcallback = null;
              goto _L1
            aidlcallback;
            parcel1.recycle();
            parcel.recycle();
            throw aidlcallback;
        }

        public String updatePassword(String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel.writeString(s);
            parcel.writeString(s1);
            mRemote.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    private static final String DESCRIPTOR = "cn.com.chinatelecom.ctpass.aidl.ServiceAIDL";
    static final int TRANSACTION_connectCTPassService = 3;
    static final int TRANSACTION_getCTPassToken = 5;
    static final int TRANSACTION_getCTPassTokenByPassword = 6;
    static final int TRANSACTION_getOTP = 7;
    static final int TRANSACTION_getOTPByPassword = 8;
    static final int TRANSACTION_queryPasswordStatus = 9;
    static final int TRANSACTION_registerCallback = 1;
    static final int TRANSACTION_unregisterCallback = 2;
    static final int TRANSACTION_updatePassword = 4;

    public static ServiceAIDL asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
        if (iinterface != null && (iinterface instanceof ServiceAIDL))
        {
            return (ServiceAIDL)iinterface;
        } else
        {
            return new Proxy(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            registerCallback(.asInterface(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            unregisterCallback(.asInterface(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            connectCTPassService();
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel = updatePassword(parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 5: // '\005'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel = getCTPassToken(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel = getCTPassTokenByPassword(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel = getOTP(parcel.readInt());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 8: // '\b'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel = getOTPByPassword(parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 9: // '\t'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
            parcel = queryPasswordStatus();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;
        }
    }

    public Proxy.mRemote()
    {
        attachInterface(this, "cn.com.chinatelecom.ctpass.aidl.ServiceAIDL");
    }
}
