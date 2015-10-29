// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x9:
//            DHDomainParameters

public class DHValidationParms extends ASN1Encodable
{

    private DERInteger pgenCounter;
    private DERBitString seed;

    private DHValidationParms(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        } else
        {
            seed = DERBitString.getInstance(asn1sequence.getObjectAt(0));
            pgenCounter = DERInteger.getInstance(asn1sequence.getObjectAt(1));
            return;
        }
    }

    public DHValidationParms(DERBitString derbitstring, DERInteger derinteger)
    {
        if (derbitstring == null)
        {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        if (derinteger == null)
        {
            throw new IllegalArgumentException("'pgenCounter' cannot be null");
        } else
        {
            seed = derbitstring;
            pgenCounter = derinteger;
            return;
        }
    }

    public static DHValidationParms getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DHDomainParameters))
        {
            return (DHValidationParms)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new DHValidationParms((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid DHValidationParms: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DHValidationParms getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERInteger getPgenCounter()
    {
        return pgenCounter;
    }

    public DERBitString getSeed()
    {
        return seed;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(seed);
        asn1encodablevector.add(pgenCounter);
        return new DERSequence(asn1encodablevector);
    }
}
