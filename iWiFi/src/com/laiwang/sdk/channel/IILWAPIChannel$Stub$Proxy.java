// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.channel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.openapi.IILWAPICallback;
import com.laiwang.sdk.openapi.LWAPIAccount;

// Referenced classes of package com.laiwang.sdk.channel:
//            IILWAPIChannel

private static class mRemote
    implements IILWAPIChannel
{

    private IBinder mRemote;

    public IBinder asBinder()
    {
        return mRemote;
    }

    public String getInterfaceDescriptor()
    {
        return "com.laiwang.sdk.channel.IILWAPIChannel";
    }

    public int introduceMe(String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i;
        parcel.writeInterfaceToken("com.laiwang.sdk.channel.IILWAPIChannel");
        parcel.writeString(s);
        mRemote.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        parcel1.recycle();
        parcel.recycle();
        return i;
        s;
        parcel1.recycle();
        parcel.recycle();
        throw s;
    }

    public int registerME(LWAPIAccount lwapiaccount, IILWAPICallback iilwapicallback, int i, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.laiwang.sdk.channel.IILWAPIChannel");
        if (lwapiaccount == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        lwapiaccount.writeToParcel(parcel, 0);
_L3:
        if (iilwapicallback == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        lwapiaccount = iilwapicallback.asBinder();
_L4:
        parcel.writeStrongBinder(lwapiaccount);
        parcel.writeInt(i);
        parcel.writeString(s);
        mRemote.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        parcel1.recycle();
        parcel.recycle();
        return i;
_L2:
        parcel.writeInt(0);
          goto _L3
        lwapiaccount;
        parcel1.recycle();
        parcel.recycle();
        throw lwapiaccount;
        lwapiaccount = null;
          goto _L4
    }

    public int requestData(LWAPIAccount lwapiaccount, Bundle bundle, int i)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.laiwang.sdk.channel.IILWAPIChannel");
        if (lwapiaccount == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        lwapiaccount.writeToParcel(parcel, 0);
_L3:
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L4:
        parcel.writeInt(i);
        mRemote.transact(4, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        if (parcel1.readInt() != 0)
        {
            lwapiaccount.readFromParcel(parcel1);
        }
        parcel1.recycle();
        parcel.recycle();
        return i;
_L2:
        parcel.writeInt(0);
          goto _L3
        lwapiaccount;
        parcel1.recycle();
        parcel.recycle();
        throw lwapiaccount;
        parcel.writeInt(0);
          goto _L4
    }

    public int transportData(LWAPIAccount lwapiaccount, LWMessage lwmessage, int i)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.laiwang.sdk.channel.IILWAPIChannel");
        if (lwapiaccount == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        lwapiaccount.writeToParcel(parcel, 0);
_L3:
        if (lwmessage == null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        parcel.writeInt(1);
        lwmessage.writeToParcel(parcel, 0);
_L4:
        parcel.writeInt(i);
        mRemote.transact(3, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        if (parcel1.readInt() != 0)
        {
            lwapiaccount.readFromParcel(parcel1);
        }
        parcel1.recycle();
        parcel.recycle();
        return i;
_L2:
        parcel.writeInt(0);
          goto _L3
        lwapiaccount;
        parcel1.recycle();
        parcel.recycle();
        throw lwapiaccount;
        parcel.writeInt(0);
          goto _L4
    }

    (IBinder ibinder)
    {
        mRemote = ibinder;
    }
}
