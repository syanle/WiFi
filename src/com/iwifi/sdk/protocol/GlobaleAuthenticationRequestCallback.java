// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol;


public interface GlobaleAuthenticationRequestCallback
{

    public abstract void onAuthenticationReqFail(String s);

    public abstract void onAuthenticationReqSucc(String s);

    public abstract void onLogoffRequestFail(String s);

    public abstract void onLogoffRequestSucc(String s);
}
