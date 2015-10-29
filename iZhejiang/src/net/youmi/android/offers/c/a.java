// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.c;

import net.youmi.android.a.a.e.a.a.b;
import net.youmi.android.a.a.e.a.b.g;
import net.youmi.android.offers.c.a.d;
import net.youmi.android.offers.c.a.e;

public class a extends b
{

    public a()
    {
    }

    public g a(int i, int j)
    {
        if (!a(i))
        {
            return null;
        }
        switch (j)
        {
        case 2: // '\002'
        case 3: // '\003'
        default:
            return null;

        case 0: // '\0'
            return new net.youmi.android.offers.c.a.a();

        case 1: // '\001'
            return new net.youmi.android.offers.c.a.b();

        case 4: // '\004'
            return new d();

        case 5: // '\005'
            return new e();
        }
    }

    public boolean a(int i)
    {
        return i == 102;
    }
}
