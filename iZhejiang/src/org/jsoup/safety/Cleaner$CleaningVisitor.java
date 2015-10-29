// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.safety;

import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeVisitor;

// Referenced classes of package org.jsoup.safety:
//            Cleaner, Whitelist

private final class <init>
    implements NodeVisitor
{

    private Element destination;
    private int numDiscarded;
    private final Element root;
    final Cleaner this$0;

    public void head(Node node, int i)
    {
        Element element;
        if (!(node instanceof Element))
        {
            break MISSING_BLOCK_LABEL_90;
        }
        element = (Element)node;
        if (!Cleaner.access$000(Cleaner.this).isSafeTag(element.tagName())) goto _L2; else goto _L1
_L1:
        node = Cleaner.access$100(Cleaner.this, element);
        element = ((this._cls0) (node))._fld0;
        destination.appendChild(element);
        numDiscarded = numDiscarded + ((numDiscarded) (node)).ttribsDiscarded;
        destination = element;
_L4:
        return;
_L2:
        if (node == root) goto _L4; else goto _L3
_L3:
        numDiscarded = numDiscarded + 1;
        return;
        if (node instanceof TextNode)
        {
            node = new TextNode(((TextNode)node).getWholeText(), node.baseUri());
            destination.appendChild(node);
            return;
        }
        if ((node instanceof DataNode) && Cleaner.access$000(Cleaner.this).isSafeTag(node.parent().nodeName()))
        {
            node = new DataNode(((DataNode)node).getWholeData(), node.baseUri());
            destination.appendChild(node);
            return;
        } else
        {
            numDiscarded = numDiscarded + 1;
            return;
        }
    }

    public void tail(Node node, int i)
    {
        if ((node instanceof Element) && Cleaner.access$000(Cleaner.this).isSafeTag(node.nodeName()))
        {
            destination = destination.parent();
        }
    }


    private (Element element, Element element1)
    {
        this$0 = Cleaner.this;
        super();
        numDiscarded = 0;
        root = element;
        destination = element1;
    }

    destination(Element element, Element element1, destination destination1)
    {
        this(element, element1);
    }
}
