// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;
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
        DERInteger derinteger2;
        DERInteger derinteger3;
        DERInteger derinteger4;
        DERInteger derinteger5;
        try
        {
            pemobject = readKeyPair(pemobject);
            if (pemobject.size() != 9)
            {
                throw new PEMException("malformed sequence in RSA private key");
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
            throw new PEMException((new StringBuilder()).append("problem creating RSA private key: ").append(pemobject.toString()).toString(), pemobject);
        }
        obj = (DERInteger)pemobject.getObjectAt(1);
        obj1 = (DERInteger)pemobject.getObjectAt(2);
        derinteger = (DERInteger)pemobject.getObjectAt(3);
        derinteger1 = (DERInteger)pemobject.getObjectAt(4);
        derinteger2 = (DERInteger)pemobject.getObjectAt(5);
        derinteger3 = (DERInteger)pemobject.getObjectAt(6);
        derinteger4 = (DERInteger)pemobject.getObjectAt(7);
        derinteger5 = (DERInteger)pemobject.getObjectAt(8);
        pemobject = new RSAPublicKeySpec(((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue());
        obj = new RSAPrivateCrtKeySpec(((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue(), derinteger.getValue(), derinteger1.getValue(), derinteger2.getValue(), derinteger3.getValue(), derinteger4.getValue(), derinteger5.getValue());
        obj1 = KeyFactory.getInstance("RSA", provider);
        pemobject = new KeyPair(((KeyFactory) (obj1)).generatePublic(pemobject), ((KeyFactory) (obj1)).generatePrivate(((java.security.spec.KeySpec) (obj))));
        return pemobject;
    }

    public _cls9(String s)
    {
        this$0 = PEMReader.this;
        super(PEMReader.this, s);
    }
}
