// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

// Referenced classes of package org.bouncycastle.asn1.pkcs:
//            PKCSObjectIdentifiers

public class RSASSAPSSparams extends ASN1Encodable
{

    public static final AlgorithmIdentifier DEFAULT_HASH_ALGORITHM;
    public static final AlgorithmIdentifier DEFAULT_MASK_GEN_FUNCTION;
    public static final DERInteger DEFAULT_SALT_LENGTH = new DERInteger(20);
    public static final DERInteger DEFAULT_TRAILER_FIELD = new DERInteger(1);
    private AlgorithmIdentifier hashAlgorithm;
    private AlgorithmIdentifier maskGenAlgorithm;
    private DERInteger saltLength;
    private DERInteger trailerField;

    public RSASSAPSSparams()
    {
        hashAlgorithm = DEFAULT_HASH_ALGORITHM;
        maskGenAlgorithm = DEFAULT_MASK_GEN_FUNCTION;
        saltLength = DEFAULT_SALT_LENGTH;
        trailerField = DEFAULT_TRAILER_FIELD;
    }

    public RSASSAPSSparams(ASN1Sequence asn1sequence)
    {
        int i;
        hashAlgorithm = DEFAULT_HASH_ALGORITHM;
        maskGenAlgorithm = DEFAULT_MASK_GEN_FUNCTION;
        saltLength = DEFAULT_SALT_LENGTH;
        trailerField = DEFAULT_TRAILER_FIELD;
        i = 0;
_L7:
        ASN1TaggedObject asn1taggedobject;
        if (i == asn1sequence.size())
        {
            break MISSING_BLOCK_LABEL_146;
        }
        asn1taggedobject = (ASN1TaggedObject)asn1sequence.getObjectAt(i);
        asn1taggedobject.getTagNo();
        JVM INSTR tableswitch 0 3: default 84
    //                   0 94
    //                   1 110
    //                   2 122
    //                   3 134;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_134;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException("unknown tag");
_L2:
        hashAlgorithm = AlgorithmIdentifier.getInstance(asn1taggedobject, true);
_L8:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        maskGenAlgorithm = AlgorithmIdentifier.getInstance(asn1taggedobject, true);
          goto _L8
_L4:
        saltLength = DERInteger.getInstance(asn1taggedobject, true);
          goto _L8
        trailerField = DERInteger.getInstance(asn1taggedobject, true);
          goto _L8
    }

    public RSASSAPSSparams(AlgorithmIdentifier algorithmidentifier, AlgorithmIdentifier algorithmidentifier1, DERInteger derinteger, DERInteger derinteger1)
    {
        hashAlgorithm = algorithmidentifier;
        maskGenAlgorithm = algorithmidentifier1;
        saltLength = derinteger;
        trailerField = derinteger1;
    }

    public static RSASSAPSSparams getInstance(Object obj)
    {
        if (obj == null || (obj instanceof RSASSAPSSparams))
        {
            return (RSASSAPSSparams)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new RSASSAPSSparams((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public AlgorithmIdentifier getHashAlgorithm()
    {
        return hashAlgorithm;
    }

    public AlgorithmIdentifier getMaskGenAlgorithm()
    {
        return maskGenAlgorithm;
    }

    public DERInteger getSaltLength()
    {
        return saltLength;
    }

    public DERInteger getTrailerField()
    {
        return trailerField;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (!hashAlgorithm.equals(DEFAULT_HASH_ALGORITHM))
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, hashAlgorithm));
        }
        if (!maskGenAlgorithm.equals(DEFAULT_MASK_GEN_FUNCTION))
        {
            asn1encodablevector.add(new DERTaggedObject(true, 1, maskGenAlgorithm));
        }
        if (!saltLength.equals(DEFAULT_SALT_LENGTH))
        {
            asn1encodablevector.add(new DERTaggedObject(true, 2, saltLength));
        }
        if (!trailerField.equals(DEFAULT_TRAILER_FIELD))
        {
            asn1encodablevector.add(new DERTaggedObject(true, 3, trailerField));
        }
        return new DERSequence(asn1encodablevector);
    }

    static 
    {
        DEFAULT_HASH_ALGORITHM = new AlgorithmIdentifier(OIWObjectIdentifiers.idSHA1, new DERNull());
        DEFAULT_MASK_GEN_FUNCTION = new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, DEFAULT_HASH_ALGORITHM);
    }
}
