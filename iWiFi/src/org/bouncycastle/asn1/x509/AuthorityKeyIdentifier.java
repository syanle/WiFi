// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            GeneralNames, SubjectPublicKeyInfo, X509Extension

public class AuthorityKeyIdentifier extends ASN1Encodable
{

    GeneralNames certissuer;
    DERInteger certserno;
    ASN1OctetString keyidentifier;

    public AuthorityKeyIdentifier(ASN1Sequence asn1sequence)
    {
        keyidentifier = null;
        certissuer = null;
        certserno = null;
        asn1sequence = asn1sequence.getObjects();
        do
        {
            if (!asn1sequence.hasMoreElements())
            {
                break;
            }
            ASN1TaggedObject asn1taggedobject = DERTaggedObject.getInstance(asn1sequence.nextElement());
            switch (asn1taggedobject.getTagNo())
            {
            default:
                throw new IllegalArgumentException("illegal tag");

            case 0: // '\0'
                keyidentifier = ASN1OctetString.getInstance(asn1taggedobject, false);
                break;

            case 1: // '\001'
                certissuer = GeneralNames.getInstance(asn1taggedobject, false);
                break;

            case 2: // '\002'
                certserno = DERInteger.getInstance(asn1taggedobject, false);
                break;
            }
        } while (true);
    }

    public AuthorityKeyIdentifier(GeneralNames generalnames, BigInteger biginteger)
    {
        keyidentifier = null;
        certissuer = null;
        certserno = null;
        keyidentifier = null;
        certissuer = GeneralNames.getInstance(generalnames.toASN1Object());
        certserno = new DERInteger(biginteger);
    }

    public AuthorityKeyIdentifier(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        keyidentifier = null;
        certissuer = null;
        certserno = null;
        SHA1Digest sha1digest = new SHA1Digest();
        byte abyte0[] = new byte[sha1digest.getDigestSize()];
        subjectpublickeyinfo = subjectpublickeyinfo.getPublicKeyData().getBytes();
        sha1digest.update(subjectpublickeyinfo, 0, subjectpublickeyinfo.length);
        sha1digest.doFinal(abyte0, 0);
        keyidentifier = new DEROctetString(abyte0);
    }

    public AuthorityKeyIdentifier(SubjectPublicKeyInfo subjectpublickeyinfo, GeneralNames generalnames, BigInteger biginteger)
    {
        keyidentifier = null;
        certissuer = null;
        certserno = null;
        SHA1Digest sha1digest = new SHA1Digest();
        byte abyte0[] = new byte[sha1digest.getDigestSize()];
        subjectpublickeyinfo = subjectpublickeyinfo.getPublicKeyData().getBytes();
        sha1digest.update(subjectpublickeyinfo, 0, subjectpublickeyinfo.length);
        sha1digest.doFinal(abyte0, 0);
        keyidentifier = new DEROctetString(abyte0);
        certissuer = GeneralNames.getInstance(generalnames.toASN1Object());
        certserno = new DERInteger(biginteger);
    }

    public AuthorityKeyIdentifier(byte abyte0[])
    {
        keyidentifier = null;
        certissuer = null;
        certserno = null;
        keyidentifier = new DEROctetString(abyte0);
        certissuer = null;
        certserno = null;
    }

    public AuthorityKeyIdentifier(byte abyte0[], GeneralNames generalnames, BigInteger biginteger)
    {
        keyidentifier = null;
        certissuer = null;
        certserno = null;
        keyidentifier = new DEROctetString(abyte0);
        certissuer = GeneralNames.getInstance(generalnames.toASN1Object());
        certserno = new DERInteger(biginteger);
    }

    public static AuthorityKeyIdentifier getInstance(Object obj)
    {
        if (obj instanceof AuthorityKeyIdentifier)
        {
            return (AuthorityKeyIdentifier)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AuthorityKeyIdentifier((ASN1Sequence)obj);
        }
        if (obj instanceof X509Extension)
        {
            return getInstance(X509Extension.convertValueToObject((X509Extension)obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static AuthorityKeyIdentifier getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public GeneralNames getAuthorityCertIssuer()
    {
        return certissuer;
    }

    public BigInteger getAuthorityCertSerialNumber()
    {
        if (certserno != null)
        {
            return certserno.getValue();
        } else
        {
            return null;
        }
    }

    public byte[] getKeyIdentifier()
    {
        if (keyidentifier != null)
        {
            return keyidentifier.getOctets();
        } else
        {
            return null;
        }
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (keyidentifier != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, keyidentifier));
        }
        if (certissuer != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, certissuer));
        }
        if (certserno != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 2, certserno));
        }
        return new DERSequence(asn1encodablevector);
    }

    public String toString()
    {
        return (new StringBuilder()).append("AuthorityKeyIdentifier: KeyID(").append(keyidentifier.getOctets()).append(")").toString();
    }
}
