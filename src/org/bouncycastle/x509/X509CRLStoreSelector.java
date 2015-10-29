// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.extension.X509ExtensionUtil;

// Referenced classes of package org.bouncycastle.x509:
//            X509AttributeCertificate

public class X509CRLStoreSelector extends X509CRLSelector
    implements Selector
{

    private X509AttributeCertificate attrCertChecking;
    private boolean completeCRLEnabled;
    private boolean deltaCRLIndicator;
    private byte issuingDistributionPoint[];
    private boolean issuingDistributionPointEnabled;
    private BigInteger maxBaseCRLNumber;

    public X509CRLStoreSelector()
    {
        deltaCRLIndicator = false;
        completeCRLEnabled = false;
        maxBaseCRLNumber = null;
        issuingDistributionPoint = null;
        issuingDistributionPointEnabled = false;
    }

    public static X509CRLStoreSelector getInstance(X509CRLSelector x509crlselector)
    {
        if (x509crlselector == null)
        {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        X509CRLStoreSelector x509crlstoreselector = new X509CRLStoreSelector();
        x509crlstoreselector.setCertificateChecking(x509crlselector.getCertificateChecking());
        x509crlstoreselector.setDateAndTime(x509crlselector.getDateAndTime());
        try
        {
            x509crlstoreselector.setIssuerNames(x509crlselector.getIssuerNames());
        }
        // Misplaced declaration of an exception variable
        catch (X509CRLSelector x509crlselector)
        {
            throw new IllegalArgumentException(x509crlselector.getMessage());
        }
        x509crlstoreselector.setIssuers(x509crlselector.getIssuers());
        x509crlstoreselector.setMaxCRLNumber(x509crlselector.getMaxCRL());
        x509crlstoreselector.setMinCRLNumber(x509crlselector.getMinCRL());
        return x509crlstoreselector;
    }

    public Object clone()
    {
        X509CRLStoreSelector x509crlstoreselector = getInstance(this);
        x509crlstoreselector.deltaCRLIndicator = deltaCRLIndicator;
        x509crlstoreselector.completeCRLEnabled = completeCRLEnabled;
        x509crlstoreselector.maxBaseCRLNumber = maxBaseCRLNumber;
        x509crlstoreselector.attrCertChecking = attrCertChecking;
        x509crlstoreselector.issuingDistributionPointEnabled = issuingDistributionPointEnabled;
        x509crlstoreselector.issuingDistributionPoint = Arrays.clone(issuingDistributionPoint);
        return x509crlstoreselector;
    }

    public X509AttributeCertificate getAttrCertificateChecking()
    {
        return attrCertChecking;
    }

    public byte[] getIssuingDistributionPoint()
    {
        return Arrays.clone(issuingDistributionPoint);
    }

    public BigInteger getMaxBaseCRLNumber()
    {
        return maxBaseCRLNumber;
    }

    public boolean isCompleteCRLEnabled()
    {
        return completeCRLEnabled;
    }

    public boolean isDeltaCRLIndicatorEnabled()
    {
        return deltaCRLIndicator;
    }

    public boolean isIssuingDistributionPointEnabled()
    {
        return issuingDistributionPointEnabled;
    }

    public boolean match(Object obj)
    {
        DERInteger derinteger;
        X509CRL x509crl;
        if (!(obj instanceof X509CRL))
        {
            return false;
        }
        x509crl = (X509CRL)obj;
        derinteger = null;
        byte abyte1[];
        try
        {
            abyte1 = x509crl.getExtensionValue(X509Extensions.DeltaCRLIndicator.getId());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        if (abyte1 == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        derinteger = DERInteger.getInstance(X509ExtensionUtil.fromExtensionValue(abyte1));
        if (isDeltaCRLIndicatorEnabled() && derinteger == null)
        {
            return false;
        }
        if (isCompleteCRLEnabled() && derinteger != null)
        {
            return false;
        }
        if (derinteger != null && maxBaseCRLNumber != null && derinteger.getPositiveValue().compareTo(maxBaseCRLNumber) == 1)
        {
            return false;
        }
        if (issuingDistributionPointEnabled)
        {
            byte abyte0[] = x509crl.getExtensionValue(X509Extensions.IssuingDistributionPoint.getId());
            if (issuingDistributionPoint == null)
            {
                if (abyte0 != null)
                {
                    return false;
                }
            } else
            if (!Arrays.areEqual(abyte0, issuingDistributionPoint))
            {
                return false;
            }
        }
        return super.match((X509CRL)obj);
    }

    public boolean match(CRL crl)
    {
        return match(crl);
    }

    public void setAttrCertificateChecking(X509AttributeCertificate x509attributecertificate)
    {
        attrCertChecking = x509attributecertificate;
    }

    public void setCompleteCRLEnabled(boolean flag)
    {
        completeCRLEnabled = flag;
    }

    public void setDeltaCRLIndicatorEnabled(boolean flag)
    {
        deltaCRLIndicator = flag;
    }

    public void setIssuingDistributionPoint(byte abyte0[])
    {
        issuingDistributionPoint = Arrays.clone(abyte0);
    }

    public void setIssuingDistributionPointEnabled(boolean flag)
    {
        issuingDistributionPointEnabled = flag;
    }

    public void setMaxBaseCRLNumber(BigInteger biginteger)
    {
        maxBaseCRLNumber = biginteger;
    }
}
