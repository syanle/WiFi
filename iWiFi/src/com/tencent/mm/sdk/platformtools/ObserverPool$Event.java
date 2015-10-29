// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Bundle;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            ObserverPool

public static class aB
{

    public static final int FLAG_ORDER_EXE = 1;
    private final String aB;
    private int aC;
    public final Bundle data = new Bundle();

    public int getFlag()
    {
        return aC;
    }

    public String getId()
    {
        return aB;
    }

    public void onComplete()
    {
    }

    public aB setFlag(int i)
    {
        aC = i;
        return this;
    }

    public _cls9(String s)
    {
        Assert.assertNotNull(s);
        aB = s;
    }
}
