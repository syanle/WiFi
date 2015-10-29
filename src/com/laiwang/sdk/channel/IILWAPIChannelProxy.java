// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.channel;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.openapi.IILWAPICallback;
import com.laiwang.sdk.openapi.LWAPI;
import com.laiwang.sdk.openapi.LWAPIAccount;
import com.laiwang.sdk.utils.LWAPINotification;

// Referenced classes of package com.laiwang.sdk.channel:
//            IILWAPIChannel

public class IILWAPIChannelProxy
{
    public static interface ISDKConnListener
    {

        public abstract void onError(int i);

        public abstract void onStart();

        public abstract void onStop();
    }

    private class LaiwangConnection
        implements ServiceConnection
    {

        private ISDKConnListener mISDKConnListener;
        final IILWAPIChannelProxy this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mTimeStemp = System.currentTimeMillis() - mTimeStemp;
            Log.i("LWAPI", (new StringBuilder("Laiwang service connected, time:")).append(mTimeStemp).toString());
            mLWApiProxy = IILWAPIChannel.Stub.asInterface(ibinder);
            if (mISDKConnListener != null)
            {
                mISDKConnListener.onStart();
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            Log.i("LWAPI", "Laiwang service diconnected");
            mLWApiProxy = null;
            if (LWAPI.DEBUG)
            {
                LWAPINotification.showToast("SDK:laiwang diconnected", LWAPI.getApplication());
            }
            if (mISDKConnListener != null)
            {
                mISDKConnListener.onStop();
            }
        }

        public LaiwangConnection(ISDKConnListener isdkconnlistener)
        {
            this$0 = IILWAPIChannelProxy.this;
            super();
            mISDKConnListener = isdkconnlistener;
        }
    }


    private IILWAPIChannel mLWApiProxy;
    private LaiwangConnection mLaiwangConnection;
    private long mTimeStemp;

    public IILWAPIChannelProxy()
    {
        mLWApiProxy = null;
        mLaiwangConnection = null;
    }

    public boolean bindLaiwangService(ISDKConnListener isdkconnlistener)
    {
        boolean flag;
        if (mLaiwangConnection == null)
        {
            mLaiwangConnection = new LaiwangConnection(isdkconnlistener);
        } else
        if (mLWApiProxy != null && isdkconnlistener != null)
        {
            Log.w("LWAPI", "Laiwang service has already started.");
            isdkconnlistener.onStart();
            return true;
        }
        isdkconnlistener = new Intent();
        isdkconnlistener.setClassName("com.alibaba.android.babylon", "com.alibaba.android.babylon.push.CMNSService");
        Log.i("LWAPI", "Laiwang service is binding.");
        if (LWAPI.DEBUG)
        {
            LWAPINotification.showToast("SDK:laiwang binding", LWAPI.getApplication());
        }
        mTimeStemp = System.currentTimeMillis();
        try
        {
            LWAPI.getApplication().startService(isdkconnlistener);
            flag = LWAPI.getApplication().bindService(isdkconnlistener, mLaiwangConnection, 1);
        }
        // Misplaced declaration of an exception variable
        catch (ISDKConnListener isdkconnlistener)
        {
            return false;
        }
        return flag;
    }

    public boolean isConnected()
    {
        return mLWApiProxy != null && mLaiwangConnection != null;
    }

    public int registerAPP(LWAPIAccount lwapiaccount, IILWAPICallback iilwapicallback, int i, String s)
    {
        try
        {
            i = mLWApiProxy.registerME(lwapiaccount, iilwapicallback, i, s);
        }
        // Misplaced declaration of an exception variable
        catch (LWAPIAccount lwapiaccount)
        {
            lwapiaccount.printStackTrace();
            return -1;
        }
        return i;
    }

    public int requestData(LWAPIAccount lwapiaccount, Bundle bundle, int i)
    {
        try
        {
            i = mLWApiProxy.requestData(lwapiaccount, bundle, i);
        }
        // Misplaced declaration of an exception variable
        catch (LWAPIAccount lwapiaccount)
        {
            lwapiaccount.printStackTrace();
            return 0;
        }
        return i;
    }

    public int transportData(LWAPIAccount lwapiaccount, LWMessage lwmessage, int i)
    {
        try
        {
            lwapiaccount.setLwapiRandomKey(0);
            i = mLWApiProxy.transportData(lwapiaccount, lwmessage, i);
        }
        // Misplaced declaration of an exception variable
        catch (LWAPIAccount lwapiaccount)
        {
            lwapiaccount.printStackTrace();
            return -1;
        }
        if (lwapiaccount.getLwapiRandomKey() == 0)
        {
            return -1;
        } else
        {
            return i;
        }
    }



}
