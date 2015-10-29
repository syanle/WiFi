// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package m.framework.network:
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
        Iterator iterator = parts.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return multipartinputstream;
            }
            multipartinputstream.addInputStream(((HTTPPart)iterator.next()).getInputStream());
        } while (true);
    }

    protected long length()
        throws Throwable
    {
        long l = 0L;
        Iterator iterator = parts.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return l;
            }
            l += ((HTTPPart)iterator.next()).length();
        } while (true);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = parts.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(((HTTPPart)iterator.next()).toString());
        } while (true);
    }
}
