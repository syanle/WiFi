// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Digest;

public class DigestOutputStream extends FilterOutputStream
{

    protected Digest digest;

    public DigestOutputStream(OutputStream outputstream, Digest digest1)
    {
        super(outputstream);
        digest = digest1;
    }

    public Digest getDigest()
    {
        return digest;
    }

    public void write(int i)
        throws IOException
    {
        digest.update((byte)i);
        out.write(i);
    }

    public void write(byte abyte0[], int i, int j)
        throws IOException
    {
        digest.update(abyte0, i, j);
        out.write(abyte0, i, j);
    }
}
