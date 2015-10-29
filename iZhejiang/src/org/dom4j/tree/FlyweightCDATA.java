// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.CDATA;
import org.dom4j.Element;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.tree:
//            AbstractCDATA, DefaultCDATA

public class FlyweightCDATA extends AbstractCDATA
    implements CDATA
{

    protected String text;

    public FlyweightCDATA(String s)
    {
        text = s;
    }

    protected Node createXPathResult(Element element)
    {
        return new DefaultCDATA(element, getText());
    }

    public String getText()
    {
        return text;
    }
}
