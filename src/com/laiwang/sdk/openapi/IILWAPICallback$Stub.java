// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.laiwang.sdk.message.LWMessage;

// Referenced classes of package com.laiwang.sdk.openapi:
//            IILWAPICallback

public static abstract class attachInterface extends Binder
    implements IILWAPICallback
{
    private static class Proxy
        implements IILWAPICallback
    {

        private IBinder mRemote;

        public IBinder asBinder()
        {
            return mRemote;
        }

        public String getInterfaceDescriptor()
        {
            return "com.laiwang.sdk.openapi.IILWAPICallback";
        }

        public int onDisplay(LWMessage lwmessage)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.laiwang.sdk.openapi.IILWAPICallback");
            if (lwmessage == null)
            {
                break MISSING_BLOCK_LABEL_76;
            }
            parcel.writeInt(1);
            lwmessage.writeToParcel(parcel, 0);
_L1:
            int i;
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            if (parcel1.readInt() != 0)
            {
                lwmessage.readFromParcel(parcel1);
            }
            parcel1.recycle();
            parcel.recycle();
            return i;
            parcel.writeInt(0);
              goto _L1
            lwmessage;
            parcel1.recycle();
            parcel.recycle();
            throw lwmessage;
        }

        public int onLWAPICallback(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.laiwang.sdk.openapi.IILWAPICallback");
            parcel.writeInt(i);
            mRemote.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i;
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


    private static final String DESCRIPTOR = "com.laiwang.sdk.openapi.IILWAPICallback";
    static final int TRANSACTION_onDisplay = 1;
    static final int TRANSACTION_onLWAPICallback = 2;

    public static IILWAPICallback asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.laiwang.sdk.openapi.IILWAPICallback");
        if (iinterface != null && (iinterface instanceof IILWAPICallback))
        {
            return (IILWAPICallback)iinterface;
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
            parcel1.writeString("com.laiwang.sdk.openapi.IILWAPICallback");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.laiwang.sdk.openapi.IILWAPICallback");
            if (parcel.readInt() != 0)
            {
                parcel = (LWMessage)LWMessage.CREATOR.eateFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            i = onDisplay(parcel);
            parcel1.writeNoException();
            parcel1.writeInt(i);
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 2: // '\002'
            parcel.enforceInterface("com.laiwang.sdk.openapi.IILWAPICallback");
            i = onLWAPICallback(parcel.readInt());
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;
        }
    }

    public Proxy.mRemote()
    {
        attachInterface(this, "com.laiwang.sdk.openapi.IILWAPICallback");
    }
}
