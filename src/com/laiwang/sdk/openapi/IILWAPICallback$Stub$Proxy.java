// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.laiwang.sdk.message.LWMessage;

// Referenced classes of package com.laiwang.sdk.openapi:
//            IILWAPICallback

private static class mRemote
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

    (IBinder ibinder)
    {
        mRemote = ibinder;
    }
}
