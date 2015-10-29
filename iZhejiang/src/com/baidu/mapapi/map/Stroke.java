// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;

// Referenced classes of package com.baidu.mapapi.map:
//            Overlay

public final class Stroke
{

    public final int color;
    public final int strokeWidth;

    public Stroke(int i, int j)
    {
        int k = i;
        if (i <= 0)
        {
            k = 5;
        }
        strokeWidth = k;
        color = j;
    }

    Bundle a(Bundle bundle)
    {
        bundle.putInt("width", strokeWidth);
        Overlay.a(color, bundle);
        return bundle;
    }
}
