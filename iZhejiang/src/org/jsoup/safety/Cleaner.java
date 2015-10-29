// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.safety;

import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

// Referenced classes of package org.jsoup.safety:
//            Whitelist

public class Cleaner
{
    private final class CleaningVisitor
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
            if (!whitelist.isSafeTag(element.tagName())) goto _L2; else goto _L1
_L1:
            node = createSafeElement(element);
            element = ((ElementMeta) (node)).el;
            destination.appendChild(element);
            numDiscarded = numDiscarded + ((ElementMeta) (node)).numAttribsDiscarded;
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
            if ((node instanceof DataNode) && whitelist.isSafeTag(node.parent().nodeName()))
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
            if ((node instanceof Element) && whitelist.isSafeTag(node.nodeName()))
            {
                destination = destination.parent();
            }
        }


        private CleaningVisitor(Element element, Element element1)
        {
            this$0 = Cleaner.this;
            super();
            numDiscarded = 0;
            root = element;
            destination = element1;
        }

    }

    private static class ElementMeta
    {

        Element el;
        int numAttribsDiscarded;

        ElementMeta(Element element, int i)
        {
            el = element;
            numAttribsDiscarded = i;
        }
    }


    private Whitelist whitelist;

    public Cleaner(Whitelist whitelist1)
    {
        Validate.notNull(whitelist1);
        whitelist = whitelist1;
    }

    private int copySafeNodes(Element element, Element element1)
    {
        element1 = new CleaningVisitor(element, element1);
        (new NodeTraversor(element1)).traverse(element);
        return ((CleaningVisitor) (element1)).numDiscarded;
    }

    private ElementMeta createSafeElement(Element element)
    {
        String s = element.tagName();
        Attributes attributes = new Attributes();
        Element element1 = new Element(Tag.valueOf(s), element.baseUri(), attributes);
        int i = 0;
        for (Iterator iterator = element.attributes().iterator(); iterator.hasNext();)
        {
            Attribute attribute = (Attribute)iterator.next();
            if (whitelist.isSafeAttribute(s, element, attribute))
            {
                attributes.put(attribute);
            } else
            {
                i++;
            }
        }

        attributes.addAll(whitelist.getEnforcedAttributes(s));
        return new ElementMeta(element1, i);
    }

    public Document clean(Document document)
    {
        Validate.notNull(document);
        Document document1 = Document.createShell(document.baseUri());
        if (document.body() != null)
        {
            copySafeNodes(document.body(), document1.body());
        }
        return document1;
    }

    public boolean isValid(Document document)
    {
        Validate.notNull(document);
        Document document1 = Document.createShell(document.baseUri());
        return copySafeNodes(document.body(), document1.body()) == 0;
    }


}
