// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import java.util.Locale;

// Referenced classes of package com.umeng.analytics:
//            Gender

static final class nit> extends Gender
{

    public String toString()
    {
        return String.format(Locale.US, "Female:%d", new Object[] {
            Integer.valueOf(value)
        });
    }

    (String s, int i, int j)
    {
        super(s, i, j, null);
    }
}
