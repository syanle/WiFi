// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import com.hp.hpl.sparta.xpath.Step;
import com.hp.hpl.sparta.xpath.XPath;
import com.hp.hpl.sparta.xpath.XPathException;
import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.hp.hpl.sparta:
//            Node, Sparta, DOMException, XPathVisitor, 
//            Document, ParseException, Text

public class Element extends Node
{

    private static final boolean DEBUG = false;
    private Vector attributeNames_;
    private Hashtable attributes_;
    private Node firstChild_;
    private Node lastChild_;
    private String tagName_;

    Element()
    {
        firstChild_ = null;
        lastChild_ = null;
        attributes_ = null;
        attributeNames_ = null;
        tagName_ = null;
    }

    public Element(String s)
    {
        firstChild_ = null;
        lastChild_ = null;
        attributes_ = null;
        attributeNames_ = null;
        tagName_ = null;
        tagName_ = Sparta.intern(s);
    }

    private void checkInvariant()
    {
    }

    private boolean removeChildNoChecking(Node node)
    {
        Node node1 = firstChild_;
        int i = 0;
        do
        {
            if (node1 == null)
            {
                return false;
            }
            if (node1.equals(node))
            {
                if (firstChild_ == node1)
                {
                    firstChild_ = node1.getNextSibling();
                }
                if (lastChild_ == node1)
                {
                    lastChild_ = node1.getPreviousSibling();
                }
                node1.removeFromLinkedList();
                node1.setParentNode(null);
                node1.setOwnerDocument(null);
                return true;
            }
            i++;
            node1 = node1.getNextSibling();
        } while (true);
    }

    private void replaceChild_(Node node, Node node1)
        throws DOMException
    {
        int i = 0;
        Node node2 = firstChild_;
        do
        {
            if (node2 == null)
            {
                throw new DOMException((short)8, "Cannot find " + node1 + " in " + this);
            }
            if (node2 == node1)
            {
                if (firstChild_ == node1)
                {
                    firstChild_ = node;
                }
                if (lastChild_ == node1)
                {
                    lastChild_ = node;
                }
                node1.replaceInLinkedList(node);
                node.setParentNode(this);
                node1.setParentNode(null);
                return;
            }
            i++;
            node2 = node2.getNextSibling();
        } while (true);
    }

    private XPathVisitor visitor(String s, boolean flag)
        throws XPathException
    {
        XPath xpath = XPath.get(s);
        if (xpath.isStringValue() != flag)
        {
            if (flag)
            {
                s = "evaluates to element not string";
            } else
            {
                s = "evaluates to string not element";
            }
            throw new XPathException(xpath, "\"" + xpath + "\" evaluates to " + s);
        } else
        {
            return new XPathVisitor(this, xpath);
        }
    }

    public void appendChild(Node node)
    {
        if (!canHaveAsDescendent(node))
        {
            node = (Element)node.clone();
        }
        appendChildNoChecking(node);
        notifyObservers();
    }

    void appendChildNoChecking(Node node)
    {
        Element element = node.getParentNode();
        if (element != null)
        {
            element.removeChildNoChecking(node);
        }
        node.insertAtEndOfLinkedList(lastChild_);
        if (firstChild_ == null)
        {
            firstChild_ = node;
        }
        node.setParentNode(this);
        lastChild_ = node;
        node.setOwnerDocument(getOwnerDocument());
    }

    boolean canHaveAsDescendent(Node node)
    {
        if (node == this)
        {
            return false;
        }
        Element element = getParentNode();
        if (element == null)
        {
            return true;
        } else
        {
            return element.canHaveAsDescendent(node);
        }
    }

    public Object clone()
    {
        return cloneElement(true);
    }

    public Element cloneElement(boolean flag)
    {
        Element element = new Element(tagName_);
        if (attributeNames_ == null) goto _L2; else goto _L1
_L1:
        Object obj = attributeNames_.elements();
_L6:
        if (((Enumeration) (obj)).hasMoreElements()) goto _L3; else goto _L2
_L2:
        if (!flag) goto _L5; else goto _L4
_L4:
        obj = firstChild_;
_L7:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
_L5:
        return element;
_L3:
        String s = (String)((Enumeration) (obj)).nextElement();
        element.setAttribute(s, (String)attributes_.get(s));
          goto _L6
        element.appendChild((Node)((Node) (obj)).clone());
        obj = ((Node) (obj)).getNextSibling();
          goto _L7
    }

    public Element cloneShallow()
    {
        return cloneElement(false);
    }

    protected int computeHashCode()
    {
        int i = tagName_.hashCode();
        if (attributes_ == null) goto _L2; else goto _L1
_L1:
        Object obj = attributes_.keys();
_L4:
        if (((Enumeration) (obj)).hasMoreElements()) goto _L3; else goto _L2
_L2:
        obj = firstChild_;
_L5:
        if (obj == null)
        {
            return i;
        }
        break MISSING_BLOCK_LABEL_88;
_L3:
        String s = (String)((Enumeration) (obj)).nextElement();
        int j = s.hashCode();
        i = ((String)attributes_.get(s)).hashCode() + (i * 31 + j) * 31;
          goto _L4
        i = i * 31 + ((Node) (obj)).hashCode();
        obj = ((Node) (obj)).getNextSibling();
          goto _L5
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (this != obj) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (!(obj instanceof Element)) goto _L4; else goto _L3
_L3:
        obj = (Element)obj;
        flag = flag1;
        if (!tagName_.equals(((Element) (obj)).tagName_)) goto _L4; else goto _L5
_L5:
        Object obj1;
        int i;
        int j;
        if (attributes_ == null)
        {
            i = 0;
        } else
        {
            i = attributes_.size();
        }
        if (((Element) (obj)).attributes_ == null)
        {
            j = 0;
        } else
        {
            j = ((Element) (obj)).attributes_.size();
        }
        flag = flag1;
        if (i != j) goto _L4; else goto _L6
_L6:
        if (attributes_ == null) goto _L8; else goto _L7
_L7:
        obj1 = attributes_.keys();
_L11:
        if (((Enumeration) (obj1)).hasMoreElements()) goto _L9; else goto _L8
_L8:
        obj1 = firstChild_;
        obj = ((Element) (obj)).firstChild_;
_L13:
        String s;
        if (obj1 == null)
        {
            return true;
        }
        flag = flag1;
          goto _L10
_L9:
        s = (String)((Enumeration) (obj1)).nextElement();
        if (!((String)attributes_.get(s)).equals((String)((Element) (obj)).attributes_.get(s)))
        {
            return false;
        }
          goto _L11
_L10:
        if (!obj1.equals(obj)) goto _L4; else goto _L12
_L12:
        obj1 = ((Node) (obj1)).getNextSibling();
        obj = ((Node) (obj)).getNextSibling();
          goto _L13
    }

    public String getAttribute(String s)
    {
        if (attributes_ == null)
        {
            return null;
        } else
        {
            return (String)attributes_.get(s);
        }
    }

    public Enumeration getAttributeNames()
    {
        if (attributeNames_ == null)
        {
            return Document.EMPTY;
        } else
        {
            return attributeNames_.elements();
        }
    }

    public Node getFirstChild()
    {
        return firstChild_;
    }

    public Node getLastChild()
    {
        return lastChild_;
    }

    public String getTagName()
    {
        return tagName_;
    }

    public void removeAttribute(String s)
    {
        if (attributes_ == null)
        {
            return;
        } else
        {
            attributes_.remove(s);
            attributeNames_.removeElement(s);
            notifyObservers();
            return;
        }
    }

    public void removeChild(Node node)
        throws DOMException
    {
        if (!removeChildNoChecking(node))
        {
            throw new DOMException((short)8, "Cannot find " + node + " in " + this);
        } else
        {
            notifyObservers();
            return;
        }
    }

    public void replaceChild(Element element, Node node)
        throws DOMException
    {
        replaceChild_(element, node);
        notifyObservers();
    }

    public void replaceChild(Text text, Node node)
        throws DOMException
    {
        replaceChild_(text, node);
        notifyObservers();
    }

    public void setAttribute(String s, String s1)
    {
        if (attributes_ == null)
        {
            attributes_ = new Hashtable();
            attributeNames_ = new Vector();
        }
        if (attributes_.get(s) == null)
        {
            attributeNames_.addElement(s);
        }
        attributes_.put(s, s1);
        notifyObservers();
    }

    public void setTagName(String s)
    {
        tagName_ = Sparta.intern(s);
        notifyObservers();
    }

    void toString(Writer writer)
        throws IOException
    {
        Node node = firstChild_;
        do
        {
            if (node == null)
            {
                return;
            }
            node.toString(writer);
            node = node.getNextSibling();
        } while (true);
    }

    public void toXml(Writer writer)
        throws IOException
    {
        writer.write("<" + tagName_);
        if (attributeNames_ == null) goto _L2; else goto _L1
_L1:
        Enumeration enumeration = attributeNames_.elements();
_L5:
        if (enumeration.hasMoreElements()) goto _L3; else goto _L2
_L2:
        if (firstChild_ == null)
        {
            writer.write("/>");
            return;
        }
        break; /* Loop/switch isn't completed */
_L3:
        String s = (String)enumeration.nextElement();
        String s1 = (String)attributes_.get(s);
        writer.write(" " + s + "=\"");
        Node.htmlEncode(writer, s1);
        writer.write("\"");
        if (true) goto _L5; else goto _L4
_L4:
        writer.write(">");
        Node node = firstChild_;
        do
        {
            if (node == null)
            {
                writer.write("</" + tagName_ + ">");
                return;
            }
            node.toXml(writer);
            node = node.getNextSibling();
        } while (true);
    }

    public boolean xpathEnsure(String s)
        throws ParseException
    {
        if (xpathSelectElement(s) != null)
        {
            return false;
        }
        Object obj;
        Object obj1;
        Step astep[];
        int i;
        try
        {
            obj = XPath.get(s);
            obj1 = ((XPath) (obj)).getSteps();
        }
        catch (XPathException xpathexception)
        {
            throw new ParseException(s, xpathexception);
        }
        i = 0;
        if (((Enumeration) (obj1)).hasMoreElements()) goto _L2; else goto _L1
_L1:
        astep = new Step[i - 1];
        obj1 = ((XPath) (obj)).getSteps();
        i = 0;
_L5:
        if (i < astep.length) goto _L4; else goto _L3
_L3:
        obj1 = (Step)((Enumeration) (obj1)).nextElement();
        if (astep.length != 0)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        obj = this;
_L6:
        ((Element) (obj)).appendChildNoChecking(makeMatching(((Element) (obj)), ((Step) (obj1)), s));
        return true;
_L2:
        ((Enumeration) (obj1)).nextElement();
        i++;
        break MISSING_BLOCK_LABEL_23;
_L4:
        astep[i] = (Step)((Enumeration) (obj1)).nextElement();
        i++;
          goto _L5
        obj = XPath.get(((XPath) (obj)).isAbsolute(), astep).toString();
        xpathEnsure(((String) (obj)).toString());
        obj = xpathSelectElement(((String) (obj)));
          goto _L6
    }

    public Element xpathSelectElement(String s)
        throws ParseException
    {
        try
        {
            s = visitor(s, false).getFirstResultElement();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new ParseException("XPath problem", s);
        }
        return s;
    }

    public Enumeration xpathSelectElements(String s)
        throws ParseException
    {
        try
        {
            s = visitor(s, false).getResultEnumeration();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new ParseException("XPath problem", s);
        }
        return s;
    }

    public String xpathSelectString(String s)
        throws ParseException
    {
        try
        {
            s = visitor(s, true).getFirstResultString();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new ParseException("XPath problem", s);
        }
        return s;
    }

    public Enumeration xpathSelectStrings(String s)
        throws ParseException
    {
        try
        {
            s = visitor(s, true).getResultEnumeration();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new ParseException("XPath problem", s);
        }
        return s;
    }
}
