// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;

// Referenced classes of package com.mob.tools.network:
//            ByteCounterInputStream, OnReadListener

public abstract class HTTPPart
{

    private OnReadListener listener;
    private long offset;

    public HTTPPart()
    {
    }

    protected abstract InputStream getInputStream()
        throws Throwable;

    public InputStreamEntity getInputStreamEntity()
        throws Throwable
    {
        ByteCounterInputStream bytecounterinputstream = new ByteCounterInputStream(getInputStream());
        bytecounterinputstream.setOnInputStreamReadListener(listener);
        if (offset > 0L)
        {
            bytecounterinputstream.skip(offset);
        }
        return new InputStreamEntity(bytecounterinputstream, length() - offset);
    }

    protected abstract long length()
        throws Throwable;

    public void setOffset(long l)
    {
        offset = l;
    }

    public void setOnReadListener(OnReadListener onreadlistener)
    {
        listener = onreadlistener;
    }
}
