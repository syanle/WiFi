// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.vi;

import android.net.NetworkInfo;

public class c
{

    public String a;
    public int b;
    public int c;

    public c(NetworkInfo networkinfo)
    {
        a = networkinfo.getTypeName();
        b = networkinfo.getType();
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[android.net.NetworkInfo.State.values().length];
                try
                {
                    a[android.net.NetworkInfo.State.CONNECTED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[android.net.NetworkInfo.State.CONNECTING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[android.net.NetworkInfo.State.DISCONNECTED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[android.net.NetworkInfo.State.DISCONNECTING.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[android.net.NetworkInfo.State.SUSPENDED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[networkinfo.getState().ordinal()])
        {
        default:
            c = 0;
            return;

        case 1: // '\001'
            c = 2;
            return;

        case 2: // '\002'
            c = 1;
            break;
        }
    }
}
