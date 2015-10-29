// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;


public interface JsIUiListener
{

    public abstract void onCancel(int i);

    public abstract void onComplete(String s, int i);

    public abstract void onError(int i, String s, String s1, int j);
}
