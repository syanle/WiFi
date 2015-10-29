// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.mob.tools.network:
//            HTTPPart, MultiPartInputStream

public class MultiPart extends HTTPPart
{

    private ArrayList parts;

    public MultiPart()
    {
        parts = new ArrayList();
    }

    public MultiPart append(HTTPPart httppart)
        throws Throwable
    {
        parts.add(httppart);
        return this;
    }

    protected InputStream getInputStream()
        throws Throwable
    {
        MultiPartInputStream multipartinputstream = new MultiPartInputStream();
        for (Iterator iterator = parts.iterator(); iterator.hasNext(); multipartinputstream.addInputStream(((HTTPPart)iterator.next()).getInputStream())) { }
        return multipartinputstream;
    }

    protected long length()
        throws Throwable
    {
        Iterator iterator = parts.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((HTTPPart)iterator.next()).length()) { }
        return l;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = parts.iterator(); iterator.hasNext(); stringbuilder.append(((HTTPPart)iterator.next()).toString())) { }
        return stringbuilder.toString();
    }
}
