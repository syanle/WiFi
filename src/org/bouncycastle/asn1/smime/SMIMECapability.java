// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.smime;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

public class SMIMECapability extends ASN1Encodable
{

    public static final DERObjectIdentifier aES128_CBC;
    public static final DERObjectIdentifier aES192_CBC;
    public static final DERObjectIdentifier aES256_CBC;
    public static final DERObjectIdentifier canNotDecryptAny;
    public static final DERObjectIdentifier dES_CBC = new DERObjectIdentifier("1.3.14.3.2.7");
    public static final DERObjectIdentifier dES_EDE3_CBC;
    public static final DERObjectIdentifier preferSignedData;
    public static final DERObjectIdentifier rC2_CBC;
    public static final DERObjectIdentifier sMIMECapabilitiesVersions;
    private DERObjectIdentifier capabilityID;
    private DEREncodable parameters;

    public SMIMECapability(ASN1Sequence asn1sequence)
    {
        capabilityID = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        if (asn1sequence.size() > 1)
        {
            parameters = (DERObject)asn1sequence.getObjectAt(1);
        }
    }

    public SMIMECapability(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        capabilityID = derobjectidentifier;
        parameters = derencodable;
    }

    public static SMIMECapability getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SMIMECapability))
        {
            return (SMIMECapability)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SMIMECapability((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("Invalid SMIMECapability");
        }
    }

    public DERObjectIdentifier getCapabilityID()
    {
        return capabilityID;
    }

    public DEREncodable getParameters()
    {
        return parameters;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(capabilityID);
        if (parameters != null)
        {
            asn1encodablevector.add(parameters);
        }
        return new DERSequence(asn1encodablevector);
    }

    static 
    {
        preferSignedData = PKCSObjectIdentifiers.preferSignedData;
        canNotDecryptAny = PKCSObjectIdentifiers.canNotDecryptAny;
        sMIMECapabilitiesVersions = PKCSObjectIdentifiers.sMIMECapabilitiesVersions;
        dES_EDE3_CBC = PKCSObjectIdentifiers.des_EDE3_CBC;
        rC2_CBC = PKCSObjectIdentifiers.RC2_CBC;
        aES128_CBC = NISTObjectIdentifiers.id_aes128_CBC;
        aES192_CBC = NISTObjectIdentifiers.id_aes192_CBC;
        aES256_CBC = NISTObjectIdentifiers.id_aes256_CBC;
    }
}
