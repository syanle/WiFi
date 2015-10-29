// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.xpp;

import java.util.ArrayList;
import java.util.Iterator;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractElement;
import org.gjt.xpp.XmlPullParserException;
import org.gjt.xpp.XmlStartTag;

public class ProxyXmlStartTag
    implements XmlStartTag
{

    private Element element;
    private DocumentFactory factory;

    public ProxyXmlStartTag()
    {
        factory = DocumentFactory.getInstance();
    }

    public ProxyXmlStartTag(Element element1)
    {
        factory = DocumentFactory.getInstance();
        element = element1;
    }

    public void addAttribute(String s, String s1, String s2, String s3)
        throws XmlPullParserException
    {
        s = QName.get(s2, s);
        element.addAttribute(s, s3);
    }

    public void addAttribute(String s, String s1, String s2, String s3, boolean flag)
        throws XmlPullParserException
    {
        if (flag)
        {
            s1 = "";
            int i = s2.indexOf(':');
            if (i > 0)
            {
                s1 = s2.substring(0, i);
            }
            element.addNamespace(s1, s);
            return;
        } else
        {
            s = QName.get(s2, s);
            element.addAttribute(s, s3);
            return;
        }
    }

    public void ensureAttributesCapacity(int i)
        throws XmlPullParserException
    {
        if (element instanceof AbstractElement)
        {
            ((AbstractElement)element).ensureAttributesCapacity(i);
        }
    }

    public int getAttributeCount()
    {
        if (element != null)
        {
            return element.attributeCount();
        } else
        {
            return 0;
        }
    }

    public String getAttributeLocalName(int i)
    {
        if (element != null)
        {
            Attribute attribute = element.attribute(i);
            if (attribute != null)
            {
                return attribute.getName();
            }
        }
        return null;
    }

    public String getAttributeNamespaceUri(int i)
    {
        if (element != null)
        {
            Attribute attribute = element.attribute(i);
            if (attribute != null)
            {
                return attribute.getNamespaceURI();
            }
        }
        return null;
    }

    public String getAttributePrefix(int i)
    {
        if (element != null)
        {
            Object obj = element.attribute(i);
            if (obj != null)
            {
                obj = ((Attribute) (obj)).getNamespacePrefix();
                if (obj != null && ((String) (obj)).length() > 0)
                {
                    return ((String) (obj));
                }
            }
        }
        return null;
    }

    public String getAttributeRawName(int i)
    {
        if (element != null)
        {
            Attribute attribute = element.attribute(i);
            if (attribute != null)
            {
                return attribute.getQualifiedName();
            }
        }
        return null;
    }

    public String getAttributeValue(int i)
    {
        if (element != null)
        {
            Attribute attribute = element.attribute(i);
            if (attribute != null)
            {
                return attribute.getValue();
            }
        }
        return null;
    }

    public String getAttributeValueFromName(String s, String s1)
    {
label0:
        {
            if (element == null)
            {
                break label0;
            }
            Iterator iterator = element.attributeIterator();
            Attribute attribute;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                attribute = (Attribute)iterator.next();
            } while (!s.equals(attribute.getNamespaceURI()) || !s1.equals(attribute.getName()));
            return attribute.getValue();
        }
        return null;
    }

    public String getAttributeValueFromRawName(String s)
    {
label0:
        {
            if (element == null)
            {
                break label0;
            }
            Iterator iterator = element.attributeIterator();
            Attribute attribute;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                attribute = (Attribute)iterator.next();
            } while (!s.equals(attribute.getQualifiedName()));
            return attribute.getValue();
        }
        return null;
    }

    public DocumentFactory getDocumentFactory()
    {
        return factory;
    }

    public Element getElement()
    {
        return element;
    }

    public String getLocalName()
    {
        return element.getName();
    }

    public String getNamespaceUri()
    {
        return element.getNamespaceURI();
    }

    public String getPrefix()
    {
        return element.getNamespacePrefix();
    }

    public String getRawName()
    {
        return element.getQualifiedName();
    }

    public boolean isAttributeNamespaceDeclaration(int i)
    {
        if (element != null)
        {
            Attribute attribute = element.attribute(i);
            if (attribute != null)
            {
                return "xmlns".equals(attribute.getNamespacePrefix());
            }
        }
        return false;
    }

    public void modifyTag(String s, String s1, String s2)
    {
        element = factory.createElement(s2, s);
    }

    public boolean removeAttributeByName(String s, String s1)
        throws XmlPullParserException
    {
        if (element != null)
        {
            s = QName.get(s1, s);
            s = element.attribute(s);
            return element.remove(s);
        } else
        {
            return false;
        }
    }

    public boolean removeAttributeByRawName(String s)
        throws XmlPullParserException
    {
        if (element != null)
        {
            Object obj = null;
            Iterator iterator = element.attributeIterator();
            Attribute attribute;
            do
            {
                attribute = obj;
                if (!iterator.hasNext())
                {
                    break;
                }
                attribute = (Attribute)iterator.next();
            } while (!attribute.getQualifiedName().equals(s));
            return element.remove(attribute);
        } else
        {
            return false;
        }
    }

    public void removeAttributes()
        throws XmlPullParserException
    {
        if (element != null)
        {
            element.setAttributes(new ArrayList());
        }
    }

    public void removeAtttributes()
        throws XmlPullParserException
    {
        removeAttributes();
    }

    public void resetStartTag()
    {
        element = null;
    }

    public void resetTag()
    {
        element = null;
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        factory = documentfactory;
    }
}
