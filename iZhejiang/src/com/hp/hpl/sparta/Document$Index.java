// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import com.hp.hpl.sparta.xpath.XPath;
import com.hp.hpl.sparta.xpath.XPathException;
import java.util.Enumeration;
import java.util.Vector;

// Referenced classes of package com.hp.hpl.sparta:
//            Document, ParseException, Sparta, XPathVisitor, 
//            Element

public class er
    implements er
{

    private final String attrName_;
    private transient dict_ dict_;
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
            vector1 = (Vector)dict_.t(s);
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
        dict_.t(s, vector);
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
        s = (Vector)dict_.t(s);
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
        i = dict_.ze();
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

    er(XPath xpath)
        throws XPathException
    {
        this$0 = Document.this;
        dict_ = null;
        attrName_ = xpath.getIndexingAttrName();
        xpath_ = xpath;
        addObserver(this);
    }
}
