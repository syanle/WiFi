// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTCTime;
import org.bouncycastle.asn1.x500.X500Name;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            Time, CRLReason, X509Extension, X509Extensions, 
//            TBSCertList, X509Name, AlgorithmIdentifier

public class V2TBSCertListGenerator
{

    private Vector crlentries;
    X509Extensions extensions;
    X509Name issuer;
    Time nextUpdate;
    AlgorithmIdentifier signature;
    Time thisUpdate;
    DERInteger version;

    public V2TBSCertListGenerator()
    {
        version = new DERInteger(1);
        nextUpdate = null;
        extensions = null;
        crlentries = null;
    }

    public void addCRLEntry(ASN1Sequence asn1sequence)
    {
        if (crlentries == null)
        {
            crlentries = new Vector();
        }
        crlentries.addElement(asn1sequence);
    }

    public void addCRLEntry(DERInteger derinteger, DERUTCTime derutctime, int i)
    {
        addCRLEntry(derinteger, new Time(derutctime), i);
    }

    public void addCRLEntry(DERInteger derinteger, Time time, int i)
    {
        addCRLEntry(derinteger, time, i, null);
    }

    public void addCRLEntry(DERInteger derinteger, Time time, int i, DERGeneralizedTime dergeneralizedtime)
    {
        Vector vector = new Vector();
        Vector vector1 = new Vector();
        if (i != 0)
        {
            CRLReason crlreason = new CRLReason(i);
            try
            {
                vector.addElement(X509Extension.reasonCode);
                vector1.addElement(new X509Extension(false, new DEROctetString(crlreason.getEncoded())));
            }
            // Misplaced declaration of an exception variable
            catch (DERInteger derinteger)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("error encoding reason: ").append(derinteger).toString());
            }
        }
        if (dergeneralizedtime != null)
        {
            try
            {
                vector.addElement(X509Extension.invalidityDate);
                vector1.addElement(new X509Extension(false, new DEROctetString(dergeneralizedtime.getEncoded())));
            }
            // Misplaced declaration of an exception variable
            catch (DERInteger derinteger)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("error encoding invalidityDate: ").append(derinteger).toString());
            }
        }
        if (vector.size() != 0)
        {
            addCRLEntry(derinteger, time, new X509Extensions(vector, vector1));
            return;
        } else
        {
            addCRLEntry(derinteger, time, ((X509Extensions) (null)));
            return;
        }
    }

    public void addCRLEntry(DERInteger derinteger, Time time, X509Extensions x509extensions)
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(derinteger);
        asn1encodablevector.add(time);
        if (x509extensions != null)
        {
            asn1encodablevector.add(x509extensions);
        }
        addCRLEntry(((ASN1Sequence) (new DERSequence(asn1encodablevector))));
    }

    public TBSCertList generateTBSCertList()
    {
        if (signature == null || issuer == null || thisUpdate == null)
        {
            throw new IllegalStateException("Not all mandatory fields set in V2 TBSCertList generator.");
        }
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(signature);
        asn1encodablevector.add(issuer);
        asn1encodablevector.add(thisUpdate);
        if (nextUpdate != null)
        {
            asn1encodablevector.add(nextUpdate);
        }
        if (crlentries != null)
        {
            ASN1EncodableVector asn1encodablevector1 = new ASN1EncodableVector();
            for (Enumeration enumeration = crlentries.elements(); enumeration.hasMoreElements(); asn1encodablevector1.add((ASN1Sequence)enumeration.nextElement())) { }
            asn1encodablevector.add(new DERSequence(asn1encodablevector1));
        }
        if (extensions != null)
        {
            asn1encodablevector.add(new DERTaggedObject(0, extensions));
        }
        return new TBSCertList(new DERSequence(asn1encodablevector));
    }

    public void setExtensions(X509Extensions x509extensions)
    {
        extensions = x509extensions;
    }

    public void setIssuer(X500Name x500name)
    {
        issuer = X509Name.getInstance(x500name);
    }

    public void setIssuer(X509Name x509name)
    {
        issuer = x509name;
    }

    public void setNextUpdate(DERUTCTime derutctime)
    {
        nextUpdate = new Time(derutctime);
    }

    public void setNextUpdate(Time time)
    {
        nextUpdate = time;
    }

    public void setSignature(AlgorithmIdentifier algorithmidentifier)
    {
        signature = algorithmidentifier;
    }

    public void setThisUpdate(DERUTCTime derutctime)
    {
        thisUpdate = new Time(derutctime);
    }

    public void setThisUpdate(Time time)
    {
        thisUpdate = time;
    }
}
