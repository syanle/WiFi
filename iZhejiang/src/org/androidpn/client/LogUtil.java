// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;


public class LogUtil
{

    public LogUtil()
    {
    }

    public static String makeLogTag(Class class1)
    {
        return (new StringBuilder("Androidpn_")).append(class1.getSimpleName()).toString();
    }
}
