// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.com.chinatelecom.ctpass.aidl;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package cn.com.chinatelecom.ctpass.aidl:
//            ServiceAIDL, AIDLCallback

private static class mRemote
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

    (IBinder ibinder)
    {
        mRemote = ibinder;
    }
}
