// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.bean;

import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;

// Referenced classes of package org.dom4j.bean:
//            BeanDocumentFactory, BeanAttributeList

public class BeanElement extends DefaultElement
{

    private static final DocumentFactory DOCUMENT_FACTORY = BeanDocumentFactory.getInstance();
    static Class class$org$dom4j$bean$BeanElement;
    private Object bean;

    public BeanElement(String s, Object obj)
    {
        this(DOCUMENT_FACTORY.createQName(s), obj);
    }

    public BeanElement(String s, Namespace namespace, Object obj)
    {
        this(DOCUMENT_FACTORY.createQName(s, namespace), obj);
    }

    public BeanElement(QName qname)
    {
        super(qname);
    }

    public BeanElement(QName qname, Object obj)
    {
        super(qname);
        bean = obj;
    }

    static Class _mthclass$(String s)
    {
        try
        {
            s = Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new NoClassDefFoundError(s.getMessage());
        }
        return s;
    }

    public Element addAttribute(String s, String s1)
    {
        s = attribute(s);
        if (s != null)
        {
            s.setValue(s1);
        }
        return this;
    }

    public Element addAttribute(QName qname, String s)
    {
        qname = attribute(qname);
        if (qname != null)
        {
            qname.setValue(s);
        }
        return this;
    }

    public Attribute attribute(String s)
    {
        return getBeanAttributeList().attribute(s);
    }

    public Attribute attribute(QName qname)
    {
        return getBeanAttributeList().attribute(qname);
    }

    protected List createAttributeList()
    {
        return new BeanAttributeList(this);
    }

    protected List createAttributeList(int i)
    {
        return new BeanAttributeList(this);
    }

    protected BeanAttributeList getBeanAttributeList()
    {
        return (BeanAttributeList)attributeList();
    }

    public Object getData()
    {
        return bean;
    }

    protected DocumentFactory getDocumentFactory()
    {
        return DOCUMENT_FACTORY;
    }

    public void setAttributes(List list)
    {
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public void setAttributes(Attributes attributes, NamespaceStack namespacestack, boolean flag)
    {
        String s = attributes.getValue("class");
        if (s == null) goto _L2; else goto _L1
_L1:
        if (class$org$dom4j$bean$BeanElement != null) goto _L4; else goto _L3
_L3:
        namespacestack = _mthclass$("org.dom4j.bean.BeanElement");
        class$org$dom4j$bean$BeanElement = namespacestack;
_L8:
        setData(Class.forName(s, true, namespacestack.getClassLoader()).newInstance());
        int i;
        i = 0;
        break MISSING_BLOCK_LABEL_51;
_L4:
        namespacestack = class$org$dom4j$bean$BeanElement;
        continue; /* Loop/switch isn't completed */
_L6:
        try
        {
            if (i < attributes.getLength())
            {
                namespacestack = attributes.getLocalName(i);
                if (!"class".equalsIgnoreCase(namespacestack))
                {
                    addAttribute(namespacestack, attributes.getValue(i));
                }
                break MISSING_BLOCK_LABEL_125;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Attributes attributes)
        {
            ((BeanDocumentFactory)getDocumentFactory()).handleException(attributes);
        }
        return;
_L2:
        super.setAttributes(attributes, namespacestack, flag);
        return;
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void setData(Object obj)
    {
        bean = obj;
        setAttributeList(null);
    }

}
