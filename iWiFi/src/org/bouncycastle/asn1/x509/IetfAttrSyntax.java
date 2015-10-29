// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTF8String;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            GeneralNames

public class IetfAttrSyntax extends ASN1Encodable
{

    public static final int VALUE_OCTETS = 1;
    public static final int VALUE_OID = 2;
    public static final int VALUE_UTF8 = 3;
    GeneralNames policyAuthority;
    int valueChoice;
    Vector values;

    public IetfAttrSyntax(ASN1Sequence asn1sequence)
    {
        policyAuthority = null;
        values = new Vector();
        valueChoice = -1;
        int i;
        if (asn1sequence.getObjectAt(0) instanceof ASN1TaggedObject)
        {
            policyAuthority = GeneralNames.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(0), false);
            i = 1;
        } else
        if (asn1sequence.size() == 2)
        {
            policyAuthority = GeneralNames.getInstance(asn1sequence.getObjectAt(0));
            i = 1;
        } else
        {
            i = 0;
        }
        if (!(asn1sequence.getObjectAt(i) instanceof ASN1Sequence))
        {
            throw new IllegalArgumentException("Non-IetfAttrSyntax encoding");
        }
        DERObject derobject;
        for (asn1sequence = ((ASN1Sequence)asn1sequence.getObjectAt(i)).getObjects(); asn1sequence.hasMoreElements(); values.addElement(derobject))
        {
            derobject = (DERObject)asn1sequence.nextElement();
            if (derobject instanceof DERObjectIdentifier)
            {
                i = 2;
            } else
            if (derobject instanceof DERUTF8String)
            {
                i = 3;
            } else
            if (derobject instanceof DEROctetString)
            {
                i = 1;
            } else
            {
                throw new IllegalArgumentException("Bad value type encoding IetfAttrSyntax");
            }
            if (valueChoice < 0)
            {
                valueChoice = i;
            }
            if (i != valueChoice)
            {
                throw new IllegalArgumentException("Mix of value types in IetfAttrSyntax");
            }
        }

    }

    public GeneralNames getPolicyAuthority()
    {
        return policyAuthority;
    }

    public int getValueType()
    {
        return valueChoice;
    }

    public Object[] getValues()
    {
        if (getValueType() == 1)
        {
            ASN1OctetString aasn1octetstring[] = new ASN1OctetString[values.size()];
            for (int i = 0; i != aasn1octetstring.length; i++)
            {
                aasn1octetstring[i] = (ASN1OctetString)values.elementAt(i);
            }

            return aasn1octetstring;
        }
        if (getValueType() == 2)
        {
            DERObjectIdentifier aderobjectidentifier[] = new DERObjectIdentifier[values.size()];
            for (int j = 0; j != aderobjectidentifier.length; j++)
            {
                aderobjectidentifier[j] = (DERObjectIdentifier)values.elementAt(j);
            }

            return aderobjectidentifier;
        }
        DERUTF8String aderutf8string[] = new DERUTF8String[values.size()];
        for (int k = 0; k != aderutf8string.length; k++)
        {
            aderutf8string[k] = (DERUTF8String)values.elementAt(k);
        }

        return aderutf8string;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (policyAuthority != null)
        {
            asn1encodablevector.add(new DERTaggedObject(0, policyAuthority));
        }
        ASN1EncodableVector asn1encodablevector1 = new ASN1EncodableVector();
        for (Enumeration enumeration = values.elements(); enumeration.hasMoreElements(); asn1encodablevector1.add((ASN1Encodable)enumeration.nextElement())) { }
        asn1encodablevector.add(new DERSequence(asn1encodablevector1));
        return new DERSequence(asn1encodablevector);
    }
}
