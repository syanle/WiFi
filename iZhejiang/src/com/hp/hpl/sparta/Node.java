// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import com.hp.hpl.sparta.xpath.BooleanExpr;
import com.hp.hpl.sparta.xpath.ElementTest;
import com.hp.hpl.sparta.xpath.Step;
import com.hp.hpl.sparta.xpath.XPathException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Vector;

// Referenced classes of package com.hp.hpl.sparta:
//            ParseException, Element, Document, DOMException, 
//            Text

public abstract class Node
{

    private Object annotation_;
    private Document doc_;
    private int hash_;
    private Node nextSibling_;
    private Element parentNode_;
    private Node previousSibling_;

    public Node()
    {
        doc_ = null;
        parentNode_ = null;
        previousSibling_ = null;
        nextSibling_ = null;
        annotation_ = null;
        hash_ = 0;
    }

    protected static void htmlEncode(Writer writer, String s)
        throws IOException
    {
        int i;
        int j;
        int l;
        j = 0;
        l = s.length();
        i = 0;
_L2:
        String s1;
        int k;
        if (i >= l)
        {
            if (j < l)
            {
                writer.write(s, j, l - j);
            }
            return;
        }
        k = s.charAt(i);
        if (k < 128)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = "&#" + k + ";";
_L4:
        k = j;
        if (s1 != null)
        {
            writer.write(s, j, i - j);
            writer.write(s1);
            k = i + 1;
        }
        i++;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
        switch (k)
        {
        default:
            s1 = null;
            break;

        case 60: // '<'
            s1 = "&lt;";
            break;

        case 62: // '>'
            s1 = "&gt;";
            break;

        case 38: // '&'
            s1 = "&amp;";
            break;

        case 34: // '"'
            s1 = "&quot;";
            break;

        case 39: // '\''
            s1 = "&#39;";
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public abstract Object clone();

    protected abstract int computeHashCode();

    public Object getAnnotation()
    {
        return annotation_;
    }

    public Node getNextSibling()
    {
        return nextSibling_;
    }

    public Document getOwnerDocument()
    {
        return doc_;
    }

    public Element getParentNode()
    {
        return parentNode_;
    }

    public Node getPreviousSibling()
    {
        return previousSibling_;
    }

    public int hashCode()
    {
        if (hash_ == 0)
        {
            hash_ = computeHashCode();
        }
        return hash_;
    }

    void insertAtEndOfLinkedList(Node node)
    {
        previousSibling_ = node;
        if (node != null)
        {
            node.nextSibling_ = this;
        }
    }

    Element makeMatching(final Element parent, Step step, final String msgContext)
        throws ParseException, XPathException
    {
        final String tagName = step.getNodeTest();
        if (!(tagName instanceof ElementTest))
        {
            throw new ParseException("\"" + tagName + "\" in \"" + msgContext + "\" is not an element test");
        } else
        {
            tagName = ((ElementTest)tagName).getTagName();
            final Element newChild = new Element(tagName);
            step.getPredicate().accept(new _cls1());
            return newChild;
        }
    }

    void notifyObservers()
    {
        hash_ = 0;
        if (doc_ != null)
        {
            doc_.notifyObservers();
        }
    }

    void removeFromLinkedList()
    {
        if (previousSibling_ != null)
        {
            previousSibling_.nextSibling_ = nextSibling_;
        }
        if (nextSibling_ != null)
        {
            nextSibling_.previousSibling_ = previousSibling_;
        }
        nextSibling_ = null;
        previousSibling_ = null;
    }

    void replaceInLinkedList(Node node)
    {
        if (previousSibling_ != null)
        {
            previousSibling_.nextSibling_ = node;
        }
        if (nextSibling_ != null)
        {
            nextSibling_.previousSibling_ = node;
        }
        node.nextSibling_ = nextSibling_;
        node.previousSibling_ = previousSibling_;
        nextSibling_ = null;
        previousSibling_ = null;
    }

    public void setAnnotation(Object obj)
    {
        annotation_ = obj;
    }

    void setOwnerDocument(Document document)
    {
        doc_ = document;
    }

    void setParentNode(Element element)
    {
        parentNode_ = element;
    }

    public String toString()
    {
        Object obj;
        try
        {
            obj = new ByteArrayOutputStream();
            OutputStreamWriter outputstreamwriter = new OutputStreamWriter(((java.io.OutputStream) (obj)));
            toString(((Writer) (outputstreamwriter)));
            outputstreamwriter.flush();
            obj = new String(((ByteArrayOutputStream) (obj)).toByteArray());
        }
        catch (IOException ioexception)
        {
            return super.toString();
        }
        return ((String) (obj));
    }

    abstract void toString(Writer writer)
        throws IOException;

    public String toXml()
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(bytearrayoutputstream);
        toXml(((Writer) (outputstreamwriter)));
        outputstreamwriter.flush();
        return new String(bytearrayoutputstream.toByteArray());
    }

    abstract void toXml(Writer writer)
        throws IOException;

    public abstract Element xpathSelectElement(String s)
        throws ParseException;

    public abstract Enumeration xpathSelectElements(String s)
        throws ParseException;

    public abstract String xpathSelectString(String s)
        throws ParseException;

    public abstract Enumeration xpathSelectStrings(String s)
        throws ParseException;

    public boolean xpathSetStrings(String s, String s1)
        throws ParseException
    {
        Object obj;
        Object obj1;
        int i;
        try
        {
            i = s.lastIndexOf('/');
            if (!s.substring(i + 1).equals("text()") && s.charAt(i + 1) != '@')
            {
                throw new ParseException("Last step of Xpath expression \"" + s + "\" is not \"text()\" and does not start with a '@'. It starts with a '" + s.charAt(i + 1) + "'");
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new Error("Assertion failed " + s);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new ParseException("Xpath expression \"" + s + "\" is not in the form \"xpathExpression/@attributeName\"");
        }
        obj1 = s.substring(0, i);
        if (s.charAt(i + 1) != '@') goto _L2; else goto _L1
_L1:
        obj = s.substring(i + 2);
        if (((String) (obj)).length() == 0)
        {
            throw new ParseException("Xpath expression \"" + s + "\" specifies zero-length attribute name\"");
        }
        obj1 = xpathSelectElements(((String) (obj1)));
        boolean flag = false;
_L3:
        if (!((Enumeration) (obj1)).hasMoreElements())
        {
            return flag;
        }
        Element element = (Element)((Enumeration) (obj1)).nextElement();
        if (s1.equals(element.getAttribute(((String) (obj)))))
        {
            continue; /* Loop/switch isn't completed */
        }
        element.setAttribute(((String) (obj)), s1);
        flag = true;
        if (true) goto _L3; else goto _L2
_L2:
        obj1 = xpathSelectElements(((String) (obj1)));
        flag = ((Enumeration) (obj1)).hasMoreElements();
_L12:
        if (!((Enumeration) (obj1)).hasMoreElements()) goto _L5; else goto _L4
_L4:
        Element element1;
        Vector vector;
        element1 = (Element)((Enumeration) (obj1)).nextElement();
        vector = new Vector();
        obj = element1.getFirstChild();
_L6:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_375;
        }
        if (vector.size() != 0)
        {
            break MISSING_BLOCK_LABEL_399;
        }
        obj = new Text(s1);
        if (((Text) (obj)).getData().length() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        element1.appendChild(((Node) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        if (obj instanceof Text)
        {
            vector.addElement((Text)obj);
        }
        obj = ((Node) (obj)).getNextSibling();
          goto _L6
        obj = (Text)vector.elementAt(0);
        if (((Text) (obj)).getData().equals(s1)) goto _L8; else goto _L7
_L7:
        vector.removeElementAt(0);
        ((Text) (obj)).setData(s1);
        flag = true;
          goto _L8
_L10:
        if (i >= vector.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        element1.removeChild((Text)vector.elementAt(i));
        i++;
        flag = true;
        break; /* Loop/switch isn't completed */
_L5:
        return flag;
_L8:
        i = 0;
        if (true) goto _L10; else goto _L9
_L9:
        if (true) goto _L12; else goto _L11
_L11:
    }

    private class _cls1
        implements BooleanExprVisitor
    {

        private final Node this$0;
        private final String val$msgContext;
        private final Element val$newChild;
        private final Element val$parent;
        private final String val$tagName;

        public void visit(AttrEqualsExpr attrequalsexpr)
            throws XPathException
        {
            newChild.setAttribute(attrequalsexpr.getAttrName(), attrequalsexpr.getAttrValue());
        }

        public void visit(AttrExistsExpr attrexistsexpr)
            throws XPathException
        {
            newChild.setAttribute(attrexistsexpr.getAttrName(), "something");
        }

        public void visit(AttrGreaterExpr attrgreaterexpr)
            throws XPathException
        {
            newChild.setAttribute(attrgreaterexpr.getAttrName(), Long.toString(0x7fffffffffffffffL));
        }

        public void visit(AttrLessExpr attrlessexpr)
            throws XPathException
        {
            newChild.setAttribute(attrlessexpr.getAttrName(), Long.toString(0x8000000000000000L));
        }

        public void visit(AttrNotEqualsExpr attrnotequalsexpr)
            throws XPathException
        {
            newChild.setAttribute(attrnotequalsexpr.getAttrName(), "not " + attrnotequalsexpr.getAttrValue());
        }

        public void visit(PositionEqualsExpr positionequalsexpr)
            throws XPathException
        {
            boolean flag = true;
            int j = positionequalsexpr.getPosition();
            int i = ((flag) ? 1 : 0);
            if (parent == null)
            {
                i = ((flag) ? 1 : 0);
                if (j != 1)
                {
                    throw new XPathException(XPath.get(msgContext), "Position of root node must be 1");
                }
            }
            for (; i < j; i++)
            {
                parent.appendChild(new Element(tagName));
            }

        }

        public void visit(TextEqualsExpr textequalsexpr)
            throws XPathException
        {
            newChild.appendChild(new Text(textequalsexpr.getValue()));
        }

        public void visit(TextExistsExpr textexistsexpr)
            throws XPathException
        {
            newChild.appendChild(new Text("something"));
        }

        public void visit(TextNotEqualsExpr textnotequalsexpr)
            throws XPathException
        {
            newChild.appendChild(new Text("not " + textnotequalsexpr.getValue()));
        }

        public void visit(TrueExpr trueexpr)
        {
        }

        _cls1()
            throws XPathException
        {
            this$0 = Node.this;
            newChild = element;
            parent = element1;
            msgContext = s;
            tagName = s1;
        }
    }

}
