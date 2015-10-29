// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.Text;

// Referenced classes of package org.dom4j.tree:
//            AbstractText, DefaultText

public class FlyweightText extends AbstractText
    implements Text
{

    protected String text;

    public FlyweightText(String s)
    {
        text = s;
    }

    protected Node createXPathResult(Element element)
    {
        return new DefaultText(element, getText());
    }

    public String getText()
    {
        return text;
    }
}
