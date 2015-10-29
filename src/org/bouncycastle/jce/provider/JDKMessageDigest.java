// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.MessageDigest;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.GOST3411Digest;
import org.bouncycastle.crypto.digests.MD2Digest;
import org.bouncycastle.crypto.digests.MD4Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD128Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.RIPEMD256Digest;
import org.bouncycastle.crypto.digests.RIPEMD320Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.TigerDigest;
import org.bouncycastle.crypto.digests.WhirlpoolDigest;

public class JDKMessageDigest extends MessageDigest
{
    public static class GOST3411 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            GOST3411 gost3411 = (GOST3411)clone();
            gost3411.digest = new GOST3411Digest((GOST3411Digest)digest);
            return gost3411;
        }

        public GOST3411()
        {
            super(new GOST3411Digest());
        }
    }

    public static class MD2 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            MD2 md2 = (MD2)clone();
            md2.digest = new MD2Digest((MD2Digest)digest);
            return md2;
        }

        public MD2()
        {
            super(new MD2Digest());
        }
    }

    public static class MD4 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            MD4 md4 = (MD4)clone();
            md4.digest = new MD4Digest((MD4Digest)digest);
            return md4;
        }

        public MD4()
        {
            super(new MD4Digest());
        }
    }

    public static class MD5 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            MD5 md5 = (MD5)clone();
            md5.digest = new MD5Digest((MD5Digest)digest);
            return md5;
        }

        public MD5()
        {
            super(new MD5Digest());
        }
    }

    public static class RIPEMD128 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            RIPEMD128 ripemd128 = (RIPEMD128)clone();
            ripemd128.digest = new RIPEMD128Digest((RIPEMD128Digest)digest);
            return ripemd128;
        }

        public RIPEMD128()
        {
            super(new RIPEMD128Digest());
        }
    }

    public static class RIPEMD160 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            RIPEMD160 ripemd160 = (RIPEMD160)clone();
            ripemd160.digest = new RIPEMD160Digest((RIPEMD160Digest)digest);
            return ripemd160;
        }

        public RIPEMD160()
        {
            super(new RIPEMD160Digest());
        }
    }

    public static class RIPEMD256 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            RIPEMD256 ripemd256 = (RIPEMD256)clone();
            ripemd256.digest = new RIPEMD256Digest((RIPEMD256Digest)digest);
            return ripemd256;
        }

        public RIPEMD256()
        {
            super(new RIPEMD256Digest());
        }
    }

    public static class RIPEMD320 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            RIPEMD320 ripemd320 = (RIPEMD320)clone();
            ripemd320.digest = new RIPEMD320Digest((RIPEMD320Digest)digest);
            return ripemd320;
        }

        public RIPEMD320()
        {
            super(new RIPEMD320Digest());
        }
    }

    public static class SHA1 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            SHA1 sha1 = (SHA1)clone();
            sha1.digest = new SHA1Digest((SHA1Digest)digest);
            return sha1;
        }

        public SHA1()
        {
            super(new SHA1Digest());
        }
    }

    public static class SHA224 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            SHA224 sha224 = (SHA224)clone();
            sha224.digest = new SHA224Digest((SHA224Digest)digest);
            return sha224;
        }

        public SHA224()
        {
            super(new SHA224Digest());
        }
    }

    public static class SHA256 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            SHA256 sha256 = (SHA256)clone();
            sha256.digest = new SHA256Digest((SHA256Digest)digest);
            return sha256;
        }

        public SHA256()
        {
            super(new SHA256Digest());
        }
    }

    public static class SHA384 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            SHA384 sha384 = (SHA384)clone();
            sha384.digest = new SHA384Digest((SHA384Digest)digest);
            return sha384;
        }

        public SHA384()
        {
            super(new SHA384Digest());
        }
    }

    public static class SHA512 extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            SHA512 sha512 = (SHA512)clone();
            sha512.digest = new SHA512Digest((SHA512Digest)digest);
            return sha512;
        }

        public SHA512()
        {
            super(new SHA512Digest());
        }
    }

    public static class Tiger extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            Tiger tiger = (Tiger)clone();
            tiger.digest = new TigerDigest((TigerDigest)digest);
            return tiger;
        }

        public Tiger()
        {
            super(new TigerDigest());
        }
    }

    public static class Whirlpool extends JDKMessageDigest
        implements Cloneable
    {

        public Object clone()
            throws CloneNotSupportedException
        {
            Whirlpool whirlpool = (Whirlpool)clone();
            whirlpool.digest = new WhirlpoolDigest((WhirlpoolDigest)digest);
            return whirlpool;
        }

        public Whirlpool()
        {
            super(new WhirlpoolDigest());
        }
    }


    Digest digest;

    protected JDKMessageDigest(Digest digest1)
    {
        super(digest1.getAlgorithmName());
        digest = digest1;
    }

    public byte[] engineDigest()
    {
        byte abyte0[] = new byte[digest.getDigestSize()];
        digest.doFinal(abyte0, 0);
        return abyte0;
    }

    public void engineReset()
    {
        digest.reset();
    }

    public void engineUpdate(byte byte0)
    {
        digest.update(byte0);
    }

    public void engineUpdate(byte abyte0[], int i, int j)
    {
        digest.update(abyte0, i, j);
    }
}
