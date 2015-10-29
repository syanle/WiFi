// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.vi;


// Referenced classes of package com.baidu.vi:
//            c

static class ieldError
{

    static final int a[];

    static 
    {
        a = new int[android.net.orkInfo.State.values().length];
        try
        {
            a[android.net.orkInfo.State.CONNECTED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[android.net.orkInfo.State.CONNECTING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[android.net.orkInfo.State.DISCONNECTED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[android.net.orkInfo.State.DISCONNECTING.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[android.net.orkInfo.State.SUSPENDED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
