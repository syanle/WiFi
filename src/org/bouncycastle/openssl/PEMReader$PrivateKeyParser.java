// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader, PEMException

private class provider
    implements PemObjectParser
{

    private String provider;
    final PEMReader this$0;

    public Object parseObject(PemObject pemobject)
        throws IOException
    {
        try
        {
            PrivateKeyInfo privatekeyinfo = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(pemobject.getContent()));
            pemobject = new PKCS8EncodedKeySpec(pemobject.getContent());
            pemobject = KeyFactory.getInstance(privatekeyinfo.getAlgorithmId().getAlgorithm().getId(), provider).generatePrivate(pemobject);
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("problem parsing PRIVATE KEY: ").append(pemobject.toString()).toString(), pemobject);
        }
        return pemobject;
    }

    public _cls9(String s)
    {
        this$0 = PEMReader.this;
        super();
        provider = s;
    }
}
