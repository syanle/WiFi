// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import org.apache.http.HttpResponse;

public interface HttpResponseCallback
{

    public abstract void onResponse(HttpResponse httpresponse)
        throws Throwable;
}
