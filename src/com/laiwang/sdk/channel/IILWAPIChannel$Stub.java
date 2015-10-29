// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.channel;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.openapi.IILWAPICallback;
import com.laiwang.sdk.openapi.LWAPIAccount;

// Referenced classes of package com.laiwang.sdk.channel:
//            IILWAPIChannel

public static abstract class attachInterface extends Binder
    implements IILWAPIChannel
{
    private static class Proxy
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

        Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    private static final String DESCRIPTOR = "com.laiwang.sdk.channel.IILWAPIChannel";
    static final int TRANSACTION_introduceMe = 2;
    static final int TRANSACTION_registerME = 1;
    static final int TRANSACTION_requestData = 4;
    static final int TRANSACTION_transportData = 3;

    public static IILWAPIChannel asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.laiwang.sdk.channel.IILWAPIChannel");
        if (iinterface != null && (iinterface instanceof IILWAPIChannel))
        {
            return (IILWAPIChannel)iinterface;
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
            parcel1.writeString("com.laiwang.sdk.channel.IILWAPIChannel");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.laiwang.sdk.channel.IILWAPIChannel");
            LWAPIAccount lwapiaccount;
            if (parcel.readInt() != 0)
            {
                lwapiaccount = (LWAPIAccount)LWAPIAccount.CREATOR.reateFromParcel(parcel);
            } else
            {
                lwapiaccount = null;
            }
            i = registerME(lwapiaccount, com.laiwang.sdk.openapi..asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.laiwang.sdk.channel.IILWAPIChannel");
            i = introduceMe(parcel.readString());
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.laiwang.sdk.channel.IILWAPIChannel");
            LWAPIAccount lwapiaccount1;
            LWMessage lwmessage;
            if (parcel.readInt() != 0)
            {
                lwapiaccount1 = (LWAPIAccount)LWAPIAccount.CREATOR.reateFromParcel(parcel);
            } else
            {
                lwapiaccount1 = null;
            }
            if (parcel.readInt() != 0)
            {
                lwmessage = (LWMessage)LWMessage.CREATOR.reateFromParcel(parcel);
            } else
            {
                lwmessage = null;
            }
            i = transportData(lwapiaccount1, lwmessage, parcel.readInt());
            parcel1.writeNoException();
            parcel1.writeInt(i);
            if (lwapiaccount1 != null)
            {
                parcel1.writeInt(1);
                lwapiaccount1.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 4: // '\004'
            parcel.enforceInterface("com.laiwang.sdk.channel.IILWAPIChannel");
            break;
        }
        LWAPIAccount lwapiaccount2;
        Bundle bundle;
        if (parcel.readInt() != 0)
        {
            lwapiaccount2 = (LWAPIAccount)LWAPIAccount.CREATOR.reateFromParcel(parcel);
        } else
        {
            lwapiaccount2 = null;
        }
        if (parcel.readInt() != 0)
        {
            bundle = (Bundle)Bundle.CREATOR.reateFromParcel(parcel);
        } else
        {
            bundle = null;
        }
        i = requestData(lwapiaccount2, bundle, parcel.readInt());
        parcel1.writeNoException();
        parcel1.writeInt(i);
        if (lwapiaccount2 != null)
        {
            parcel1.writeInt(1);
            lwapiaccount2.writeToParcel(parcel1, 1);
            return true;
        } else
        {
            parcel1.writeInt(0);
            return true;
        }
    }

    public Proxy.mRemote()
    {
        attachInterface(this, "com.laiwang.sdk.channel.IILWAPIChannel");
    }
}
