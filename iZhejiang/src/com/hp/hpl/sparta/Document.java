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
//            Node, EmptyEnumeration, Sparta, Element, 
//            XPathVisitor, ParseException

public class Document extends Node
{
    public class Index
        implements Observer
    {

        private final String attrName_;
        private transient Sparta.Cache dict_;
        private final Document this$0;
        private final XPath xpath_;

        private void regenerate()
            throws ParseException
        {
            Enumeration enumeration;
            dict_ = Sparta.newCache();
            enumeration = visitor(xpath_, false).getResultEnumeration();
_L1:
            if (!enumeration.hasMoreElements())
            {
                return;
            }
            Vector vector;
            Vector vector1;
            Element element;
            String s;
            try
            {
                element = (Element)enumeration.nextElement();
                s = element.getAttribute(attrName_);
                vector1 = (Vector)dict_.get(s);
            }
            catch (XPathException xpathexception)
            {
                throw new ParseException("XPath problem", xpathexception);
            }
            vector = vector1;
            if (vector1 != null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            vector = new Vector(1);
            dict_.put(s, vector);
            vector.addElement(element);
              goto _L1
        }

        public Enumeration get(String s)
            throws ParseException
        {
            this;
            JVM INSTR monitorenter ;
            if (dict_ == null)
            {
                regenerate();
            }
            s = (Vector)dict_.get(s);
            if (s != null) goto _L2; else goto _L1
_L1:
            s = Document.EMPTY;
_L4:
            this;
            JVM INSTR monitorexit ;
            return s;
_L2:
            s = s.elements();
            if (true) goto _L4; else goto _L3
_L3:
            s;
            throw s;
        }

        public int size()
            throws ParseException
        {
            this;
            JVM INSTR monitorenter ;
            int i;
            if (dict_ == null)
            {
                regenerate();
            }
            i = dict_.size();
            this;
            JVM INSTR monitorexit ;
            return i;
            Exception exception;
            exception;
            throw exception;
        }

        public void update(Document document)
        {
            this;
            JVM INSTR monitorenter ;
            dict_ = null;
            this;
            JVM INSTR monitorexit ;
            return;
            document;
            throw document;
        }

        Index(XPath xpath)
            throws XPathException
        {
            this$0 = Document.this;
            dict_ = null;
            attrName_ = xpath.getIndexingAttrName();
            xpath_ = xpath;
            addObserver(this);
        }
    }

    public static interface Observer
    {

        public abstract void update(Document document);
    }


    private static final boolean DEBUG = false;
    static final Enumeration EMPTY = new EmptyEnumeration();
    private static final Integer ONE = new Integer(1);
    private final Hashtable indexible_;
    private Sparta.Cache indices_;
    private Vector observers_;
    private Element rootElement_;
    private String systemId_;

    public Document()
    {
        rootElement_ = null;
        indices_ = Sparta.newCache();
        observers_ = new Vector();
        indexible_ = (Hashtable)null;
        systemId_ = "MEMORY";
    }

    Document(String s)
    {
        rootElement_ = null;
        indices_ = Sparta.newCache();
        observers_ = new Vector();
        indexible_ = (Hashtable)null;
        systemId_ = s;
    }

    private XPathVisitor visitor(String s, boolean flag)
        throws XPathException
    {
        String s1 = s;
        if (s.charAt(0) != '/')
        {
            s1 = "/" + s;
        }
        return visitor(XPath.get(s1), flag);
    }

    public void addObserver(Observer observer)
    {
        observers_.addElement(observer);
    }

    public Object clone()
    {
        Document document = new Document(systemId_);
        document.rootElement_ = (Element)rootElement_.clone();
        return document;
    }

    protected int computeHashCode()
    {
        return rootElement_.hashCode();
    }

    public void deleteObserver(Observer observer)
    {
        observers_.removeElement(observer);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Document))
        {
            return false;
        } else
        {
            obj = (Document)obj;
            return rootElement_.equals(((Document) (obj)).rootElement_);
        }
    }

    public Element getDocumentElement()
    {
        return rootElement_;
    }

    public String getSystemId()
    {
        return systemId_;
    }

    void monitor(XPath xpath)
        throws XPathException
    {
    }

    void notifyObservers()
    {
        Enumeration enumeration = observers_.elements();
        do
        {
            if (!enumeration.hasMoreElements())
            {
                return;
            }
            ((Observer)enumeration.nextElement()).update(this);
        } while (true);
    }

    public void setDocumentElement(Element element)
    {
        rootElement_ = element;
        rootElement_.setOwnerDocument(this);
        notifyObservers();
    }

    public void setSystemId(String s)
    {
        systemId_ = s;
        notifyObservers();
    }

    public String toString()
    {
        return systemId_;
    }

    public void toString(Writer writer)
        throws IOException
    {
        rootElement_.toString(writer);
    }

    public void toXml(Writer writer)
        throws IOException
    {
        writer.write("<?xml version=\"1.0\" ?>\n");
        rootElement_.toXml(writer);
    }

    XPathVisitor visitor(XPath xpath, boolean flag)
        throws XPathException
    {
        if (xpath.isStringValue() != flag)
        {
            String s;
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

    public boolean xpathEnsure(String s)
        throws ParseException
    {
        Step astep[];
        if (xpathSelectElement(s) != null)
        {
            return false;
        }
        Object obj;
        Object obj1;
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
_L11:
        if (((Enumeration) (obj1)).hasMoreElements()) goto _L2; else goto _L1
_L1:
        obj = ((XPath) (obj)).getSteps();
        obj1 = (Step)((Enumeration) (obj)).nextElement();
        astep = new Step[i - 1];
        i = 0;
_L7:
        if (i < astep.length) goto _L4; else goto _L3
_L3:
        if (rootElement_ != null) goto _L6; else goto _L5
_L5:
        setDocumentElement(makeMatching(null, ((Step) (obj1)), s));
_L9:
        if (astep.length == 0)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_220;
_L2:
        ((Enumeration) (obj1)).nextElement();
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        astep[i] = (Step)((Enumeration) (obj)).nextElement();
        i++;
          goto _L7
_L6:
        if (xpathSelectElement("/" + obj1) != null) goto _L9; else goto _L8
_L8:
        throw new ParseException("Existing root element <" + rootElement_.getTagName() + "...> does not match first step \"" + obj1 + "\" of \"" + s);
        boolean flag = rootElement_.xpathEnsure(XPath.get(false, astep).toString());
        return flag;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public Index xpathGetIndex(String s)
        throws ParseException
    {
        Index index;
        Index index1;
        try
        {
            index1 = (Index)indices_.get(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new ParseException("XPath problem", s);
        }
        index = index1;
        if (index1 != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        index = new Index(XPath.get(s));
        indices_.put(s, index);
        return index;
    }

    public boolean xpathHasIndex(String s)
    {
        return indices_.get(s) != null;
    }

    public Element xpathSelectElement(String s)
        throws ParseException
    {
        String s1 = s;
        try
        {
            if (s.charAt(0) != '/')
            {
                s1 = "/" + s;
            }
            s = XPath.get(s1);
            monitor(s);
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
        String s1 = s;
        try
        {
            if (s.charAt(0) != '/')
            {
                s1 = "/" + s;
            }
            s = XPath.get(s1);
            monitor(s);
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
