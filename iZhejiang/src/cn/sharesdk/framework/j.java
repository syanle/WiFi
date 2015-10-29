// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import java.util.Comparator;

// Referenced classes of package cn.sharesdk.framework:
//            Platform, i

class j
    implements Comparator
{

    final i a;

    j(i i)
    {
        a = i;
        super();
    }

    public int a(Platform platform, Platform platform1)
    {
        if (platform.getSortId() != platform1.getSortId())
        {
            return platform.getSortId() - platform1.getSortId();
        } else
        {
            return platform.getPlatformId() - platform1.getPlatformId();
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Platform)obj, (Platform)obj1);
    }
}
