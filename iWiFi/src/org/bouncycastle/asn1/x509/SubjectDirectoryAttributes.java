// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            Attribute

public class SubjectDirectoryAttributes extends ASN1Encodable
{

    private Vector attributes;

    public SubjectDirectoryAttributes(Vector vector)
    {
        attributes = new Vector();
        for (vector = vector.elements(); vector.hasMoreElements(); attributes.addElement(vector.nextElement())) { }
    }

    public SubjectDirectoryAttributes(ASN1Sequence asn1sequence)
    {
        attributes = new Vector();
        ASN1Sequence asn1sequence1;
        for (asn1sequence = asn1sequence.getObjects(); asn1sequence.hasMoreElements(); attributes.addElement(new Attribute(asn1sequence1)))
        {
            asn1sequence1 = ASN1Sequence.getInstance(asn1sequence.nextElement());
        }

    }

    public static SubjectDirectoryAttributes getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SubjectDirectoryAttributes))
        {
            return (SubjectDirectoryAttributes)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SubjectDirectoryAttributes((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public Vector getAttributes()
    {
        return attributes;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (Enumeration enumeration = attributes.elements(); enumeration.hasMoreElements(); asn1encodablevector.add((Attribute)enumeration.nextElement())) { }
        return new DERSequence(asn1encodablevector);
    }
}
