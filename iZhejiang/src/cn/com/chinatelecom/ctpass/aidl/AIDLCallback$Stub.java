// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.com.chinatelecom.ctpass.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package cn.com.chinatelecom.ctpass.aidl:
//            AIDLCallback

public static abstract class attachInterface extends Binder
    implements AIDLCallback
{
    private static class Proxy
        implements AIDLCallback
    {

        private IBinder mRemote;

        public IBinder asBinder()
        {
            return mRemote;
        }

        public void connectCTPassServiceCallBack(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("cn.com.chinatelecom.ctpass.aidl.AIDLCallback");
            parcel.writeString(s);
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String getInterfaceDescriptor()
        {
            return "cn.com.chinatelecom.ctpass.aidl.AIDLCallback";
        }

        Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    private static final String DESCRIPTOR = "cn.com.chinatelecom.ctpass.aidl.AIDLCallback";
    static final int TRANSACTION_connectCTPassServiceCallBack = 1;

    public static AIDLCallback asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("cn.com.chinatelecom.ctpass.aidl.AIDLCallback");
        if (iinterface != null && (iinterface instanceof AIDLCallback))
        {
            return (AIDLCallback)iinterface;
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
            parcel1.writeString("cn.com.chinatelecom.ctpass.aidl.AIDLCallback");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("cn.com.chinatelecom.ctpass.aidl.AIDLCallback");
            connectCTPassServiceCallBack(parcel.readString());
            parcel1.writeNoException();
            return true;
        }
    }

    public Proxy.mRemote()
    {
        attachInterface(this, "cn.com.chinatelecom.ctpass.aidl.AIDLCallback");
    }
}
