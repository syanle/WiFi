// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;


// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class Listener
    implements tainAppIdListener
{

    final UMQQSsoHandler this$0;
    private final com.umeng.socialize.controller.listener.s.UMAuthListener val$authListener;

    public void onComplete()
    {
        UMQQSsoHandler.access$19(UMQQSsoHandler.this, val$authListener);
    }

    Listener()
    {
        this$0 = final_umqqssohandler;
        val$authListener = com.umeng.socialize.controller.listener.s.UMAuthListener.this;
        super();
    }
}
