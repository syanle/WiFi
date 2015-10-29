// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.smime;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cms.Attribute;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

// Referenced classes of package org.bouncycastle.asn1.smime:
//            SMIMECapability

public class SMIMECapabilities extends ASN1Encodable
{

    public static final DERObjectIdentifier canNotDecryptAny;
    public static final DERObjectIdentifier dES_CBC = new DERObjectIdentifier("1.3.14.3.2.7");
    public static final DERObjectIdentifier dES_EDE3_CBC;
    public static final DERObjectIdentifier preferSignedData;
    public static final DERObjectIdentifier rC2_CBC;
    public static final DERObjectIdentifier sMIMECapabilitesVersions;
    private ASN1Sequence capabilities;

    public SMIMECapabilities(ASN1Sequence asn1sequence)
    {
        capabilities = asn1sequence;
    }

    public static SMIMECapabilities getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SMIMECapabilities))
        {
            return (SMIMECapabilities)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SMIMECapabilities((ASN1Sequence)obj);
        }
        if (obj instanceof Attribute)
        {
            return new SMIMECapabilities((ASN1Sequence)(ASN1Sequence)((Attribute)obj).getAttrValues().getObjectAt(0));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public Vector getCapabilities(DERObjectIdentifier derobjectidentifier)
    {
        Enumeration enumeration = capabilities.getObjects();
        Vector vector = new Vector();
        if (derobjectidentifier == null)
        {
            for (; enumeration.hasMoreElements(); vector.addElement(SMIMECapability.getInstance(enumeration.nextElement()))) { }
        } else
        {
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    break;
                }
                SMIMECapability smimecapability = SMIMECapability.getInstance(enumeration.nextElement());
                if (derobjectidentifier.equals(smimecapability.getCapabilityID()))
                {
                    vector.addElement(smimecapability);
                }
            } while (true);
        }
        return vector;
    }

    public DERObject toASN1Object()
    {
        return capabilities;
    }

    static 
    {
        preferSignedData = PKCSObjectIdentifiers.preferSignedData;
        canNotDecryptAny = PKCSObjectIdentifiers.canNotDecryptAny;
        sMIMECapabilitesVersions = PKCSObjectIdentifiers.sMIMECapabilitiesVersions;
        dES_EDE3_CBC = PKCSObjectIdentifiers.des_EDE3_CBC;
        rC2_CBC = PKCSObjectIdentifiers.RC2_CBC;
    }
}
