// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x9:
//            DHValidationParms

public class DHDomainParameters extends ASN1Encodable
{

    private DERInteger g;
    private DERInteger j;
    private DERInteger p;
    private DERInteger q;
    private DHValidationParms validationParms;

    private DHDomainParameters(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 3 || asn1sequence.size() > 5)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        Enumeration enumeration = asn1sequence.getObjects();
        p = DERInteger.getInstance(enumeration.nextElement());
        g = DERInteger.getInstance(enumeration.nextElement());
        q = DERInteger.getInstance(enumeration.nextElement());
        DEREncodable derencodable = getNext(enumeration);
        asn1sequence = derencodable;
        if (derencodable != null)
        {
            asn1sequence = derencodable;
            if (derencodable instanceof DERInteger)
            {
                j = DERInteger.getInstance(derencodable);
                asn1sequence = getNext(enumeration);
            }
        }
        if (asn1sequence != null)
        {
            validationParms = DHValidationParms.getInstance(asn1sequence.getDERObject());
        }
    }

    public DHDomainParameters(DERInteger derinteger, DERInteger derinteger1, DERInteger derinteger2, DERInteger derinteger3, DHValidationParms dhvalidationparms)
    {
        if (derinteger == null)
        {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (derinteger1 == null)
        {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (derinteger2 == null)
        {
            throw new IllegalArgumentException("'q' cannot be null");
        } else
        {
            p = derinteger;
            g = derinteger1;
            q = derinteger2;
            j = derinteger3;
            validationParms = dhvalidationparms;
            return;
        }
    }

    public static DHDomainParameters getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DHDomainParameters))
        {
            return (DHDomainParameters)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new DHDomainParameters((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid DHDomainParameters: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DHDomainParameters getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    private static DEREncodable getNext(Enumeration enumeration)
    {
        if (enumeration.hasMoreElements())
        {
            return (DEREncodable)enumeration.nextElement();
        } else
        {
            return null;
        }
    }

    public DERInteger getG()
    {
        return g;
    }

    public DERInteger getJ()
    {
        return j;
    }

    public DERInteger getP()
    {
        return p;
    }

    public DERInteger getQ()
    {
        return q;
    }

    public DHValidationParms getValidationParms()
    {
        return validationParms;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(p);
        asn1encodablevector.add(g);
        asn1encodablevector.add(q);
        if (j != null)
        {
            asn1encodablevector.add(j);
        }
        if (validationParms != null)
        {
            asn1encodablevector.add(validationParms);
        }
        return new DERSequence(asn1encodablevector);
    }
}
