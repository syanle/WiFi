// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509.qualified;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509.qualified:
//            ETSIQCObjectIdentifiers, RFC3739QCObjectIdentifiers

public class QCStatement extends ASN1Encodable
    implements ETSIQCObjectIdentifiers, RFC3739QCObjectIdentifiers
{

    DERObjectIdentifier qcStatementId;
    ASN1Encodable qcStatementInfo;

    public QCStatement(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        qcStatementId = DERObjectIdentifier.getInstance(asn1sequence.nextElement());
        if (asn1sequence.hasMoreElements())
        {
            qcStatementInfo = (ASN1Encodable)asn1sequence.nextElement();
        }
    }

    public QCStatement(DERObjectIdentifier derobjectidentifier)
    {
        qcStatementId = derobjectidentifier;
        qcStatementInfo = null;
    }

    public QCStatement(DERObjectIdentifier derobjectidentifier, ASN1Encodable asn1encodable)
    {
        qcStatementId = derobjectidentifier;
        qcStatementInfo = asn1encodable;
    }

    public static QCStatement getInstance(Object obj)
    {
        if (obj == null || (obj instanceof QCStatement))
        {
            return (QCStatement)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new QCStatement(ASN1Sequence.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance");
        }
    }

    public DERObjectIdentifier getStatementId()
    {
        return qcStatementId;
    }

    public ASN1Encodable getStatementInfo()
    {
        return qcStatementInfo;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(qcStatementId);
        if (qcStatementInfo != null)
        {
            asn1encodablevector.add(qcStatementInfo);
        }
        return new DERSequence(asn1encodablevector);
    }
}
