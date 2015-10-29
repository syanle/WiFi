// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.DSAKey;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.NullDigest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.signers.DSASigner;
import org.bouncycastle.jce.interfaces.GOST3410Key;

// Referenced classes of package org.bouncycastle.jce.provider:
//            GOST3410Util, DSAUtil, JDKKeyFactory

public class JDKDSASigner extends SignatureSpi
    implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
    public static class dsa224 extends JDKDSASigner
    {

        public dsa224()
        {
            super(new SHA224Digest(), new DSASigner());
        }
    }

    public static class dsa256 extends JDKDSASigner
    {

        public dsa256()
        {
            super(new SHA256Digest(), new DSASigner());
        }
    }

    public static class dsa384 extends JDKDSASigner
    {

        public dsa384()
        {
            super(new SHA384Digest(), new DSASigner());
        }
    }

    public static class dsa512 extends JDKDSASigner
    {

        public dsa512()
        {
            super(new SHA512Digest(), new DSASigner());
        }
    }

    public static class noneDSA extends JDKDSASigner
    {

        public noneDSA()
        {
            super(new NullDigest(), new DSASigner());
        }
    }

    public static class stdDSA extends JDKDSASigner
    {

        public stdDSA()
        {
            super(new SHA1Digest(), new DSASigner());
        }
    }


    private Digest digest;
    private SecureRandom random;
    private DSA signer;

    protected JDKDSASigner(Digest digest1, DSA dsa)
    {
        digest = digest1;
        signer = dsa;
    }

    private BigInteger[] derDecode(byte abyte0[])
        throws IOException
    {
        abyte0 = (ASN1Sequence)ASN1Object.fromByteArray(abyte0);
        return (new BigInteger[] {
            ((DERInteger)abyte0.getObjectAt(0)).getValue(), ((DERInteger)abyte0.getObjectAt(1)).getValue()
        });
    }

    private byte[] derEncode(BigInteger biginteger, BigInteger biginteger1)
        throws IOException
    {
        return (new DERSequence(new DERInteger[] {
            new DERInteger(biginteger), new DERInteger(biginteger1)
        })).getEncoded("DER");
    }

    protected Object engineGetParameter(String s)
    {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    protected void engineInitSign(PrivateKey privatekey)
        throws InvalidKeyException
    {
        Object obj;
        if (privatekey instanceof GOST3410Key)
        {
            privatekey = GOST3410Util.generatePrivateKeyParameter(privatekey);
        } else
        {
            privatekey = DSAUtil.generatePrivateKeyParameter(privatekey);
        }
        obj = privatekey;
        if (random != null)
        {
            obj = new ParametersWithRandom(privatekey, random);
        }
        digest.reset();
        signer.init(true, ((org.bouncycastle.crypto.CipherParameters) (obj)));
    }

    protected void engineInitSign(PrivateKey privatekey, SecureRandom securerandom)
        throws InvalidKeyException
    {
        random = securerandom;
        engineInitSign(privatekey);
    }

    protected void engineInitVerify(PublicKey publickey)
        throws InvalidKeyException
    {
        if (!(publickey instanceof GOST3410Key)) goto _L2; else goto _L1
_L1:
        publickey = GOST3410Util.generatePublicKeyParameter(publickey);
_L4:
        digest.reset();
        signer.init(false, publickey);
        return;
_L2:
        if (publickey instanceof DSAKey)
        {
            publickey = DSAUtil.generatePublicKeyParameter(publickey);
            continue; /* Loop/switch isn't completed */
        }
        publickey = JDKKeyFactory.createPublicKeyFromDERStream(publickey.getEncoded());
        if (!(publickey instanceof DSAKey))
        {
            break; /* Loop/switch isn't completed */
        }
        publickey = DSAUtil.generatePublicKeyParameter(publickey);
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            throw new InvalidKeyException("can't recognise key type in DSA based signer");
        }
        // Misplaced declaration of an exception variable
        catch (PublicKey publickey)
        {
            throw new InvalidKeyException("can't recognise key type in DSA based signer");
        }
    }

    protected void engineSetParameter(String s, Object obj)
    {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    protected void engineSetParameter(AlgorithmParameterSpec algorithmparameterspec)
    {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    protected byte[] engineSign()
        throws SignatureException
    {
        Object aobj[] = new byte[digest.getDigestSize()];
        digest.doFinal(((byte []) (aobj)), 0);
        try
        {
            aobj = signer.generateSignature(((byte []) (aobj)));
            aobj = derEncode(aobj[0], aobj[1]);
        }
        catch (Exception exception)
        {
            throw new SignatureException(exception.toString());
        }
        return ((byte []) (aobj));
    }

    protected void engineUpdate(byte byte0)
        throws SignatureException
    {
        digest.update(byte0);
    }

    protected void engineUpdate(byte abyte0[], int i, int j)
        throws SignatureException
    {
        digest.update(abyte0, i, j);
    }

    protected boolean engineVerify(byte abyte0[])
        throws SignatureException
    {
        byte abyte1[] = new byte[digest.getDigestSize()];
        digest.doFinal(abyte1, 0);
        try
        {
            abyte0 = derDecode(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new SignatureException("error decoding signature bytes.");
        }
        return signer.verifySignature(abyte1, abyte0[0], abyte0[1]);
    }
}
