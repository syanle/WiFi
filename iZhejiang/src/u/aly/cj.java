// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.ByteArrayOutputStream;

public class cj extends ByteArrayOutputStream
{

    public cj()
    {
    }

    public cj(int i)
    {
        super(i);
    }

    public byte[] a()
    {
        return buf;
    }

    public int b()
    {
        return count;
    }
}
