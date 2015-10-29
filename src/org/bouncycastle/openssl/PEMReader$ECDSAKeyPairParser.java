// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.sec.ECPrivateKeyStructure;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.util.io.pem.PemObject;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader, PEMException

private class > extends >
{

    final PEMReader this$0;

    public Object parseObject(PemObject pemobject)
        throws IOException
    {
        try
        {
            Object obj = new ECPrivateKeyStructure(readKeyPair(pemobject));
            Object obj1 = new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, ((ECPrivateKeyStructure) (obj)).getParameters());
            pemobject = new PrivateKeyInfo(((AlgorithmIdentifier) (obj1)), ((ECPrivateKeyStructure) (obj)).getDERObject());
            obj = new SubjectPublicKeyInfo(((AlgorithmIdentifier) (obj1)), ((ECPrivateKeyStructure) (obj)).getPublicKey().getBytes());
            pemobject = new PKCS8EncodedKeySpec(pemobject.getEncoded());
            obj = new X509EncodedKeySpec(((SubjectPublicKeyInfo) (obj)).getEncoded());
            obj1 = KeyFactory.getInstance("ECDSA", provider);
            pemobject = new KeyPair(((KeyFactory) (obj1)).generatePublic(((java.security.spec.KeySpec) (obj))), ((KeyFactory) (obj1)).generatePrivate(pemobject));
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw pemobject;
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("problem creating EC private key: ").append(pemobject.toString()).toString(), pemobject);
        }
        return pemobject;
    }

    public (String s)
    {
        this$0 = PEMReader.this;
        super(PEMReader.this, s);
    }
}
