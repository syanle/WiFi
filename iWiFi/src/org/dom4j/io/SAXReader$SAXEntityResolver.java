// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.Serializable;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

// Referenced classes of package org.dom4j.io:
//            SAXReader

protected static class uriPrefix
    implements EntityResolver, Serializable
{

    protected String uriPrefix;

    public InputSource resolveEntity(String s, String s1)
    {
        s = s1;
        if (s1 != null)
        {
            s = s1;
            if (s1.length() > 0)
            {
                s = s1;
                if (uriPrefix != null)
                {
                    s = s1;
                    if (s1.indexOf(':') <= 0)
                    {
                        s = uriPrefix + s1;
                    }
                }
            }
        }
        return new InputSource(s);
    }

    public (String s)
    {
        uriPrefix = s;
    }
}
