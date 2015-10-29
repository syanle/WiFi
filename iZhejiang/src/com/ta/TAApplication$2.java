// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta;

import com.ta.util.netstate.TANetChangeObserver;

// Referenced classes of package com.ta:
//            TAApplication

class NetChangeObserver extends TANetChangeObserver
{

    final TAApplication this$0;

    public void onConnect(com.ta.util.netstate.tType ttype)
    {
        super.onConnect(ttype);
        TAApplication.this.onConnect(ttype);
    }

    public void onDisConnect()
    {
        super.onDisConnect();
        TAApplication.this.onDisConnect();
    }

    NetWorkUtil.netType()
    {
        this$0 = TAApplication.this;
        super();
    }
}
