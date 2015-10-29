// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CRLNumber;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.TBSCertList;
import org.bouncycastle.asn1.x509.Time;
import org.bouncycastle.asn1.x509.X509Extension;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.x509.extension.X509ExtensionUtil;

// Referenced classes of package org.bouncycastle.jce.provider:
//            X509SignatureUtil, ExtCRLException, X509CRLEntryObject, RFC3280CertPathUtilities, 
//            BouncyCastleProvider

public class X509CRLObject extends X509CRL
{

    private CertificateList c;
    private boolean isIndirect;
    private String sigAlgName;
    private byte sigAlgParams[];

    public X509CRLObject(CertificateList certificatelist)
        throws CRLException
    {
        c = certificatelist;
        sigAlgName = X509SignatureUtil.getSignatureName(certificatelist.getSignatureAlgorithm());
        if (certificatelist.getSignatureAlgorithm().getParameters() == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        sigAlgParams = ((ASN1Encodable)certificatelist.getSignatureAlgorithm().getParameters()).getDEREncoded();
_L1:
        isIndirect = isIndirectCRL();
        return;
        try
        {
            sigAlgParams = null;
        }
        // Misplaced declaration of an exception variable
        catch (CertificateList certificatelist)
        {
            throw new CRLException((new StringBuilder()).append("CRL contents invalid: ").append(certificatelist).toString());
        }
          goto _L1
    }

    private Set getExtensionOIDs(boolean flag)
    {
        if (getVersion() == 2)
        {
            X509Extensions x509extensions = c.getTBSCertList().getExtensions();
            if (x509extensions != null)
            {
                HashSet hashset = new HashSet();
                Enumeration enumeration = x509extensions.oids();
                do
                {
                    if (!enumeration.hasMoreElements())
                    {
                        break;
                    }
                    DERObjectIdentifier derobjectidentifier = (DERObjectIdentifier)enumeration.nextElement();
                    if (flag == x509extensions.getExtension(derobjectidentifier).isCritical())
                    {
                        hashset.add(derobjectidentifier.getId());
                    }
                } while (true);
                return hashset;
            }
        }
        return null;
    }

    private boolean isIndirectCRL()
        throws CRLException
    {
        byte abyte0[] = getExtensionValue(X509Extensions.IssuingDistributionPoint.getId());
        boolean flag = false;
        if (abyte0 != null)
        {
            try
            {
                flag = IssuingDistributionPoint.getInstance(X509ExtensionUtil.fromExtensionValue(abyte0)).isIndirectCRL();
            }
            catch (Exception exception)
            {
                throw new ExtCRLException("Exception reading IssuingDistributionPoint", exception);
            }
        }
        return flag;
    }

    private Set loadCRLEntries()
    {
        HashSet hashset = new HashSet();
        Enumeration enumeration = c.getRevokedCertificateEnumeration();
        for (Object obj = getIssuerX500Principal(); enumeration.hasMoreElements(); obj = ((X509CRLEntryObject) (obj)).getCertificateIssuer())
        {
            obj = new X509CRLEntryObject((org.bouncycastle.asn1.x509.TBSCertList.CRLEntry)enumeration.nextElement(), isIndirect, ((X500Principal) (obj)));
            hashset.add(obj);
        }

        return hashset;
    }

    public Set getCriticalExtensionOIDs()
    {
        return getExtensionOIDs(true);
    }

    public byte[] getEncoded()
        throws CRLException
    {
        byte abyte0[];
        try
        {
            abyte0 = c.getEncoded("DER");
        }
        catch (IOException ioexception)
        {
            throw new CRLException(ioexception.toString());
        }
        return abyte0;
    }

    public byte[] getExtensionValue(String s)
    {
        X509Extensions x509extensions = c.getTBSCertList().getExtensions();
        if (x509extensions != null)
        {
            s = x509extensions.getExtension(new DERObjectIdentifier(s));
            if (s != null)
            {
                try
                {
                    s = s.getValue().getEncoded();
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    throw new IllegalStateException((new StringBuilder()).append("error parsing ").append(s.toString()).toString());
                }
                return s;
            }
        }
        return null;
    }

    public Principal getIssuerDN()
    {
        return new X509Principal(c.getIssuer());
    }

    public X500Principal getIssuerX500Principal()
    {
        Object obj;
        try
        {
            obj = new ByteArrayOutputStream();
            (new ASN1OutputStream(((java.io.OutputStream) (obj)))).writeObject(c.getIssuer());
            obj = new X500Principal(((ByteArrayOutputStream) (obj)).toByteArray());
        }
        catch (IOException ioexception)
        {
            throw new IllegalStateException("can't encode issuer DN");
        }
        return ((X500Principal) (obj));
    }

    public Date getNextUpdate()
    {
        if (c.getNextUpdate() != null)
        {
            return c.getNextUpdate().getDate();
        } else
        {
            return null;
        }
    }

    public Set getNonCriticalExtensionOIDs()
    {
        return getExtensionOIDs(false);
    }

    public X509CRLEntry getRevokedCertificate(BigInteger biginteger)
    {
        Enumeration enumeration = c.getRevokedCertificateEnumeration();
        for (Object obj = getIssuerX500Principal(); enumeration.hasMoreElements(); obj = ((X509CRLEntryObject) (obj)).getCertificateIssuer())
        {
            org.bouncycastle.asn1.x509.TBSCertList.CRLEntry crlentry = (org.bouncycastle.asn1.x509.TBSCertList.CRLEntry)enumeration.nextElement();
            obj = new X509CRLEntryObject(crlentry, isIndirect, ((X500Principal) (obj)));
            if (biginteger.equals(crlentry.getUserCertificate().getValue()))
            {
                return ((X509CRLEntry) (obj));
            }
        }

        return null;
    }

    public Set getRevokedCertificates()
    {
        Set set = loadCRLEntries();
        if (!set.isEmpty())
        {
            return Collections.unmodifiableSet(set);
        } else
        {
            return null;
        }
    }

    public String getSigAlgName()
    {
        return sigAlgName;
    }

    public String getSigAlgOID()
    {
        return c.getSignatureAlgorithm().getObjectId().getId();
    }

    public byte[] getSigAlgParams()
    {
        if (sigAlgParams != null)
        {
            byte abyte0[] = new byte[sigAlgParams.length];
            System.arraycopy(sigAlgParams, 0, abyte0, 0, abyte0.length);
            return abyte0;
        } else
        {
            return null;
        }
    }

    public byte[] getSignature()
    {
        return c.getSignature().getBytes();
    }

    public byte[] getTBSCertList()
        throws CRLException
    {
        byte abyte0[];
        try
        {
            abyte0 = c.getTBSCertList().getEncoded("DER");
        }
        catch (IOException ioexception)
        {
            throw new CRLException(ioexception.toString());
        }
        return abyte0;
    }

    public Date getThisUpdate()
    {
        return c.getThisUpdate().getDate();
    }

    public int getVersion()
    {
        return c.getVersion();
    }

    public boolean hasUnsupportedCriticalExtension()
    {
        Set set = getCriticalExtensionOIDs();
        if (set != null)
        {
            set.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
            set.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
            if (!set.isEmpty())
            {
                return true;
            }
        }
        return false;
    }

    public boolean isRevoked(Certificate certificate)
    {
        org.bouncycastle.asn1.x509.TBSCertList.CRLEntry acrlentry[];
        boolean flag;
        boolean flag1;
        flag1 = false;
        if (!certificate.getType().equals("X.509"))
        {
            throw new RuntimeException("X.509 CRL used with non X.509 Cert");
        }
        acrlentry = c.getRevokedCertificates();
        flag = flag1;
        if (acrlentry == null) goto _L2; else goto _L1
_L1:
        int i;
        certificate = ((X509Certificate)certificate).getSerialNumber();
        i = 0;
_L7:
        flag = flag1;
        if (i >= acrlentry.length) goto _L2; else goto _L3
_L3:
        if (!acrlentry[i].getUserCertificate().getValue().equals(certificate)) goto _L5; else goto _L4
_L4:
        flag = true;
_L2:
        return flag;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public String toString()
    {
        StringBuffer stringbuffer;
        String s;
        X509Extensions x509extensions;
        stringbuffer = new StringBuffer();
        s = System.getProperty("line.separator");
        stringbuffer.append("              Version: ").append(getVersion()).append(s);
        stringbuffer.append("             IssuerDN: ").append(getIssuerDN()).append(s);
        stringbuffer.append("          This update: ").append(getThisUpdate()).append(s);
        stringbuffer.append("          Next update: ").append(getNextUpdate()).append(s);
        stringbuffer.append("  Signature Algorithm: ").append(getSigAlgName()).append(s);
        byte abyte0[] = getSignature();
        stringbuffer.append("            Signature: ").append(new String(Hex.encode(abyte0, 0, 20))).append(s);
        int i = 20;
        while (i < abyte0.length) 
        {
            if (i < abyte0.length - 20)
            {
                stringbuffer.append("                       ").append(new String(Hex.encode(abyte0, i, 20))).append(s);
            } else
            {
                stringbuffer.append("                       ").append(new String(Hex.encode(abyte0, i, abyte0.length - i))).append(s);
            }
            i += 20;
        }
        x509extensions = c.getTBSCertList().getExtensions();
        if (x509extensions == null) goto _L2; else goto _L1
_L1:
        Enumeration enumeration;
        enumeration = x509extensions.oids();
        if (enumeration.hasMoreElements())
        {
            stringbuffer.append("           Extensions: ").append(s);
        }
_L3:
        DERObjectIdentifier derobjectidentifier;
        ASN1InputStream asn1inputstream;
        if (!enumeration.hasMoreElements())
        {
            break; /* Loop/switch isn't completed */
        }
        derobjectidentifier = (DERObjectIdentifier)enumeration.nextElement();
        X509Extension x509extension = x509extensions.getExtension(derobjectidentifier);
        if (x509extension.getValue() == null)
        {
            break MISSING_BLOCK_LABEL_645;
        }
        asn1inputstream = new ASN1InputStream(x509extension.getValue().getOctets());
        stringbuffer.append("                       critical(").append(x509extension.isCritical()).append(") ");
        Exception exception;
        if (derobjectidentifier.equals(X509Extensions.CRLNumber))
        {
            stringbuffer.append(new CRLNumber(DERInteger.getInstance(asn1inputstream.readObject()).getPositiveValue())).append(s);
            continue; /* Loop/switch isn't completed */
        }
        if (derobjectidentifier.equals(X509Extensions.DeltaCRLIndicator))
        {
            stringbuffer.append((new StringBuilder()).append("Base CRL: ").append(new CRLNumber(DERInteger.getInstance(asn1inputstream.readObject()).getPositiveValue())).toString()).append(s);
            continue; /* Loop/switch isn't completed */
        }
        if (derobjectidentifier.equals(X509Extensions.IssuingDistributionPoint))
        {
            stringbuffer.append(new IssuingDistributionPoint((ASN1Sequence)asn1inputstream.readObject())).append(s);
            continue; /* Loop/switch isn't completed */
        }
        if (derobjectidentifier.equals(X509Extensions.CRLDistributionPoints))
        {
            stringbuffer.append(new CRLDistPoint((ASN1Sequence)asn1inputstream.readObject())).append(s);
            continue; /* Loop/switch isn't completed */
        }
        if (derobjectidentifier.equals(X509Extensions.FreshestCRL))
        {
            stringbuffer.append(new CRLDistPoint((ASN1Sequence)asn1inputstream.readObject())).append(s);
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            stringbuffer.append(derobjectidentifier.getId());
            stringbuffer.append(" value = ").append(ASN1Dump.dumpAsString(asn1inputstream.readObject())).append(s);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            stringbuffer.append(derobjectidentifier.getId());
            stringbuffer.append(" value = ").append("*****").append(s);
        }
        continue; /* Loop/switch isn't completed */
        stringbuffer.append(s);
        if (true) goto _L3; else goto _L2
_L2:
        Object obj = getRevokedCertificates();
        if (obj != null)
        {
            for (obj = ((Set) (obj)).iterator(); ((Iterator) (obj)).hasNext(); stringbuffer.append(s))
            {
                stringbuffer.append(((Iterator) (obj)).next());
            }

        }
        return stringbuffer.toString();
    }

    public void verify(PublicKey publickey)
        throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException
    {
        verify(publickey, BouncyCastleProvider.PROVIDER_NAME);
    }

    public void verify(PublicKey publickey, String s)
        throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException
    {
        if (!c.getSignatureAlgorithm().equals(c.getTBSCertList().getSignature()))
        {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        s = Signature.getInstance(getSigAlgName(), s);
        s.initVerify(publickey);
        s.update(getTBSCertList());
        if (!s.verify(getSignature()))
        {
            throw new SignatureException("CRL does not verify with supplied public key.");
        } else
        {
            return;
        }
    }
}
