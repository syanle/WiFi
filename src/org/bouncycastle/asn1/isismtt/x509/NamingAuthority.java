// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.isismtt.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.isismtt.ISISMTTObjectIdentifiers;
import org.bouncycastle.asn1.x500.DirectoryString;

public class NamingAuthority extends ASN1Encodable
{

    public static final DERObjectIdentifier id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern;
    private DERObjectIdentifier namingAuthorityId;
    private DirectoryString namingAuthorityText;
    private String namingAuthorityUrl;

    private NamingAuthority(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() > 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        asn1sequence = asn1sequence.getObjects();
        DEREncodable derencodable;
        if (asn1sequence.hasMoreElements())
        {
            derencodable = (DEREncodable)asn1sequence.nextElement();
            if (derencodable instanceof DERObjectIdentifier)
            {
                namingAuthorityId = (DERObjectIdentifier)derencodable;
            } else
            if (derencodable instanceof DERIA5String)
            {
                namingAuthorityUrl = DERIA5String.getInstance(derencodable).getString();
            } else
            if (derencodable instanceof ASN1String)
            {
                namingAuthorityText = DirectoryString.getInstance(derencodable);
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Bad object encountered: ").append(derencodable.getClass()).toString());
            }
        }
        do
        {
label0:
            {
                if (asn1sequence.hasMoreElements())
                {
                    derencodable = (DEREncodable)asn1sequence.nextElement();
                    if (derencodable instanceof DERIA5String)
                    {
                        namingAuthorityUrl = DERIA5String.getInstance(derencodable).getString();
                    } else
                    if (derencodable instanceof ASN1String)
                    {
                        namingAuthorityText = DirectoryString.getInstance(derencodable);
                    } else
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Bad object encountered: ").append(derencodable.getClass()).toString());
                    }
                }
                if (asn1sequence.hasMoreElements())
                {
                    asn1sequence = (DEREncodable)asn1sequence.nextElement();
                    if (!(asn1sequence instanceof ASN1String))
                    {
                        break label0;
                    }
                    namingAuthorityText = DirectoryString.getInstance(asn1sequence);
                }
                return;
            }
            throw new IllegalArgumentException((new StringBuilder()).append("Bad object encountered: ").append(asn1sequence.getClass()).toString());
        } while (true);
    }

    public NamingAuthority(DERObjectIdentifier derobjectidentifier, String s, DirectoryString directorystring)
    {
        namingAuthorityId = derobjectidentifier;
        namingAuthorityUrl = s;
        namingAuthorityText = directorystring;
    }

    public static NamingAuthority getInstance(Object obj)
    {
        if (obj == null || (obj instanceof NamingAuthority))
        {
            return (NamingAuthority)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new NamingAuthority((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public static NamingAuthority getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERObjectIdentifier getNamingAuthorityId()
    {
        return namingAuthorityId;
    }

    public DirectoryString getNamingAuthorityText()
    {
        return namingAuthorityText;
    }

    public String getNamingAuthorityUrl()
    {
        return namingAuthorityUrl;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (namingAuthorityId != null)
        {
            asn1encodablevector.add(namingAuthorityId);
        }
        if (namingAuthorityUrl != null)
        {
            asn1encodablevector.add(new DERIA5String(namingAuthorityUrl, true));
        }
        if (namingAuthorityText != null)
        {
            asn1encodablevector.add(namingAuthorityText);
        }
        return new DERSequence(asn1encodablevector);
    }

    static 
    {
        id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern = new DERObjectIdentifier((new StringBuilder()).append(ISISMTTObjectIdentifiers.id_isismtt_at_namingAuthorities).append(".1").toString());
    }
}
