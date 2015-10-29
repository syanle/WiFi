// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

// Referenced classes of package org.bouncycastle.asn1:
//            ASN1InputStream, ASN1ParsingException

class LazyDERConstructionEnumeration
    implements Enumeration
{

    private ASN1InputStream aIn;
    private Object nextObj;

    public LazyDERConstructionEnumeration(byte abyte0[])
    {
        aIn = new ASN1InputStream(abyte0, true);
        nextObj = readObject();
    }

    private Object readObject()
    {
        DERObject derobject;
        try
        {
            derobject = aIn.readObject();
        }
        catch (IOException ioexception)
        {
            throw new ASN1ParsingException((new StringBuilder()).append("malformed DER construction: ").append(ioexception).toString(), ioexception);
        }
        return derobject;
    }

    public boolean hasMoreElements()
    {
        return nextObj != null;
    }

    public Object nextElement()
    {
        Object obj = nextObj;
        nextObj = readObject();
        return obj;
    }
}
