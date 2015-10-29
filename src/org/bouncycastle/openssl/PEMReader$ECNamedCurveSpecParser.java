// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.jce.ECNamedCurveTable;
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
            pemobject = ECNamedCurveTable.getParameterSpec(((DERObjectIdentifier)ASN1Object.fromByteArray(pemobject.getContent())).getId());
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw pemobject;
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            throw new PEMException((new StringBuilder()).append("exception extracting EC named curve: ").append(pemobject.toString()).toString());
        }
        if (pemobject != null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        throw new IOException("object ID not found in EC curve table");
        return pemobject;
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
