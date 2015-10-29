// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;


public interface IWlanAuthenRequestCallback
{

    public abstract void onAuthenticationFailed(WlanRoamingAuthProtocol.ResultInfos resultinfos);

    public abstract void onAuthenticationSuccuess(WlanRoamingAuthProtocol.ResultInfos resultinfos);

    public abstract void onLogoffFailed(WlanRoamingAuthProtocol.ResultInfos resultinfos);

    public abstract void onLogoffSuccess(WlanRoamingAuthProtocol.ResultInfos resultinfos);
}
