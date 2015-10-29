// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import m.framework.utils.Data;

// Referenced classes of package m.framework.network:
//            HTTPPart

public class ByteArrayPart extends HTTPPart
{

    private byte buffer[];

    public ByteArrayPart()
    {
    }

    public ByteArrayPart append(byte abyte0[])
        throws Throwable
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        if (buffer != null && buffer.length > 0)
        {
            bytearrayoutputstream.write(buffer);
        }
        bytearrayoutputstream.write(abyte0);
        bytearrayoutputstream.flush();
        buffer = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.close();
        return this;
    }

    protected InputStream getInputStream()
        throws Throwable
    {
        if (buffer == null || buffer.length <= 0)
        {
            return new ByteArrayInputStream(new byte[0]);
        } else
        {
            return new ByteArrayInputStream(buffer);
        }
    }

    protected long length()
        throws Throwable
    {
        int i;
        if (buffer == null)
        {
            i = 0;
        } else
        {
            i = buffer.length;
        }
        return (long)i;
    }

    public String toString()
    {
        return Data.byteToHex(buffer);
    }
}
