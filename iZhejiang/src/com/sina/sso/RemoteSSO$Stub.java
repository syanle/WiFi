// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sina.sso;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.sina.sso:
//            RemoteSSO

public static abstract class attachInterface extends Binder
    implements RemoteSSO
{
    private static class Proxy
        implements RemoteSSO
    {

        private IBinder mRemote;

        public IBinder asBinder()
        {
            return mRemote;
        }

        public String getActivityName()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.sina.sso.RemoteSSO");
            mRemote.transact(2, parcel, parcel1, 0);
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

        public String getInterfaceDescriptor()
        {
            return "com.sina.sso.RemoteSSO";
        }

        public String getPackageName()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.sina.sso.RemoteSSO");
            mRemote.transact(1, parcel, parcel1, 0);
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

        Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    private static final String DESCRIPTOR = "com.sina.sso.RemoteSSO";
    static final int TRANSACTION_getActivityName = 2;
    static final int TRANSACTION_getPackageName = 1;

    public static RemoteSSO asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.sina.sso.RemoteSSO");
        if (iinterface != null && (iinterface instanceof RemoteSSO))
        {
            return (RemoteSSO)iinterface;
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
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.sina.sso.RemoteSSO");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.sina.sso.RemoteSSO");
            parcel = getPackageName();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.sina.sso.RemoteSSO");
            parcel = getActivityName();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;
        }
    }

    public Proxy.mRemote()
    {
        attachInterface(this, "com.sina.sso.RemoteSSO");
    }
}
