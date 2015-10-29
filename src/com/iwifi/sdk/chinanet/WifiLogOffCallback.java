// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet;


public abstract class WifiLogOffCallback
{

    public WifiLogOffCallback()
    {
    }

    public abstract void onLogOffFailure(String s);

    public abstract void onLogOffSuccess(String s);
}
