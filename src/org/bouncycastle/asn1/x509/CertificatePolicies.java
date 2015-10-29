// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class CertificatePolicies extends ASN1Encodable
{

    static final DERObjectIdentifier anyPolicy = new DERObjectIdentifier("2.5.29.32.0");
    Vector policies;

    public CertificatePolicies(String s)
    {
        this(new DERObjectIdentifier(s));
    }

    public CertificatePolicies(ASN1Sequence asn1sequence)
    {
        policies = new Vector();
        ASN1Sequence asn1sequence1;
        for (asn1sequence = asn1sequence.getObjects(); asn1sequence.hasMoreElements(); policies.addElement(asn1sequence1.getObjectAt(0)))
        {
            asn1sequence1 = ASN1Sequence.getInstance(asn1sequence.nextElement());
        }

    }

    public CertificatePolicies(DERObjectIdentifier derobjectidentifier)
    {
        policies = new Vector();
        policies.addElement(derobjectidentifier);
    }

    public static CertificatePolicies getInstance(Object obj)
    {
        if (obj instanceof CertificatePolicies)
        {
            return (CertificatePolicies)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertificatePolicies((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static CertificatePolicies getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public void addPolicy(String s)
    {
        policies.addElement(new DERObjectIdentifier(s));
    }

    public String getPolicy(int i)
    {
        if (policies.size() > i)
        {
            return ((DERObjectIdentifier)policies.elementAt(i)).getId();
        } else
        {
            return null;
        }
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i < policies.size(); i++)
        {
            asn1encodablevector.add(new DERSequence((DERObjectIdentifier)policies.elementAt(i)));
        }

        return new DERSequence(asn1encodablevector);
    }

    public String toString()
    {
        String s = null;
        for (int i = 0; i < policies.size(); i++)
        {
            String s1 = s;
            if (s != null)
            {
                s1 = (new StringBuilder()).append(s).append(", ").toString();
            }
            s = (new StringBuilder()).append(s1).append(((DERObjectIdentifier)policies.elementAt(i)).getId()).toString();
        }

        return (new StringBuilder()).append("CertificatePolicies: ").append(s).toString();
    }

}
