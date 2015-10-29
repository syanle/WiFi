// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTCTime;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            AlgorithmIdentifier, X509Name, Time, X509Extensions

public class TBSCertList extends ASN1Encodable
{
    public static class CRLEntry extends ASN1Encodable
    {

        X509Extensions crlEntryExtensions;
        Time revocationDate;
        ASN1Sequence seq;
        DERInteger userCertificate;

        public X509Extensions getExtensions()
        {
            if (crlEntryExtensions == null && seq.size() == 3)
            {
                crlEntryExtensions = X509Extensions.getInstance(seq.getObjectAt(2));
            }
            return crlEntryExtensions;
        }

        public Time getRevocationDate()
        {
            return revocationDate;
        }

        public DERInteger getUserCertificate()
        {
            return userCertificate;
        }

        public DERObject toASN1Object()
        {
            return seq;
        }

        public CRLEntry(ASN1Sequence asn1sequence)
        {
            if (asn1sequence.size() < 2 || asn1sequence.size() > 3)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
            } else
            {
                seq = asn1sequence;
                userCertificate = DERInteger.getInstance(asn1sequence.getObjectAt(0));
                revocationDate = Time.getInstance(asn1sequence.getObjectAt(1));
                return;
            }
        }
    }

    private class EmptyEnumeration
        implements Enumeration
    {

        final TBSCertList this$0;

        public boolean hasMoreElements()
        {
            return false;
        }

        public Object nextElement()
        {
            return null;
        }

        private EmptyEnumeration()
        {
            this$0 = TBSCertList.this;
            super();
        }

    }

    private class RevokedCertificatesEnumeration
        implements Enumeration
    {

        private final Enumeration en;
        final TBSCertList this$0;

        public boolean hasMoreElements()
        {
            return en.hasMoreElements();
        }

        public Object nextElement()
        {
            return new CRLEntry(ASN1Sequence.getInstance(en.nextElement()));
        }

        RevokedCertificatesEnumeration(Enumeration enumeration)
        {
            this$0 = TBSCertList.this;
            super();
            en = enumeration;
        }
    }


    X509Extensions crlExtensions;
    X509Name issuer;
    Time nextUpdate;
    ASN1Sequence revokedCertificates;
    ASN1Sequence seq;
    AlgorithmIdentifier signature;
    Time thisUpdate;
    DERInteger version;

    public TBSCertList(ASN1Sequence asn1sequence)
    {
label0:
        {
            super();
            if (asn1sequence.size() < 3 || asn1sequence.size() > 7)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
            }
            seq = asn1sequence;
            int i;
            int j;
            if (asn1sequence.getObjectAt(0) instanceof DERInteger)
            {
                i = 1;
                version = DERInteger.getInstance(asn1sequence.getObjectAt(0));
            } else
            {
                version = new DERInteger(0);
                i = 0;
            }
            j = i + 1;
            signature = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(i));
            i = j + 1;
            issuer = X509Name.getInstance(asn1sequence.getObjectAt(j));
            j = i + 1;
            thisUpdate = Time.getInstance(asn1sequence.getObjectAt(i));
            i = j;
            if (j >= asn1sequence.size())
            {
                break label0;
            }
            if (!(asn1sequence.getObjectAt(j) instanceof DERUTCTime) && !(asn1sequence.getObjectAt(j) instanceof DERGeneralizedTime))
            {
                i = j;
                if (!(asn1sequence.getObjectAt(j) instanceof Time))
                {
                    break label0;
                }
            }
            nextUpdate = Time.getInstance(asn1sequence.getObjectAt(j));
            i = j + 1;
        }
        j = i;
        if (i < asn1sequence.size())
        {
            j = i;
            if (!(asn1sequence.getObjectAt(i) instanceof DERTaggedObject))
            {
                revokedCertificates = ASN1Sequence.getInstance(asn1sequence.getObjectAt(i));
                j = i + 1;
            }
        }
        if (j < asn1sequence.size() && (asn1sequence.getObjectAt(j) instanceof DERTaggedObject))
        {
            crlExtensions = X509Extensions.getInstance(asn1sequence.getObjectAt(j));
        }
    }

    public static TBSCertList getInstance(Object obj)
    {
        if (obj instanceof TBSCertList)
        {
            return (TBSCertList)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new TBSCertList((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static TBSCertList getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public X509Extensions getExtensions()
    {
        return crlExtensions;
    }

    public X509Name getIssuer()
    {
        return issuer;
    }

    public Time getNextUpdate()
    {
        return nextUpdate;
    }

    public Enumeration getRevokedCertificateEnumeration()
    {
        if (revokedCertificates == null)
        {
            return new EmptyEnumeration();
        } else
        {
            return new RevokedCertificatesEnumeration(revokedCertificates.getObjects());
        }
    }

    public CRLEntry[] getRevokedCertificates()
    {
        int i = 0;
        if (revokedCertificates == null)
        {
            return new CRLEntry[0];
        }
        CRLEntry acrlentry[];
        for (acrlentry = new CRLEntry[revokedCertificates.size()]; i < acrlentry.length; i++)
        {
            acrlentry[i] = new CRLEntry(ASN1Sequence.getInstance(revokedCertificates.getObjectAt(i)));
        }

        return acrlentry;
    }

    public AlgorithmIdentifier getSignature()
    {
        return signature;
    }

    public Time getThisUpdate()
    {
        return thisUpdate;
    }

    public int getVersion()
    {
        return version.getValue().intValue() + 1;
    }

    public DERInteger getVersionNumber()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
