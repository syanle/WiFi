// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactorySpi;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.SignedData;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.X509CertificateStructure;

// Referenced classes of package org.bouncycastle.jce.provider:
//            PEMUtil, X509CertificateObject, X509CRLObject, ProviderUtil, 
//            PKIXCertPath

public class JDKX509CertificateFactory extends CertificateFactorySpi
{

    private static final PEMUtil PEM_CERT_PARSER = new PEMUtil("CERTIFICATE");
    private static final PEMUtil PEM_CRL_PARSER = new PEMUtil("CRL");
    private InputStream currentCrlStream;
    private InputStream currentStream;
    private ASN1Set sCrlData;
    private int sCrlDataObjectCount;
    private ASN1Set sData;
    private int sDataObjectCount;

    public JDKX509CertificateFactory()
    {
        sData = null;
        sDataObjectCount = 0;
        currentStream = null;
        sCrlData = null;
        sCrlDataObjectCount = 0;
        currentCrlStream = null;
    }

    private CRL getCRL()
        throws CRLException
    {
        if (sCrlData == null || sCrlDataObjectCount >= sCrlData.size())
        {
            return null;
        } else
        {
            ASN1Set asn1set = sCrlData;
            int i = sCrlDataObjectCount;
            sCrlDataObjectCount = i + 1;
            return createCRL(CertificateList.getInstance(asn1set.getObjectAt(i)));
        }
    }

    private Certificate getCertificate()
        throws CertificateParsingException
    {
        if (sData != null)
        {
            while (sDataObjectCount < sData.size()) 
            {
                Object obj = sData;
                int i = sDataObjectCount;
                sDataObjectCount = i + 1;
                obj = ((ASN1Set) (obj)).getObjectAt(i);
                if (obj instanceof ASN1Sequence)
                {
                    return new X509CertificateObject(X509CertificateStructure.getInstance(obj));
                }
            }
        }
        return null;
    }

    private CRL readDERCRL(ASN1InputStream asn1inputstream)
        throws IOException, CRLException
    {
        asn1inputstream = (ASN1Sequence)asn1inputstream.readObject();
        if (asn1inputstream.size() > 1 && (asn1inputstream.getObjectAt(0) instanceof DERObjectIdentifier) && asn1inputstream.getObjectAt(0).equals(PKCSObjectIdentifiers.signedData))
        {
            sCrlData = (new SignedData(ASN1Sequence.getInstance((ASN1TaggedObject)asn1inputstream.getObjectAt(1), true))).getCRLs();
            return getCRL();
        } else
        {
            return createCRL(CertificateList.getInstance(asn1inputstream));
        }
    }

    private Certificate readDERCertificate(ASN1InputStream asn1inputstream)
        throws IOException, CertificateParsingException
    {
        asn1inputstream = (ASN1Sequence)asn1inputstream.readObject();
        if (asn1inputstream.size() > 1 && (asn1inputstream.getObjectAt(0) instanceof DERObjectIdentifier) && asn1inputstream.getObjectAt(0).equals(PKCSObjectIdentifiers.signedData))
        {
            sData = (new SignedData(ASN1Sequence.getInstance((ASN1TaggedObject)asn1inputstream.getObjectAt(1), true))).getCertificates();
            return getCertificate();
        } else
        {
            return new X509CertificateObject(X509CertificateStructure.getInstance(asn1inputstream));
        }
    }

    private CRL readPEMCRL(InputStream inputstream)
        throws IOException, CRLException
    {
        inputstream = PEM_CRL_PARSER.readPEMObject(inputstream);
        if (inputstream != null)
        {
            return createCRL(CertificateList.getInstance(inputstream));
        } else
        {
            return null;
        }
    }

    private Certificate readPEMCertificate(InputStream inputstream)
        throws IOException, CertificateParsingException
    {
        inputstream = PEM_CERT_PARSER.readPEMObject(inputstream);
        if (inputstream != null)
        {
            return new X509CertificateObject(X509CertificateStructure.getInstance(inputstream));
        } else
        {
            return null;
        }
    }

    protected CRL createCRL(CertificateList certificatelist)
        throws CRLException
    {
        return new X509CRLObject(certificatelist);
    }

    public CRL engineGenerateCRL(InputStream inputstream)
        throws CRLException
    {
        Object obj = null;
        if (currentCrlStream != null) goto _L2; else goto _L1
_L1:
        currentCrlStream = inputstream;
        sCrlData = null;
        sCrlDataObjectCount = 0;
_L10:
        if (sCrlData == null) goto _L4; else goto _L3
_L3:
        if (sCrlDataObjectCount == sCrlData.size()) goto _L6; else goto _L5
_L5:
        inputstream = getCRL();
_L8:
        return inputstream;
_L2:
        if (currentCrlStream != inputstream)
        {
            currentCrlStream = inputstream;
            sCrlData = null;
            sCrlDataObjectCount = 0;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        sCrlData = null;
        sCrlDataObjectCount = 0;
        return null;
        inputstream;
        throw inputstream;
_L4:
        PushbackInputStream pushbackinputstream;
        int i;
        int j;
        i = ProviderUtil.getReadLimit(inputstream);
        pushbackinputstream = new PushbackInputStream(inputstream);
        j = pushbackinputstream.read();
        inputstream = obj;
        if (j == -1) goto _L8; else goto _L7
_L7:
        pushbackinputstream.unread(j);
        if (j == 48)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        return readPEMCRL(pushbackinputstream);
        inputstream = readDERCRL(new ASN1InputStream(pushbackinputstream, i, true));
        return inputstream;
        inputstream;
        throw new CRLException(inputstream.toString());
        if (true) goto _L10; else goto _L9
_L9:
    }

    public Collection engineGenerateCRLs(InputStream inputstream)
        throws CRLException
    {
        ArrayList arraylist = new ArrayList();
        do
        {
            CRL crl = engineGenerateCRL(inputstream);
            if (crl != null)
            {
                arraylist.add(crl);
            } else
            {
                return arraylist;
            }
        } while (true);
    }

    public CertPath engineGenerateCertPath(InputStream inputstream)
        throws CertificateException
    {
        return engineGenerateCertPath(inputstream, "PkiPath");
    }

    public CertPath engineGenerateCertPath(InputStream inputstream, String s)
        throws CertificateException
    {
        return new PKIXCertPath(inputstream, s);
    }

    public CertPath engineGenerateCertPath(List list)
        throws CertificateException
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Object obj = iterator.next();
            if (obj != null && !(obj instanceof X509Certificate))
            {
                throw new CertificateException((new StringBuilder()).append("list contains non X509Certificate object while creating CertPath\n").append(obj.toString()).toString());
            }
        }

        return new PKIXCertPath(list);
    }

    public Certificate engineGenerateCertificate(InputStream inputstream)
        throws CertificateException
    {
        Object obj = null;
        if (currentStream != null) goto _L2; else goto _L1
_L1:
        currentStream = inputstream;
        sData = null;
        sDataObjectCount = 0;
_L10:
        if (sData == null) goto _L4; else goto _L3
_L3:
        if (sDataObjectCount == sData.size()) goto _L6; else goto _L5
_L5:
        inputstream = getCertificate();
_L8:
        return inputstream;
_L2:
        if (currentStream != inputstream)
        {
            currentStream = inputstream;
            sData = null;
            sDataObjectCount = 0;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        try
        {
            sData = null;
            sDataObjectCount = 0;
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            throw new CertificateException(inputstream);
        }
        return null;
_L4:
        PushbackInputStream pushbackinputstream;
        int i;
        int j;
        i = ProviderUtil.getReadLimit(inputstream);
        pushbackinputstream = new PushbackInputStream(inputstream);
        j = pushbackinputstream.read();
        inputstream = obj;
        if (j == -1) goto _L8; else goto _L7
_L7:
        pushbackinputstream.unread(j);
        if (j == 48)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        return readPEMCertificate(pushbackinputstream);
        inputstream = readDERCertificate(new ASN1InputStream(pushbackinputstream, i));
        return inputstream;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public Collection engineGenerateCertificates(InputStream inputstream)
        throws CertificateException
    {
        ArrayList arraylist = new ArrayList();
        do
        {
            Certificate certificate = engineGenerateCertificate(inputstream);
            if (certificate != null)
            {
                arraylist.add(certificate);
            } else
            {
                return arraylist;
            }
        } while (true);
    }

    public Iterator engineGetCertPathEncodings()
    {
        return PKIXCertPath.certPathEncodings.iterator();
    }

}
