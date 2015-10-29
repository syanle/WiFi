// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;

public abstract class HTTPPart
{

    public HTTPPart()
    {
    }

    protected abstract InputStream getInputStream()
        throws Throwable;

    public InputStreamEntity getInputStreamEntity()
        throws Throwable
    {
        return new InputStreamEntity(getInputStream(), length());
    }

    protected abstract long length()
        throws Throwable;
}
