// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.laiwang.sdk.message.LWMessage;

// Referenced classes of package com.laiwang.sdk.openapi:
//            LWAPIAccount

public class IILWAPICallbackImpl extends IILWAPICallback.Stub
{

    private Context mContext;
    private ILWAPI.IILaiwangApiCallback mIIApiCallback;
    private LWAPIAccount mLWAPIAccount;
    private Handler mMainHandler;

    public IILWAPICallbackImpl()
    {
        mMainHandler = new Handler(Looper.getMainLooper());
        mContext = null;
        mLWAPIAccount = null;
    }

    public int onDisplay(final LWMessage lwMessage)
        throws RemoteException
    {
        mMainHandler.post(new Runnable() {

            final IILWAPICallbackImpl this$0;
            private final LWMessage val$lwMessage;

            public void run()
            {
                if (mIIApiCallback != null)
                {
                    mIIApiCallback.onDisplay(lwMessage.getMessageLinkUrl());
                }
            }

            
            {
                this$0 = IILWAPICallbackImpl.this;
                lwMessage = lwmessage;
                super();
            }
        });
        return 0;
    }

    public int onLWAPICallback(final int eventResult)
        throws RemoteException
    {
        mMainHandler.post(new Runnable() {

            final IILWAPICallbackImpl this$0;
            private final int val$eventResult;

            public void run()
            {
                if (mIIApiCallback != null)
                {
                    mIIApiCallback.onResponceAnswer(eventResult);
                }
            }

            
            {
                this$0 = IILWAPICallbackImpl.this;
                eventResult = i;
                super();
            }
        });
        return 0;
    }

    public void setIIApiCallback(ILWAPI.IILaiwangApiCallback iilaiwangapicallback)
    {
        mIIApiCallback = iilaiwangapicallback;
    }

    public void setLWAPIAccount(LWAPIAccount lwapiaccount)
    {
        mLWAPIAccount = lwapiaccount;
    }

}
