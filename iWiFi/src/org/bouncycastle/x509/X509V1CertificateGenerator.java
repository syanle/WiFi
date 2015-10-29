// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.TBSCertificateStructure;
import org.bouncycastle.asn1.x509.Time;
import org.bouncycastle.asn1.x509.V1TBSCertificateGenerator;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.asn1.x509.X509Name;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.jce.provider.X509CertificateObject;

// Referenced classes of package org.bouncycastle.x509:
//            ExtCertificateEncodingException, X509Util

public class X509V1CertificateGenerator
{

    private AlgorithmIdentifier sigAlgId;
    private DERObjectIdentifier sigOID;
    private String signatureAlgorithm;
    private V1TBSCertificateGenerator tbsGen;

    public X509V1CertificateGenerator()
    {
        tbsGen = new V1TBSCertificateGenerator();
    }

    private X509Certificate generateJcaObject(TBSCertificateStructure tbscertificatestructure, byte abyte0[])
        throws CertificateEncodingException
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(tbscertificatestructure);
        asn1encodablevector.add(sigAlgId);
        asn1encodablevector.add(new DERBitString(abyte0));
        try
        {
            tbscertificatestructure = new X509CertificateObject(new X509CertificateStructure(new DERSequence(asn1encodablevector)));
        }
        // Misplaced declaration of an exception variable
        catch (TBSCertificateStructure tbscertificatestructure)
        {
            throw new ExtCertificateEncodingException("exception producing certificate object", tbscertificatestructure);
        }
        return tbscertificatestructure;
    }

    public X509Certificate generate(PrivateKey privatekey)
        throws CertificateEncodingException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException
    {
        return generate(privatekey, (SecureRandom)null);
    }

    public X509Certificate generate(PrivateKey privatekey, String s)
        throws CertificateEncodingException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException
    {
        return generate(privatekey, s, null);
    }

    public X509Certificate generate(PrivateKey privatekey, String s, SecureRandom securerandom)
        throws CertificateEncodingException, IllegalStateException, NoSuchProviderException, NoSuchAlgorithmException, SignatureException, InvalidKeyException
    {
        TBSCertificateStructure tbscertificatestructure = tbsGen.generateTBSCertificate();
        try
        {
            privatekey = X509Util.calculateSignature(sigOID, signatureAlgorithm, s, privatekey, securerandom, tbscertificatestructure);
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new ExtCertificateEncodingException("exception encoding TBS cert", privatekey);
        }
        return generateJcaObject(tbscertificatestructure, privatekey);
    }

    public X509Certificate generate(PrivateKey privatekey, SecureRandom securerandom)
        throws CertificateEncodingException, IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException
    {
        TBSCertificateStructure tbscertificatestructure = tbsGen.generateTBSCertificate();
        try
        {
            privatekey = X509Util.calculateSignature(sigOID, signatureAlgorithm, privatekey, securerandom, tbscertificatestructure);
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new ExtCertificateEncodingException("exception encoding TBS cert", privatekey);
        }
        return generateJcaObject(tbscertificatestructure, privatekey);
    }

    public X509Certificate generateX509Certificate(PrivateKey privatekey)
        throws SecurityException, SignatureException, InvalidKeyException
    {
        try
        {
            privatekey = generateX509Certificate(privatekey, "BC", null);
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new SecurityException("BC provider not installed!");
        }
        return privatekey;
    }

    public X509Certificate generateX509Certificate(PrivateKey privatekey, String s)
        throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException
    {
        return generateX509Certificate(privatekey, s, null);
    }

    public X509Certificate generateX509Certificate(PrivateKey privatekey, String s, SecureRandom securerandom)
        throws NoSuchProviderException, SecurityException, SignatureException, InvalidKeyException
    {
        try
        {
            privatekey = generate(privatekey, s, securerandom);
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw privatekey;
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw privatekey;
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw privatekey;
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new SecurityException((new StringBuilder()).append("exception: ").append(privatekey).toString());
        }
        return privatekey;
    }

    public X509Certificate generateX509Certificate(PrivateKey privatekey, SecureRandom securerandom)
        throws SecurityException, SignatureException, InvalidKeyException
    {
        try
        {
            privatekey = generateX509Certificate(privatekey, "BC", securerandom);
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new SecurityException("BC provider not installed!");
        }
        return privatekey;
    }

    public Iterator getSignatureAlgNames()
    {
        return X509Util.getAlgNames();
    }

    public void reset()
    {
        tbsGen = new V1TBSCertificateGenerator();
    }

    public void setIssuerDN(X500Principal x500principal)
    {
        try
        {
            tbsGen.setIssuer(new X509Principal(x500principal.getEncoded()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (X500Principal x500principal)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("can't process principal: ").append(x500principal).toString());
        }
    }

    public void setIssuerDN(X509Name x509name)
    {
        tbsGen.setIssuer(x509name);
    }

    public void setNotAfter(Date date)
    {
        tbsGen.setEndDate(new Time(date));
    }

    public void setNotBefore(Date date)
    {
        tbsGen.setStartDate(new Time(date));
    }

    public void setPublicKey(PublicKey publickey)
    {
        try
        {
            tbsGen.setSubjectPublicKeyInfo(new SubjectPublicKeyInfo((ASN1Sequence)(new ASN1InputStream(new ByteArrayInputStream(publickey.getEncoded()))).readObject()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (PublicKey publickey)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unable to process key - ").append(publickey.toString()).toString());
        }
    }

    public void setSerialNumber(BigInteger biginteger)
    {
        if (biginteger.compareTo(BigInteger.ZERO) <= 0)
        {
            throw new IllegalArgumentException("serial number must be a positive integer");
        } else
        {
            tbsGen.setSerialNumber(new DERInteger(biginteger));
            return;
        }
    }

    public void setSignatureAlgorithm(String s)
    {
        signatureAlgorithm = s;
        try
        {
            sigOID = X509Util.getAlgorithmOID(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException("Unknown signature type requested");
        }
        sigAlgId = X509Util.getSigAlgID(sigOID, s);
        tbsGen.setSignature(sigAlgId);
    }

    public void setSubjectDN(X500Principal x500principal)
    {
        try
        {
            tbsGen.setSubject(new X509Principal(x500principal.getEncoded()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (X500Principal x500principal)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("can't process principal: ").append(x500principal).toString());
        }
    }

    public void setSubjectDN(X509Name x509name)
    {
        tbsGen.setSubject(x509name);
    }
}
