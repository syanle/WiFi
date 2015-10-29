// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.util.io.pem.PemObject;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader, PEMException

private class it> extends it>
{

    final PEMReader this$0;

    public Object parseObject(PemObject pemobject)
        throws IOException
    {
        Object obj;
        Object obj1;
        DERInteger derinteger;
        DERInteger derinteger1;
        try
        {
            pemobject = readKeyPair(pemobject);
            if (pemobject.size() != 6)
            {
                throw new PEMException("malformed sequence in DSA private key");
            }
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw pemobject;
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("problem creating DSA private key: ").append(pemobject.toString()).toString(), pemobject);
        }
        obj = (DERInteger)pemobject.getObjectAt(1);
        obj1 = (DERInteger)pemobject.getObjectAt(2);
        derinteger = (DERInteger)pemobject.getObjectAt(3);
        derinteger1 = (DERInteger)pemobject.getObjectAt(4);
        pemobject = new DSAPrivateKeySpec(((DERInteger)pemobject.getObjectAt(5)).getValue(), ((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue(), derinteger.getValue());
        obj = new DSAPublicKeySpec(derinteger1.getValue(), ((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue(), derinteger.getValue());
        obj1 = KeyFactory.getInstance("DSA", provider);
        pemobject = new KeyPair(((KeyFactory) (obj1)).generatePublic(((java.security.spec.KeySpec) (obj))), ((KeyFactory) (obj1)).generatePrivate(pemobject));
        return pemobject;
    }

    public _cls9(String s)
    {
        this$0 = PEMReader.this;
        super(PEMReader.this, s);
    }
}
