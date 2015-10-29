// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig;


public interface OnlineConfigCallBack
{

    public abstract void onGetOnlineConfigFailed(String s);

    public abstract void onGetOnlineConfigSuccessful(String s, String s1);
}
