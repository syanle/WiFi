// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.tls;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;

class CombinedHash
    implements Digest
{

    private MD5Digest md5;
    private SHA1Digest sha1;

    CombinedHash()
    {
        md5 = new MD5Digest();
        sha1 = new SHA1Digest();
    }

    CombinedHash(CombinedHash combinedhash)
    {
        md5 = new MD5Digest(combinedhash.md5);
        sha1 = new SHA1Digest(combinedhash.sha1);
    }

    public int doFinal(byte abyte0[], int i)
    {
        return md5.doFinal(abyte0, i) + sha1.doFinal(abyte0, i + 16);
    }

    public String getAlgorithmName()
    {
        return (new StringBuilder()).append(md5.getAlgorithmName()).append(" and ").append(sha1.getAlgorithmName()).append(" for TLS 1.0").toString();
    }

    public int getDigestSize()
    {
        return 36;
    }

    public void reset()
    {
        md5.reset();
        sha1.reset();
    }

    public void update(byte byte0)
    {
        md5.update(byte0);
        sha1.update(byte0);
    }

    public void update(byte abyte0[], int i, int j)
    {
        md5.update(abyte0, i, j);
        sha1.update(abyte0, i, j);
    }
}
