// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.bean;

import java.io.PrintStream;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;
import org.xml.sax.Attributes;

// Referenced classes of package org.dom4j.bean:
//            BeanElement

public class BeanDocumentFactory extends DocumentFactory
{

    static Class class$org$dom4j$bean$BeanDocumentFactory;
    private static BeanDocumentFactory singleton = new BeanDocumentFactory();

    public BeanDocumentFactory()
    {
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

    public static DocumentFactory getInstance()
    {
        return singleton;
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        return new DefaultAttribute(qname, s);
    }

    protected Object createBean(QName qname)
    {
        return null;
    }

    protected Object createBean(QName qname, Attributes attributes)
    {
        attributes = attributes.getValue("class");
        if (attributes != null)
        {
            try
            {
                if (class$org$dom4j$bean$BeanDocumentFactory == null)
                {
                    qname = _mthclass$("org.dom4j.bean.BeanDocumentFactory");
                    class$org$dom4j$bean$BeanDocumentFactory = qname;
                } else
                {
                    qname = class$org$dom4j$bean$BeanDocumentFactory;
                }
                return Class.forName(attributes, true, qname.getClassLoader()).newInstance();
            }
            // Misplaced declaration of an exception variable
            catch (QName qname)
            {
                handleException(qname);
            }
        }
        return null;
    }

    public Element createElement(QName qname)
    {
        Object obj = createBean(qname);
        if (obj == null)
        {
            return new BeanElement(qname);
        } else
        {
            return new BeanElement(qname, obj);
        }
    }

    public Element createElement(QName qname, Attributes attributes)
    {
        attributes = ((Attributes) (createBean(qname, attributes)));
        if (attributes == null)
        {
            return new BeanElement(qname);
        } else
        {
            return new BeanElement(qname, attributes);
        }
    }

    protected void handleException(Exception exception)
    {
        System.out.println("#### Warning: couldn't create bean: " + exception);
    }

}
