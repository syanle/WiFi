// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.HandlerThread;

class ao
{

    private static HandlerThread a = null;

    ao()
    {
    }

    static HandlerThread a()
    {
        if (a == null)
        {
            a = new HandlerThread("ServiceStartArguments", 10);
            a.start();
        }
        return a;
    }

}
