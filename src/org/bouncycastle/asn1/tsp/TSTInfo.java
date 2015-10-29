// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.tsp;

import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBoolean;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.tsp:
//            MessageImprint, Accuracy

public class TSTInfo extends ASN1Encodable
{

    Accuracy accuracy;
    X509Extensions extensions;
    DERGeneralizedTime genTime;
    MessageImprint messageImprint;
    DERInteger nonce;
    DERBoolean ordering;
    DERInteger serialNumber;
    GeneralName tsa;
    DERObjectIdentifier tsaPolicyId;
    DERInteger version;

    public TSTInfo(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        version = DERInteger.getInstance(asn1sequence.nextElement());
        tsaPolicyId = DERObjectIdentifier.getInstance(asn1sequence.nextElement());
        messageImprint = MessageImprint.getInstance(asn1sequence.nextElement());
        serialNumber = DERInteger.getInstance(asn1sequence.nextElement());
        genTime = DERGeneralizedTime.getInstance(asn1sequence.nextElement());
        ordering = new DERBoolean(false);
        do
        {
            if (!asn1sequence.hasMoreElements())
            {
                break;
            }
            Object obj = (DERObject)asn1sequence.nextElement();
            if (obj instanceof ASN1TaggedObject)
            {
                obj = (DERTaggedObject)obj;
                switch (((DERTaggedObject) (obj)).getTagNo())
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder()).append("Unknown tag value ").append(((DERTaggedObject) (obj)).getTagNo()).toString());

                case 0: // '\0'
                    tsa = GeneralName.getInstance(((ASN1TaggedObject) (obj)), true);
                    break;

                case 1: // '\001'
                    extensions = X509Extensions.getInstance(((ASN1TaggedObject) (obj)), false);
                    break;
                }
            } else
            if (obj instanceof DERSequence)
            {
                accuracy = Accuracy.getInstance(obj);
            } else
            if (obj instanceof DERBoolean)
            {
                ordering = DERBoolean.getInstance(obj);
            } else
            if (obj instanceof DERInteger)
            {
                nonce = DERInteger.getInstance(obj);
            }
        } while (true);
    }

    public TSTInfo(DERObjectIdentifier derobjectidentifier, MessageImprint messageimprint, DERInteger derinteger, DERGeneralizedTime dergeneralizedtime, Accuracy accuracy1, DERBoolean derboolean, DERInteger derinteger1, 
            GeneralName generalname, X509Extensions x509extensions)
    {
        version = new DERInteger(1);
        tsaPolicyId = derobjectidentifier;
        messageImprint = messageimprint;
        serialNumber = derinteger;
        genTime = dergeneralizedtime;
        accuracy = accuracy1;
        ordering = derboolean;
        nonce = derinteger1;
        tsa = generalname;
        extensions = x509extensions;
    }

    public static TSTInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof TSTInfo))
        {
            return (TSTInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new TSTInfo((ASN1Sequence)obj);
        }
        if (obj instanceof ASN1OctetString)
        {
            try
            {
                obj = getInstance((new ASN1InputStream(((ASN1OctetString)obj).getOctets())).readObject());
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new IllegalArgumentException("Bad object format in 'TSTInfo' factory.");
            }
            return ((TSTInfo) (obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown object in 'TSTInfo' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public Accuracy getAccuracy()
    {
        return accuracy;
    }

    public X509Extensions getExtensions()
    {
        return extensions;
    }

    public DERGeneralizedTime getGenTime()
    {
        return genTime;
    }

    public MessageImprint getMessageImprint()
    {
        return messageImprint;
    }

    public DERInteger getNonce()
    {
        return nonce;
    }

    public DERBoolean getOrdering()
    {
        return ordering;
    }

    public DERObjectIdentifier getPolicy()
    {
        return tsaPolicyId;
    }

    public DERInteger getSerialNumber()
    {
        return serialNumber;
    }

    public GeneralName getTsa()
    {
        return tsa;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(tsaPolicyId);
        asn1encodablevector.add(messageImprint);
        asn1encodablevector.add(serialNumber);
        asn1encodablevector.add(genTime);
        if (accuracy != null)
        {
            asn1encodablevector.add(accuracy);
        }
        if (ordering != null && ordering.isTrue())
        {
            asn1encodablevector.add(ordering);
        }
        if (nonce != null)
        {
            asn1encodablevector.add(nonce);
        }
        if (tsa != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, tsa));
        }
        if (extensions != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, extensions));
        }
        return new DERSequence(asn1encodablevector);
    }
}
