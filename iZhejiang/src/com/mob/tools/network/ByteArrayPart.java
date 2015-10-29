// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import com.mob.tools.utils.Data;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

// Referenced classes of package com.mob.tools.network:
//            HTTPPart, BufferedByteArrayOutputStream

public class ByteArrayPart extends HTTPPart
{

    private BufferedByteArrayOutputStream buffer;

    public ByteArrayPart()
    {
    }

    public ByteArrayPart append(byte abyte0[])
        throws Throwable
    {
        if (buffer == null)
        {
            buffer = new BufferedByteArrayOutputStream(abyte0.length);
        }
        buffer.write(abyte0);
        buffer.flush();
        return this;
    }

    protected InputStream getInputStream()
        throws Throwable
    {
        if (buffer == null)
        {
            return new ByteArrayInputStream(new byte[0]);
        }
        byte abyte0[] = buffer.getBuffer();
        if (abyte0 == null || buffer.size() <= 0)
        {
            return new ByteArrayInputStream(new byte[0]);
        } else
        {
            return new ByteArrayInputStream(abyte0, 0, buffer.size());
        }
    }

    protected long length()
        throws Throwable
    {
        if (buffer == null)
        {
            return 0L;
        } else
        {
            return (long)buffer.size();
        }
    }

    public String toString()
    {
        byte abyte0[];
        if (buffer != null)
        {
            if ((abyte0 = buffer.getBuffer()) != null)
            {
                return Data.byteToHex(abyte0, 0, buffer.size());
            }
        }
        return null;
    }
}
