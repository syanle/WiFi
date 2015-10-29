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
//            Targets, Target

public class TargetInformation extends ASN1Encodable
{

    private ASN1Sequence targets;

    private TargetInformation(ASN1Sequence asn1sequence)
    {
        targets = asn1sequence;
    }

    public TargetInformation(Targets targets1)
    {
        targets = new DERSequence(targets1);
    }

    public TargetInformation(Target atarget[])
    {
        this(new Targets(atarget));
    }

    public static TargetInformation getInstance(Object obj)
    {
        if (obj instanceof TargetInformation)
        {
            return (TargetInformation)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new TargetInformation((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass()).toString());
        }
    }

    public Targets[] getTargetsObjects()
    {
        Targets atargets[] = new Targets[targets.size()];
        int i = 0;
        for (Enumeration enumeration = targets.getObjects(); enumeration.hasMoreElements();)
        {
            atargets[i] = Targets.getInstance(enumeration.nextElement());
            i++;
        }

        return atargets;
    }

    public DERObject toASN1Object()
    {
        return targets;
    }
}
