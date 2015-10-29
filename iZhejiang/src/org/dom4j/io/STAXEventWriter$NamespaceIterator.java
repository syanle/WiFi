// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.util.Iterator;
import javax.xml.stream.XMLEventFactory;
import org.dom4j.Namespace;

// Referenced classes of package org.dom4j.io:
//            STAXEventWriter

private class iter
    implements Iterator
{

    private Iterator iter;
    private final STAXEventWriter this$0;

    public boolean hasNext()
    {
        return iter.hasNext();
    }

    public Object next()
    {
        Object obj = (Namespace)iter.next();
        String s = ((Namespace) (obj)).getPrefix();
        obj = ((Namespace) (obj)).getURI();
        return STAXEventWriter.access$000(STAXEventWriter.this).createNamespace(s, ((String) (obj)));
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    public (Iterator iterator)
    {
        this$0 = STAXEventWriter.this;
        iter = iterator;
    }
}
