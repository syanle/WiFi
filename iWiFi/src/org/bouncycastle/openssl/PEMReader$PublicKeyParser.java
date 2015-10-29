// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader

private class provider
    implements PemObjectParser
{

    private String provider;
    final PEMReader this$0;

    public Object parseObject(PemObject pemobject)
        throws IOException
    {
        String as[];
        int i;
        i = 0;
        pemobject = new X509EncodedKeySpec(pemobject.getContent());
        as = new String[2];
        as[0] = "DSA";
        as[1] = "RSA";
_L2:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        java.security.PublicKey publickey = KeyFactory.getInstance(as[i], provider).generatePublic(pemobject);
        return publickey;
        pemobject;
        throw new RuntimeException((new StringBuilder()).append("can't find provider ").append(provider).toString());
        Object obj;
        obj;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
        obj;
          goto _L3
    }

    public (String s)
    {
        this$0 = PEMReader.this;
        super();
        provider = s;
    }
}
