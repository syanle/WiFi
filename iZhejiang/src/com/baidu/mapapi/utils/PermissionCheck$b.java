// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;


// Referenced classes of package com.baidu.mapapi.utils:
//            PermissionCheck

public static class d
{

    public int a;
    public String b;
    public String c;
    public String d;
    public String e;

    public String toString()
    {
        return String.format("errorcode: %d uid: %s appid %s msg: %s", new Object[] {
            Integer.valueOf(a), b, c, d
        });
    }

    public ()
    {
        a = 0;
        b = "-1";
        c = "-1";
        d = "";
    }
}
