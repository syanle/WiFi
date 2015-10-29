// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            GeneralName

public class GeneralNames extends ASN1Encodable
{

    private final GeneralName names[];

    public GeneralNames(ASN1Sequence asn1sequence)
    {
        names = new GeneralName[asn1sequence.size()];
        for (int i = 0; i != asn1sequence.size(); i++)
        {
            names[i] = GeneralName.getInstance(asn1sequence.getObjectAt(i));
        }

    }

    public GeneralNames(GeneralName generalname)
    {
        names = (new GeneralName[] {
            generalname
        });
    }

    public static GeneralNames getInstance(Object obj)
    {
        if (obj == null || (obj instanceof GeneralNames))
        {
            return (GeneralNames)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new GeneralNames((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public static GeneralNames getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public GeneralName[] getNames()
    {
        GeneralName ageneralname[] = new GeneralName[names.length];
        System.arraycopy(names, 0, ageneralname, 0, names.length);
        return ageneralname;
    }

    public DERObject toASN1Object()
    {
        return new DERSequence(names);
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = System.getProperty("line.separator");
        stringbuffer.append("GeneralNames:");
        stringbuffer.append(s);
        for (int i = 0; i != names.length; i++)
        {
            stringbuffer.append("    ");
            stringbuffer.append(names[i]);
            stringbuffer.append(s);
        }

        return stringbuffer.toString();
    }
}
