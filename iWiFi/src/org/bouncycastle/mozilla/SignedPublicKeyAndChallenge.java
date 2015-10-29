// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.mozilla;

import java.io.ByteArrayInputStream;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.mozilla.PublicKeyAndChallenge;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

public class SignedPublicKeyAndChallenge extends ASN1Encodable
{

    private PublicKeyAndChallenge pkac;
    private DERBitString signature;
    private AlgorithmIdentifier signatureAlgorithm;
    private ASN1Sequence spkacSeq;

    public SignedPublicKeyAndChallenge(byte abyte0[])
    {
        spkacSeq = toDERSequence(abyte0);
        pkac = PublicKeyAndChallenge.getInstance(spkacSeq.getObjectAt(0));
        signatureAlgorithm = AlgorithmIdentifier.getInstance(spkacSeq.getObjectAt(1));
        signature = (DERBitString)spkacSeq.getObjectAt(2);
    }

    private static ASN1Sequence toDERSequence(byte abyte0[])
    {
        try
        {
            abyte0 = (ASN1Sequence)(new ASN1InputStream(new ByteArrayInputStream(abyte0))).readObject();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalArgumentException("badly encoded request");
        }
        return abyte0;
    }

    public PublicKey getPublicKey(String s)
        throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException
    {
        SubjectPublicKeyInfo subjectpublickeyinfo = pkac.getSubjectPublicKeyInfo();
        try
        {
            X509EncodedKeySpec x509encodedkeyspec = new X509EncodedKeySpec((new DERBitString(subjectpublickeyinfo)).getBytes());
            s = KeyFactory.getInstance(subjectpublickeyinfo.getAlgorithmId().getObjectId().getId(), s).generatePublic(x509encodedkeyspec);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new InvalidKeyException("error encoding public key");
        }
        return s;
    }

    public PublicKeyAndChallenge getPublicKeyAndChallenge()
    {
        return pkac;
    }

    public DERObject toASN1Object()
    {
        return spkacSeq;
    }

    public boolean verify()
        throws NoSuchAlgorithmException, SignatureException, NoSuchProviderException, InvalidKeyException
    {
        return verify(null);
    }

    public boolean verify(String s)
        throws NoSuchAlgorithmException, SignatureException, NoSuchProviderException, InvalidKeyException
    {
        Signature signature1;
        if (s == null)
        {
            signature1 = Signature.getInstance(signatureAlgorithm.getObjectId().getId());
        } else
        {
            signature1 = Signature.getInstance(signatureAlgorithm.getObjectId().getId(), s);
        }
        signature1.initVerify(getPublicKey(s));
        signature1.update((new DERBitString(pkac)).getBytes());
        return signature1.verify(signature.getBytes());
    }
}
