// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;


// Referenced classes of package com.tencent.stat:
//            StatDispatchCallback, StatService, StatStore

class this._cls0
    implements StatDispatchCallback
{

    final this._cls0 this$0;

    public void onDispatchFailure()
    {
        StatStore.getInstance().storeEvent(cess._mth200(this._cls0.this), null);
    }

    public void onDispatchSuccess()
    {
        StatStore.getInstance().loadEvents(-1);
    }

    ()
    {
        this$0 = this._cls0.this;
        super();
    }
}
