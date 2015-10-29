// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.common;


// Referenced classes of package com.ta.mvc.common:
//            TAResponse

public interface TAIResponseListener
{

    public abstract void onFailure(TAResponse taresponse);

    public abstract void onFinish();

    public abstract void onRuning(TAResponse taresponse);

    public abstract void onStart();

    public abstract void onSuccess(TAResponse taresponse);
}
