// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol;

import com.iwifi.sdk.data.SsidList;

public interface UpdateSsidListInterface
{

    public abstract void updateSsidErr(String s);

    public abstract void updateSsidListSucc(SsidList ssidlist);
}
