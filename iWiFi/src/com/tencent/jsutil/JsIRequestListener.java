// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;


public interface JsIRequestListener
{

    public abstract void onComplete(String s, String s1);

    public abstract void onConnectTimeoutException(String s, String s1);

    public abstract void onHttpStatusException(String s, String s1);

    public abstract void onIOException(String s, String s1);

    public abstract void onJSONException(String s, String s1);

    public abstract void onMalformedURLException(String s, String s1);

    public abstract void onNetworkUnavailableException(String s, String s1);

    public abstract void onSocketTimeoutException(String s, String s1);

    public abstract void onUnknowException(String s, String s1);
}
