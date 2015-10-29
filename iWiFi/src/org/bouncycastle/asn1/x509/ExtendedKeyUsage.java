// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            X509Extension, KeyPurposeId

public class ExtendedKeyUsage extends ASN1Encodable
{

    ASN1Sequence seq;
    Hashtable usageTable;

    public ExtendedKeyUsage(Vector vector)
    {
        usageTable = new Hashtable();
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        DERObject derobject;
        for (vector = vector.elements(); vector.hasMoreElements(); usageTable.put(derobject, derobject))
        {
            derobject = (DERObject)vector.nextElement();
            asn1encodablevector.add(derobject);
        }

        seq = new DERSequence(asn1encodablevector);
    }

    public ExtendedKeyUsage(ASN1Sequence asn1sequence)
    {
        usageTable = new Hashtable();
        seq = asn1sequence;
        Object obj;
        for (asn1sequence = asn1sequence.getObjects(); asn1sequence.hasMoreElements(); usageTable.put(obj, obj))
        {
            obj = asn1sequence.nextElement();
            if (!(obj instanceof DERObjectIdentifier))
            {
                throw new IllegalArgumentException("Only DERObjectIdentifiers allowed in ExtendedKeyUsage.");
            }
        }

    }

    public ExtendedKeyUsage(KeyPurposeId keypurposeid)
    {
        usageTable = new Hashtable();
        seq = new DERSequence(keypurposeid);
        usageTable.put(keypurposeid, keypurposeid);
    }

    public static ExtendedKeyUsage getInstance(Object obj)
    {
        if (obj instanceof ExtendedKeyUsage)
        {
            return (ExtendedKeyUsage)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ExtendedKeyUsage((ASN1Sequence)obj);
        }
        if (obj instanceof X509Extension)
        {
            return getInstance(X509Extension.convertValueToObject((X509Extension)obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid ExtendedKeyUsage: ").append(obj.getClass().getName()).toString());
        }
    }

    public static ExtendedKeyUsage getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public Vector getUsages()
    {
        Vector vector = new Vector();
        for (Enumeration enumeration = usageTable.elements(); enumeration.hasMoreElements(); vector.addElement(enumeration.nextElement())) { }
        return vector;
    }

    public boolean hasKeyPurposeId(KeyPurposeId keypurposeid)
    {
        return usageTable.get(keypurposeid) != null;
    }

    public int size()
    {
        return usageTable.size();
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
