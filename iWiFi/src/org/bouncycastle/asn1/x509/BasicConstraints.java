// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBoolean;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            X509Extension

public class BasicConstraints extends ASN1Encodable
{

    DERBoolean cA;
    DERInteger pathLenConstraint;

    public BasicConstraints(int i)
    {
        cA = new DERBoolean(false);
        pathLenConstraint = null;
        cA = new DERBoolean(true);
        pathLenConstraint = new DERInteger(i);
    }

    public BasicConstraints(ASN1Sequence asn1sequence)
    {
        cA = new DERBoolean(false);
        pathLenConstraint = null;
        if (asn1sequence.size() == 0)
        {
            cA = null;
            pathLenConstraint = null;
        } else
        {
            if (asn1sequence.getObjectAt(0) instanceof DERBoolean)
            {
                cA = DERBoolean.getInstance(asn1sequence.getObjectAt(0));
            } else
            {
                cA = null;
                pathLenConstraint = DERInteger.getInstance(asn1sequence.getObjectAt(0));
            }
            if (asn1sequence.size() > 1)
            {
                if (cA != null)
                {
                    pathLenConstraint = DERInteger.getInstance(asn1sequence.getObjectAt(1));
                    return;
                } else
                {
                    throw new IllegalArgumentException("wrong sequence in constructor");
                }
            }
        }
    }

    public BasicConstraints(boolean flag)
    {
        cA = new DERBoolean(false);
        pathLenConstraint = null;
        if (flag)
        {
            cA = new DERBoolean(true);
        } else
        {
            cA = null;
        }
        pathLenConstraint = null;
    }

    public BasicConstraints(boolean flag, int i)
    {
        cA = new DERBoolean(false);
        pathLenConstraint = null;
        if (flag)
        {
            cA = new DERBoolean(flag);
            pathLenConstraint = new DERInteger(i);
            return;
        } else
        {
            cA = null;
            pathLenConstraint = null;
            return;
        }
    }

    public static BasicConstraints getInstance(Object obj)
    {
        if (obj == null || (obj instanceof BasicConstraints))
        {
            return (BasicConstraints)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new BasicConstraints((ASN1Sequence)obj);
        }
        if (obj instanceof X509Extension)
        {
            return getInstance(X509Extension.convertValueToObject((X509Extension)obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static BasicConstraints getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public BigInteger getPathLenConstraint()
    {
        if (pathLenConstraint != null)
        {
            return pathLenConstraint.getValue();
        } else
        {
            return null;
        }
    }

    public boolean isCA()
    {
        return cA != null && cA.isTrue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (cA != null)
        {
            asn1encodablevector.add(cA);
        }
        if (pathLenConstraint != null)
        {
            asn1encodablevector.add(pathLenConstraint);
        }
        return new DERSequence(asn1encodablevector);
    }

    public String toString()
    {
        if (pathLenConstraint == null)
        {
            if (cA == null)
            {
                return "BasicConstraints: isCa(false)";
            } else
            {
                return (new StringBuilder()).append("BasicConstraints: isCa(").append(isCA()).append(")").toString();
            }
        } else
        {
            return (new StringBuilder()).append("BasicConstraints: isCa(").append(isCA()).append("), pathLenConstraint = ").append(pathLenConstraint.getValue()).toString();
        }
    }
}
