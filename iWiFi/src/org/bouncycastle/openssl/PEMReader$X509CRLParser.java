// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.CertificateFactory;
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
        pemobject = new ByteArrayInputStream(pemobject.getContent());
        try
        {
            pemobject = CertificateFactory.getInstance("X.509", provider).generateCRL(pemobject);
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("problem parsing cert: ").append(pemobject.toString()).toString(), pemobject);
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
