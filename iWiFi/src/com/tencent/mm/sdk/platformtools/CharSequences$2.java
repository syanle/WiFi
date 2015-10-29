// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            CharSequences

final class w
    implements CharSequence
{

    final byte u[];
    final int v;
    final int w;

    public final char charAt(int i)
    {
        return (char)u[v + i];
    }

    public final int length()
    {
        return w - v;
    }

    public final CharSequence subSequence(int i, int j)
    {
        i -= v;
        j -= v;
        CharSequences.a(i, j, length());
        return CharSequences.forAsciiBytes(u, i, j);
    }

    public final String toString()
    {
        return new String(u, v, length());
    }

    (byte abyte0[], int i, int j)
    {
        u = abyte0;
        v = i;
        w = j;
        super();
    }
}
