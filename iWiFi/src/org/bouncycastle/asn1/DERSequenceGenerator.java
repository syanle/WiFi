// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package org.bouncycastle.asn1:
//            DERGenerator, DEREncodable, DEROutputStream, DERObject

public class DERSequenceGenerator extends DERGenerator
{

    private final ByteArrayOutputStream _bOut;

    public DERSequenceGenerator(OutputStream outputstream)
        throws IOException
    {
        super(outputstream);
        _bOut = new ByteArrayOutputStream();
    }

    public DERSequenceGenerator(OutputStream outputstream, int i, boolean flag)
        throws IOException
    {
        super(outputstream, i, flag);
        _bOut = new ByteArrayOutputStream();
    }

    public void addObject(DEREncodable derencodable)
        throws IOException
    {
        derencodable.getDERObject().encode(new DEROutputStream(_bOut));
    }

    public void close()
        throws IOException
    {
        writeDEREncoded(48, _bOut.toByteArray());
    }

    public OutputStream getRawOutputStream()
    {
        return _bOut;
    }
}
