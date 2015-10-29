// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.spec.RSAPublicKeySpec;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.x509.RSAPublicKeyStructure;
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
            pemobject = new RSAPublicKeyStructure((ASN1Sequence)(new ASN1InputStream(pemobject.getContent())).readObject());
            pemobject = new RSAPublicKeySpec(pemobject.getModulus(), pemobject.getPublicExponent());
            pemobject = KeyFactory.getInstance("RSA", provider).generatePublic(pemobject);
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw pemobject;
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new IOException((new StringBuilder()).append("can't find provider ").append(provider).toString());
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("problem extracting key: ").append(pemobject.toString()).toString(), pemobject);
        }
        return pemobject;
    }

    public (String s)
    {
        this$0 = PEMReader.this;
        super();
        provider = s;
    }
}
