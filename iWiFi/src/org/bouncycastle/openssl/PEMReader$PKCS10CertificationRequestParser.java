// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import org.bouncycastle.jce.PKCS10CertificationRequest;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader, PEMException

private class <init>
    implements PemObjectParser
{

    final PEMReader this$0;

    public Object parseObject(PemObject pemobject)
        throws IOException
    {
        try
        {
            pemobject = new PKCS10CertificationRequest(pemobject.getContent());
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("problem parsing certrequest: ").append(pemobject.toString()).toString(), pemobject);
        }
        return pemobject;
    }

    private I()
    {
        this$0 = PEMReader.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
