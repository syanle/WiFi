// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.channel;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.laiwang.sdk.openapi.LWAPI;
import com.laiwang.sdk.utils.LWAPINotification;

// Referenced classes of package com.laiwang.sdk.channel:
//            IILWAPIChannelProxy

private class mISDKConnListener
    implements ServiceConnection
{

    private nStop mISDKConnListener;
    final IILWAPIChannelProxy this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        IILWAPIChannelProxy.access$1(IILWAPIChannelProxy.this, System.currentTimeMillis() - IILWAPIChannelProxy.access$0(IILWAPIChannelProxy.this));
        Log.i("LWAPI", (new StringBuilder("Laiwang service connected, time:")).append(IILWAPIChannelProxy.access$0(IILWAPIChannelProxy.this)).toString());
        IILWAPIChannelProxy.access$2(IILWAPIChannelProxy.this, com.laiwang.sdk.channel.this._mth0(ibinder));
        if (mISDKConnListener != null)
        {
            mISDKConnListener.nStart();
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        Log.i("LWAPI", "Laiwang service diconnected");
        IILWAPIChannelProxy.access$2(IILWAPIChannelProxy.this, null);
        if (LWAPI.DEBUG)
        {
            LWAPINotification.showToast("SDK:laiwang diconnected", LWAPI.getApplication());
        }
        if (mISDKConnListener != null)
        {
            mISDKConnListener.nStop();
        }
    }

    public ( )
    {
        this$0 = IILWAPIChannelProxy.this;
        super();
        mISDKConnListener = ;
    }
}
