// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;
import org.bouncycastle.x509.X509V2AttributeCertificate;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader

private class <init>
    implements PemObjectParser
{

    final PEMReader this$0;

    public Object parseObject(PemObject pemobject)
        throws IOException
    {
        return new X509V2AttributeCertificate(pemobject.getContent());
    }

    private ()
    {
        this$0 = PEMReader.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
