// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.Selector;

// Referenced classes of package org.jsoup.nodes:
//            Node, Attributes, TextNode, Document, 
//            DataNode

public class Element extends Node
{

    private Set classNames;
    private Tag tag;

    public Element(Tag tag1, String s)
    {
        this(tag1, s, new Attributes());
    }

    public Element(Tag tag1, String s, Attributes attributes)
    {
        super(s, attributes);
        Validate.notNull(tag1);
        tag = tag1;
    }

    private static void accumulateParents(Element element, Elements elements)
    {
        element = element.parent();
        if (element != null && !element.tagName().equals("#root"))
        {
            elements.add(element);
            accumulateParents(element, elements);
        }
    }

    private static void appendNormalisedText(StringBuilder stringbuilder, TextNode textnode)
    {
        String s = textnode.getWholeText();
        if (preserveWhitespace(textnode.parentNode))
        {
            stringbuilder.append(s);
            return;
        } else
        {
            StringUtil.appendNormalisedWhitespace(stringbuilder, s, TextNode.lastCharIsWhitespace(stringbuilder));
            return;
        }
    }

    private static void appendWhitespaceIfBr(Element element, StringBuilder stringbuilder)
    {
        if (element.tag.getName().equals("br") && !TextNode.lastCharIsWhitespace(stringbuilder))
        {
            stringbuilder.append(" ");
        }
    }

    private void html(StringBuilder stringbuilder)
    {
        for (Iterator iterator = childNodes.iterator(); iterator.hasNext(); ((Node)iterator.next()).outerHtml(stringbuilder)) { }
    }

    private static Integer indexInList(Element element, List list)
    {
        Validate.notNull(element);
        Validate.notNull(list);
        for (int i = 0; i < list.size(); i++)
        {
            if (((Element)list.get(i)).equals(element))
            {
                return Integer.valueOf(i);
            }
        }

        return null;
    }

    private void ownText(StringBuilder stringbuilder)
    {
        Iterator iterator = childNodes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Node node = (Node)iterator.next();
            if (node instanceof TextNode)
            {
                appendNormalisedText(stringbuilder, (TextNode)node);
            } else
            if (node instanceof Element)
            {
                appendWhitespaceIfBr((Element)node, stringbuilder);
            }
        } while (true);
    }

    static boolean preserveWhitespace(Node node)
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            flag = flag1;
            if (node == null)
            {
                break label0;
            }
            flag = flag1;
            if (!(node instanceof Element))
            {
                break label0;
            }
            node = (Element)node;
            if (!((Element) (node)).tag.preserveWhitespace())
            {
                flag = flag1;
                if (node.parent() == null)
                {
                    break label0;
                }
                flag = flag1;
                if (!node.parent().tag.preserveWhitespace())
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public Element addClass(String s)
    {
        Validate.notNull(s);
        Set set = classNames();
        set.add(s);
        classNames(set);
        return this;
    }

    public Element after(String s)
    {
        return (Element)super.after(s);
    }

    public Element after(Node node)
    {
        return (Element)super.after(node);
    }

    public volatile Node after(String s)
    {
        return after(s);
    }

    public volatile Node after(Node node)
    {
        return after(node);
    }

    public Element append(String s)
    {
        Validate.notNull(s);
        s = Parser.parseFragment(s, this, baseUri());
        addChildren((Node[])s.toArray(new Node[s.size()]));
        return this;
    }

    public Element appendChild(Node node)
    {
        Validate.notNull(node);
        addChildren(new Node[] {
            node
        });
        return this;
    }

    public Element appendElement(String s)
    {
        s = new Element(Tag.valueOf(s), baseUri());
        appendChild(s);
        return s;
    }

    public Element appendText(String s)
    {
        appendChild(new TextNode(s, baseUri()));
        return this;
    }

    public Element attr(String s, String s1)
    {
        super.attr(s, s1);
        return this;
    }

    public volatile Node attr(String s, String s1)
    {
        return attr(s, s1);
    }

    public Element before(String s)
    {
        return (Element)super.before(s);
    }

    public Element before(Node node)
    {
        return (Element)super.before(node);
    }

    public volatile Node before(String s)
    {
        return before(s);
    }

    public volatile Node before(Node node)
    {
        return before(node);
    }

    public Element child(int i)
    {
        return children().get(i);
    }

    public Elements children()
    {
        ArrayList arraylist = new ArrayList(childNodes.size());
        Iterator iterator = childNodes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Node node = (Node)iterator.next();
            if (node instanceof Element)
            {
                arraylist.add((Element)node);
            }
        } while (true);
        return new Elements(arraylist);
    }

    public String className()
    {
        return attr("class");
    }

    public Set classNames()
    {
        if (classNames == null)
        {
            classNames = new LinkedHashSet(Arrays.asList(className().split("\\s+")));
        }
        return classNames;
    }

    public Element classNames(Set set)
    {
        Validate.notNull(set);
        attributes.put("class", StringUtil.join(set, " "));
        return this;
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public Element clone()
    {
        Element element = (Element)super.clone();
        element.classNames = null;
        return element;
    }

    public volatile Node clone()
    {
        return clone();
    }

    public String cssSelector()
    {
        if (id().length() > 0)
        {
            return (new StringBuilder()).append("#").append(id()).toString();
        }
        StringBuilder stringbuilder = new StringBuilder(tagName());
        String s = StringUtil.join(classNames(), ".");
        if (s.length() > 0)
        {
            stringbuilder.append('.').append(s);
        }
        if (parent() == null || (parent() instanceof Document))
        {
            return stringbuilder.toString();
        }
        stringbuilder.insert(0, " > ");
        if (parent().select(stringbuilder.toString()).size() > 1)
        {
            stringbuilder.append(String.format(":nth-child(%d)", new Object[] {
                Integer.valueOf(elementSiblingIndex().intValue() + 1)
            }));
        }
        return (new StringBuilder()).append(parent().cssSelector()).append(stringbuilder.toString()).toString();
    }

    public String data()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = childNodes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Node node = (Node)iterator.next();
            if (node instanceof DataNode)
            {
                stringbuilder.append(((DataNode)node).getWholeData());
            } else
            if (node instanceof Element)
            {
                stringbuilder.append(((Element)node).data());
            }
        } while (true);
        return stringbuilder.toString();
    }

    public List dataNodes()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = childNodes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Node node = (Node)iterator.next();
            if (node instanceof DataNode)
            {
                arraylist.add((DataNode)node);
            }
        } while (true);
        return Collections.unmodifiableList(arraylist);
    }

    public Map dataset()
    {
        return attributes.dataset();
    }

    public Integer elementSiblingIndex()
    {
        if (parent() == null)
        {
            return Integer.valueOf(0);
        } else
        {
            return indexInList(this, parent().children());
        }
    }

    public Element empty()
    {
        childNodes.clear();
        return this;
    }

    public boolean equals(Object obj)
    {
        return this == obj;
    }

    public Element firstElementSibling()
    {
        Elements elements = parent().children();
        if (elements.size() > 1)
        {
            return (Element)elements.get(0);
        } else
        {
            return null;
        }
    }

    public Elements getAllElements()
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AllElements(), this);
    }

    public Element getElementById(String s)
    {
        Validate.notEmpty(s);
        s = Collector.collect(new org.jsoup.select.Evaluator.Id(s), this);
        if (s.size() > 0)
        {
            return s.get(0);
        } else
        {
            return null;
        }
    }

    public Elements getElementsByAttribute(String s)
    {
        Validate.notEmpty(s);
        return Collector.collect(new org.jsoup.select.Evaluator.Attribute(s.trim().toLowerCase()), this);
    }

    public Elements getElementsByAttributeStarting(String s)
    {
        Validate.notEmpty(s);
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeStarting(s.trim().toLowerCase()), this);
    }

    public Elements getElementsByAttributeValue(String s, String s1)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeWithValue(s, s1), this);
    }

    public Elements getElementsByAttributeValueContaining(String s, String s1)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeWithValueContaining(s, s1), this);
    }

    public Elements getElementsByAttributeValueEnding(String s, String s1)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeWithValueEnding(s, s1), this);
    }

    public Elements getElementsByAttributeValueMatching(String s, String s1)
    {
        Pattern pattern;
        try
        {
            pattern = Pattern.compile(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Pattern syntax error: ").append(s1).toString(), s);
        }
        return getElementsByAttributeValueMatching(s, pattern);
    }

    public Elements getElementsByAttributeValueMatching(String s, Pattern pattern)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeWithValueMatching(s, pattern), this);
    }

    public Elements getElementsByAttributeValueNot(String s, String s1)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeWithValueNot(s, s1), this);
    }

    public Elements getElementsByAttributeValueStarting(String s, String s1)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.AttributeWithValueStarting(s, s1), this);
    }

    public Elements getElementsByClass(String s)
    {
        Validate.notEmpty(s);
        return Collector.collect(new org.jsoup.select.Evaluator.Class(s), this);
    }

    public Elements getElementsByIndexEquals(int i)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.IndexEquals(i), this);
    }

    public Elements getElementsByIndexGreaterThan(int i)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.IndexGreaterThan(i), this);
    }

    public Elements getElementsByIndexLessThan(int i)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.IndexLessThan(i), this);
    }

    public Elements getElementsByTag(String s)
    {
        Validate.notEmpty(s);
        return Collector.collect(new org.jsoup.select.Evaluator.Tag(s.toLowerCase().trim()), this);
    }

    public Elements getElementsContainingOwnText(String s)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.ContainsOwnText(s), this);
    }

    public Elements getElementsContainingText(String s)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.ContainsText(s), this);
    }

    public Elements getElementsMatchingOwnText(String s)
    {
        Pattern pattern;
        try
        {
            pattern = Pattern.compile(s);
        }
        catch (PatternSyntaxException patternsyntaxexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Pattern syntax error: ").append(s).toString(), patternsyntaxexception);
        }
        return getElementsMatchingOwnText(pattern);
    }

    public Elements getElementsMatchingOwnText(Pattern pattern)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.MatchesOwn(pattern), this);
    }

    public Elements getElementsMatchingText(String s)
    {
        Pattern pattern;
        try
        {
            pattern = Pattern.compile(s);
        }
        catch (PatternSyntaxException patternsyntaxexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Pattern syntax error: ").append(s).toString(), patternsyntaxexception);
        }
        return getElementsMatchingText(pattern);
    }

    public Elements getElementsMatchingText(Pattern pattern)
    {
        return Collector.collect(new org.jsoup.select.Evaluator.Matches(pattern), this);
    }

    public boolean hasClass(String s)
    {
        for (Iterator iterator = classNames().iterator(); iterator.hasNext();)
        {
            if (s.equalsIgnoreCase((String)iterator.next()))
            {
                return true;
            }
        }

        return false;
    }

    public boolean hasText()
    {
label0:
        {
            Iterator iterator = childNodes.iterator();
            Node node;
label1:
            do
            {
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    node = (Node)iterator.next();
                    if (!(node instanceof TextNode))
                    {
                        continue label1;
                    }
                } while (((TextNode)node).isBlank());
                return true;
            } while (!(node instanceof Element) || !((Element)node).hasText());
            return true;
        }
        return false;
    }

    public int hashCode()
    {
        int j = super.hashCode();
        int i;
        if (tag != null)
        {
            i = tag.hashCode();
        } else
        {
            i = 0;
        }
        return j * 31 + i;
    }

    public String html()
    {
        StringBuilder stringbuilder = new StringBuilder();
        html(stringbuilder);
        if (getOutputSettings().prettyPrint())
        {
            return stringbuilder.toString().trim();
        } else
        {
            return stringbuilder.toString();
        }
    }

    public Element html(String s)
    {
        empty();
        append(s);
        return this;
    }

    public String id()
    {
        String s1 = attr("id");
        String s = s1;
        if (s1 == null)
        {
            s = "";
        }
        return s;
    }

    public Element insertChildren(int i, Collection collection)
    {
        Validate.notNull(collection, "Children collection to be inserted must not be null.");
        int k = childNodeSize();
        int j = i;
        if (i < 0)
        {
            j = i + (k + 1);
        }
        boolean flag;
        if (j >= 0 && j <= k)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Validate.isTrue(flag, "Insert position out of bounds.");
        collection = new ArrayList(collection);
        addChildren(j, (Node[])collection.toArray(new Node[collection.size()]));
        return this;
    }

    public boolean isBlock()
    {
        return tag.isBlock();
    }

    public Element lastElementSibling()
    {
        Elements elements = parent().children();
        if (elements.size() > 1)
        {
            return (Element)elements.get(elements.size() - 1);
        } else
        {
            return null;
        }
    }

    public Element nextElementSibling()
    {
        if (parentNode != null)
        {
            Elements elements = parent().children();
            Integer integer = indexInList(this, elements);
            Validate.notNull(integer);
            if (elements.size() > integer.intValue() + 1)
            {
                return (Element)elements.get(integer.intValue() + 1);
            }
        }
        return null;
    }

    public String nodeName()
    {
        return tag.getName();
    }

    void outerHtmlHead(StringBuilder stringbuilder, int i, Document.OutputSettings outputsettings)
    {
        if (stringbuilder.length() > 0 && outputsettings.prettyPrint() && (tag.formatAsBlock() || parent() != null && parent().tag().formatAsBlock() || outputsettings.outline()))
        {
            indent(stringbuilder, i, outputsettings);
        }
        stringbuilder.append("<").append(tagName());
        attributes.html(stringbuilder, outputsettings);
        if (childNodes.isEmpty() && tag.isSelfClosing())
        {
            if (outputsettings.syntax() == Document.OutputSettings.Syntax.html && tag.isEmpty())
            {
                stringbuilder.append('>');
                return;
            } else
            {
                stringbuilder.append(" />");
                return;
            }
        } else
        {
            stringbuilder.append(">");
            return;
        }
    }

    void outerHtmlTail(StringBuilder stringbuilder, int i, Document.OutputSettings outputsettings)
    {
        if (!childNodes.isEmpty() || !tag.isSelfClosing())
        {
            if (outputsettings.prettyPrint() && !childNodes.isEmpty() && (tag.formatAsBlock() || outputsettings.outline() && (childNodes.size() > 1 || childNodes.size() == 1 && !(childNodes.get(0) instanceof TextNode))))
            {
                indent(stringbuilder, i, outputsettings);
            }
            stringbuilder.append("</").append(tagName()).append(">");
        }
    }

    public String ownText()
    {
        StringBuilder stringbuilder = new StringBuilder();
        ownText(stringbuilder);
        return stringbuilder.toString().trim();
    }

    public final Element parent()
    {
        return (Element)parentNode;
    }

    public volatile Node parent()
    {
        return parent();
    }

    public Elements parents()
    {
        Elements elements = new Elements();
        accumulateParents(this, elements);
        return elements;
    }

    public Element prepend(String s)
    {
        Validate.notNull(s);
        s = Parser.parseFragment(s, this, baseUri());
        addChildren(0, (Node[])s.toArray(new Node[s.size()]));
        return this;
    }

    public Element prependChild(Node node)
    {
        Validate.notNull(node);
        addChildren(0, new Node[] {
            node
        });
        return this;
    }

    public Element prependElement(String s)
    {
        s = new Element(Tag.valueOf(s), baseUri());
        prependChild(s);
        return s;
    }

    public Element prependText(String s)
    {
        prependChild(new TextNode(s, baseUri()));
        return this;
    }

    public Element previousElementSibling()
    {
        if (parentNode != null)
        {
            Elements elements = parent().children();
            Integer integer = indexInList(this, elements);
            Validate.notNull(integer);
            if (integer.intValue() > 0)
            {
                return (Element)elements.get(integer.intValue() - 1);
            }
        }
        return null;
    }

    public Element removeClass(String s)
    {
        Validate.notNull(s);
        Set set = classNames();
        set.remove(s);
        classNames(set);
        return this;
    }

    public Elements select(String s)
    {
        return Selector.select(s, this);
    }

    public Elements siblingElements()
    {
        if (parentNode != null) goto _L2; else goto _L1
_L1:
        Object obj = new Elements(0);
_L4:
        return ((Elements) (obj));
_L2:
        obj = parent().children();
        Elements elements = new Elements(((List) (obj)).size() - 1);
        Iterator iterator = ((List) (obj)).iterator();
        do
        {
            obj = elements;
            if (!iterator.hasNext())
            {
                continue;
            }
            obj = (Element)iterator.next();
            if (obj != this)
            {
                elements.add(((Element) (obj)));
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Tag tag()
    {
        return tag;
    }

    public String tagName()
    {
        return tag.getName();
    }

    public Element tagName(String s)
    {
        Validate.notEmpty(s, "Tag name must not be empty.");
        tag = Tag.valueOf(s);
        return this;
    }

    public String text()
    {
        final StringBuilder accum = new StringBuilder();
        (new NodeTraversor(new NodeVisitor() {

            final Element this$0;
            final StringBuilder val$accum;

            public void head(Node node, int i)
            {
                if (node instanceof TextNode)
                {
                    node = (TextNode)node;
                    Element.appendNormalisedText(accum, node);
                } else
                if (node instanceof Element)
                {
                    node = (Element)node;
                    if (accum.length() > 0 && (node.isBlock() || ((Element) (node)).tag.getName().equals("br")) && !TextNode.lastCharIsWhitespace(accum))
                    {
                        accum.append(" ");
                        return;
                    }
                }
            }

            public void tail(Node node, int i)
            {
            }

            
            {
                this$0 = Element.this;
                accum = stringbuilder;
                super();
            }
        })).traverse(this);
        return accum.toString().trim();
    }

    public Element text(String s)
    {
        Validate.notNull(s);
        empty();
        appendChild(new TextNode(s, baseUri));
        return this;
    }

    public List textNodes()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = childNodes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Node node = (Node)iterator.next();
            if (node instanceof TextNode)
            {
                arraylist.add((TextNode)node);
            }
        } while (true);
        return Collections.unmodifiableList(arraylist);
    }

    public String toString()
    {
        return outerHtml();
    }

    public Element toggleClass(String s)
    {
        Validate.notNull(s);
        Set set = classNames();
        if (set.contains(s))
        {
            set.remove(s);
        } else
        {
            set.add(s);
        }
        classNames(set);
        return this;
    }

    public String val()
    {
        if (tagName().equals("textarea"))
        {
            return text();
        } else
        {
            return attr("value");
        }
    }

    public Element val(String s)
    {
        if (tagName().equals("textarea"))
        {
            text(s);
            return this;
        } else
        {
            attr("value", s);
            return this;
        }
    }

    public Element wrap(String s)
    {
        return (Element)super.wrap(s);
    }

    public volatile Node wrap(String s)
    {
        return wrap(s);
    }


}
