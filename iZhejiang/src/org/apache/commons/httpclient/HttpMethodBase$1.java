// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.httpclient;


// Referenced classes of package org.apache.commons.httpclient:
//            ResponseConsumedWatcher, HttpMethodBase

class this._cls0
    implements ResponseConsumedWatcher
{

    private final HttpMethodBase this$0;

    public void responseConsumed()
    {
        responseBodyConsumed();
    }

    atcher()
    {
        this$0 = HttpMethodBase.this;
    }
}
