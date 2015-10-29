// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;

class j
{

    public final byte a[];
    public final int b;
    public final int c;

    public j(int i, int k, byte abyte0[])
    {
        c = i;
        b = k;
        a = abyte0;
    }

    Bundle a()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("image_width", c);
        bundle.putInt("image_height", b);
        bundle.putByteArray("image_data", a);
        return bundle;
    }
}
