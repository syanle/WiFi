// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            CharSequences

final class u
    implements CharSequence
{

    final byte u[];

    public final char charAt(int i)
    {
        return (char)u[i];
    }

    public final int length()
    {
        return u.length;
    }

    public final CharSequence subSequence(int i, int j)
    {
        return CharSequences.forAsciiBytes(u, i, j);
    }

    public final String toString()
    {
        return new String(u);
    }

    (byte abyte0[])
    {
        u = abyte0;
        super();
    }
}
