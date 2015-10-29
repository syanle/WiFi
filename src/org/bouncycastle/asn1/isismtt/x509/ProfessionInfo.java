// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.isismtt.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.DirectoryString;

// Referenced classes of package org.bouncycastle.asn1.isismtt.x509:
//            NamingAuthority

public class ProfessionInfo extends ASN1Encodable
{

    public static final DERObjectIdentifier Notar;
    public static final DERObjectIdentifier Notariatsverwalter;
    public static final DERObjectIdentifier Notariatsverwalterin;
    public static final DERObjectIdentifier Notarin;
    public static final DERObjectIdentifier Notarvertreter;
    public static final DERObjectIdentifier Notarvertreterin;
    public static final DERObjectIdentifier Patentanwalt;
    public static final DERObjectIdentifier Patentanwltin;
    public static final DERObjectIdentifier Rechtsanwalt;
    public static final DERObjectIdentifier Rechtsanwltin;
    public static final DERObjectIdentifier Rechtsbeistand;
    public static final DERObjectIdentifier Steuerberater;
    public static final DERObjectIdentifier Steuerberaterin;
    public static final DERObjectIdentifier Steuerbevollmchtigte;
    public static final DERObjectIdentifier Steuerbevollmchtigter;
    public static final DERObjectIdentifier VereidigteBuchprferin;
    public static final DERObjectIdentifier VereidigterBuchprfer;
    public static final DERObjectIdentifier Wirtschaftsprfer;
    public static final DERObjectIdentifier Wirtschaftsprferin;
    private ASN1OctetString addProfessionInfo;
    private NamingAuthority namingAuthority;
    private ASN1Sequence professionItems;
    private ASN1Sequence professionOIDs;
    private String registrationNumber;

    private ProfessionInfo(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() > 5)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        Enumeration enumeration = asn1sequence.getObjects();
        DEREncodable derencodable = (DEREncodable)enumeration.nextElement();
        asn1sequence = derencodable;
        if (derencodable instanceof ASN1TaggedObject)
        {
            if (((ASN1TaggedObject)derencodable).getTagNo() != 0)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Bad tag number: ").append(((ASN1TaggedObject)derencodable).getTagNo()).toString());
            }
            namingAuthority = NamingAuthority.getInstance((ASN1TaggedObject)derencodable, true);
            asn1sequence = (DEREncodable)enumeration.nextElement();
        }
        professionItems = ASN1Sequence.getInstance(asn1sequence);
        if (enumeration.hasMoreElements())
        {
            asn1sequence = (DEREncodable)enumeration.nextElement();
            if (asn1sequence instanceof ASN1Sequence)
            {
                professionOIDs = ASN1Sequence.getInstance(asn1sequence);
            } else
            if (asn1sequence instanceof DERPrintableString)
            {
                registrationNumber = DERPrintableString.getInstance(asn1sequence).getString();
            } else
            if (asn1sequence instanceof ASN1OctetString)
            {
                addProfessionInfo = ASN1OctetString.getInstance(asn1sequence);
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Bad object encountered: ").append(asn1sequence.getClass()).toString());
            }
        }
        do
        {
label0:
            {
                if (enumeration.hasMoreElements())
                {
                    asn1sequence = (DEREncodable)enumeration.nextElement();
                    if (asn1sequence instanceof DERPrintableString)
                    {
                        registrationNumber = DERPrintableString.getInstance(asn1sequence).getString();
                    } else
                    if (asn1sequence instanceof DEROctetString)
                    {
                        addProfessionInfo = (DEROctetString)asn1sequence;
                    } else
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Bad object encountered: ").append(asn1sequence.getClass()).toString());
                    }
                }
                if (enumeration.hasMoreElements())
                {
                    asn1sequence = (DEREncodable)enumeration.nextElement();
                    if (!(asn1sequence instanceof DEROctetString))
                    {
                        break label0;
                    }
                    addProfessionInfo = (DEROctetString)asn1sequence;
                }
                return;
            }
            throw new IllegalArgumentException((new StringBuilder()).append("Bad object encountered: ").append(asn1sequence.getClass()).toString());
        } while (true);
    }

    public ProfessionInfo(NamingAuthority namingauthority, DirectoryString adirectorystring[], DERObjectIdentifier aderobjectidentifier[], String s, ASN1OctetString asn1octetstring)
    {
        boolean flag = false;
        super();
        namingAuthority = namingauthority;
        namingauthority = new ASN1EncodableVector();
        for (int i = 0; i != adirectorystring.length; i++)
        {
            namingauthority.add(adirectorystring[i]);
        }

        professionItems = new DERSequence(namingauthority);
        if (aderobjectidentifier != null)
        {
            namingauthority = new ASN1EncodableVector();
            for (int j = ((flag) ? 1 : 0); j != aderobjectidentifier.length; j++)
            {
                namingauthority.add(aderobjectidentifier[j]);
            }

            professionOIDs = new DERSequence(namingauthority);
        }
        registrationNumber = s;
        addProfessionInfo = asn1octetstring;
    }

    public static ProfessionInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ProfessionInfo))
        {
            return (ProfessionInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ProfessionInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public ASN1OctetString getAddProfessionInfo()
    {
        return addProfessionInfo;
    }

    public NamingAuthority getNamingAuthority()
    {
        return namingAuthority;
    }

    public DirectoryString[] getProfessionItems()
    {
        DirectoryString adirectorystring[] = new DirectoryString[professionItems.size()];
        int i = 0;
        for (Enumeration enumeration = professionItems.getObjects(); enumeration.hasMoreElements();)
        {
            adirectorystring[i] = DirectoryString.getInstance(enumeration.nextElement());
            i++;
        }

        return adirectorystring;
    }

    public DERObjectIdentifier[] getProfessionOIDs()
    {
        int i = 0;
        if (professionOIDs == null)
        {
            return new DERObjectIdentifier[0];
        }
        DERObjectIdentifier aderobjectidentifier[] = new DERObjectIdentifier[professionOIDs.size()];
        for (Enumeration enumeration = professionOIDs.getObjects(); enumeration.hasMoreElements();)
        {
            aderobjectidentifier[i] = DERObjectIdentifier.getInstance(enumeration.nextElement());
            i++;
        }

        return aderobjectidentifier;
    }

    public String getRegistrationNumber()
    {
        return registrationNumber;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (namingAuthority != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, namingAuthority));
        }
        asn1encodablevector.add(professionItems);
        if (professionOIDs != null)
        {
            asn1encodablevector.add(professionOIDs);
        }
        if (registrationNumber != null)
        {
            asn1encodablevector.add(new DERPrintableString(registrationNumber, true));
        }
        if (addProfessionInfo != null)
        {
            asn1encodablevector.add(addProfessionInfo);
        }
        return new DERSequence(asn1encodablevector);
    }

    static 
    {
        Rechtsanwltin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".1").toString());
        Rechtsanwalt = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".2").toString());
        Rechtsbeistand = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".3").toString());
        Steuerberaterin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".4").toString());
        Steuerberater = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".5").toString());
        Steuerbevollmchtigte = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".6").toString());
        Steuerbevollmchtigter = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".7").toString());
        Notarin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".8").toString());
        Notar = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".9").toString());
        Notarvertreterin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".10").toString());
        Notarvertreter = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".11").toString());
        Notariatsverwalterin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".12").toString());
        Notariatsverwalter = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".13").toString());
        Wirtschaftsprferin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".14").toString());
        Wirtschaftsprfer = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".15").toString());
        VereidigteBuchprferin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".16").toString());
        VereidigterBuchprfer = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".17").toString());
        Patentanwltin = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".18").toString());
        Patentanwalt = new DERObjectIdentifier((new StringBuilder()).append(NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern).append(".19").toString());
    }
}
