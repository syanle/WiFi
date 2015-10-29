// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

// Referenced classes of package m.framework.network:
//            HTTPPart

public class StringPart extends HTTPPart
{

    private StringBuilder sb;

    public StringPart()
    {
        sb = new StringBuilder();
    }

    public StringPart append(String s)
    {
        sb.append(s);
        return this;
    }

    protected InputStream getInputStream()
        throws Throwable
    {
        return new ByteArrayInputStream(sb.toString().getBytes("utf-8"));
    }

    protected long length()
        throws Throwable
    {
        return (long)sb.toString().getBytes("utf-8").length;
    }

    public String toString()
    {
        return sb.toString();
    }
}
