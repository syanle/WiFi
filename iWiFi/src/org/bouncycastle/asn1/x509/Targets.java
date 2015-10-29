// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            Target

public class Targets extends ASN1Encodable
{

    private ASN1Sequence targets;

    private Targets(ASN1Sequence asn1sequence)
    {
        targets = asn1sequence;
    }

    public Targets(Target atarget[])
    {
        targets = new DERSequence(atarget);
    }

    public static Targets getInstance(Object obj)
    {
        if (obj instanceof Targets)
        {
            return (Targets)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new Targets((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass()).toString());
        }
    }

    public Target[] getTargets()
    {
        Target atarget[] = new Target[targets.size()];
        int i = 0;
        for (Enumeration enumeration = targets.getObjects(); enumeration.hasMoreElements();)
        {
            atarget[i] = Target.getInstance(enumeration.nextElement());
            i++;
        }

        return atarget;
    }

    public DERObject toASN1Object()
    {
        return targets;
    }
}
