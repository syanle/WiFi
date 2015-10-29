// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;

import org.jsoup.parser.Tag;
import org.jsoup.select.NodeVisitor;

// Referenced classes of package org.jsoup.nodes:
//            Element, TextNode, Node

class val.accum
    implements NodeVisitor
{

    final Element this$0;
    final StringBuilder val$accum;

    public void head(Node node, int i)
    {
        if (node instanceof TextNode)
        {
            node = (TextNode)node;
            Element.access$000(val$accum, node);
        } else
        if (node instanceof Element)
        {
            node = (Element)node;
            if (val$accum.length() > 0 && (node.isBlock() || Element.access$100(node).getName().equals("br")) && !TextNode.lastCharIsWhitespace(val$accum))
            {
                val$accum.append(" ");
                return;
            }
        }
    }

    public void tail(Node node, int i)
    {
    }

    or()
    {
        this$0 = final_element;
        val$accum = StringBuilder.this;
        super();
    }
}
