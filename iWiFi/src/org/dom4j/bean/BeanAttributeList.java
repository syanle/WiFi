// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.bean;

import java.util.AbstractList;
import org.dom4j.Attribute;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.bean:
//            BeanElement, BeanMetaData, BeanAttribute

public class BeanAttributeList extends AbstractList
{

    private BeanAttribute attributes[];
    private BeanMetaData beanMetaData;
    private BeanElement parent;

    public BeanAttributeList(BeanElement beanelement)
    {
        parent = beanelement;
        beanelement = ((BeanElement) (beanelement.getData()));
        if (beanelement != null)
        {
            beanelement = beanelement.getClass();
        } else
        {
            beanelement = null;
        }
        beanMetaData = BeanMetaData.get(beanelement);
        attributes = new BeanAttribute[beanMetaData.attributeCount()];
    }

    public BeanAttributeList(BeanElement beanelement, BeanMetaData beanmetadata)
    {
        parent = beanelement;
        beanMetaData = beanmetadata;
        attributes = new BeanAttribute[beanmetadata.attributeCount()];
    }

    public void add(int i, Object obj)
    {
        throw new UnsupportedOperationException("add(int,Object) unsupported");
    }

    public boolean add(Object obj)
    {
        throw new UnsupportedOperationException("add(Object) unsupported");
    }

    public Attribute attribute(String s)
    {
        return attribute(beanMetaData.getIndex(s));
    }

    public Attribute attribute(QName qname)
    {
        return attribute(beanMetaData.getIndex(qname));
    }

    public BeanAttribute attribute(int i)
    {
        if (i >= 0 && i <= attributes.length)
        {
            BeanAttribute beanattribute1 = attributes[i];
            BeanAttribute beanattribute = beanattribute1;
            if (beanattribute1 == null)
            {
                beanattribute = createAttribute(parent, i);
                attributes[i] = beanattribute;
            }
            return beanattribute;
        } else
        {
            return null;
        }
    }

    public void clear()
    {
        int i = 0;
        for (int j = attributes.length; i < j; i++)
        {
            BeanAttribute beanattribute = attributes[i];
            if (beanattribute != null)
            {
                beanattribute.setValue(null);
            }
        }

    }

    protected BeanAttribute createAttribute(BeanElement beanelement, int i)
    {
        return new BeanAttribute(this, i);
    }

    public Object get(int i)
    {
        BeanAttribute beanattribute1 = attributes[i];
        BeanAttribute beanattribute = beanattribute1;
        if (beanattribute1 == null)
        {
            beanattribute = createAttribute(parent, i);
            attributes[i] = beanattribute;
        }
        return beanattribute;
    }

    public Object getData(int i)
    {
        return beanMetaData.getData(i, parent.getData());
    }

    public BeanElement getParent()
    {
        return parent;
    }

    public QName getQName(int i)
    {
        return beanMetaData.getQName(i);
    }

    public Object remove(int i)
    {
        BeanAttribute beanattribute = (BeanAttribute)get(i);
        String s = beanattribute.getValue();
        beanattribute.setValue(null);
        return s;
    }

    public boolean remove(Object obj)
    {
        return false;
    }

    public Object set(int i, Object obj)
    {
        throw new UnsupportedOperationException("set(int,Object) unsupported");
    }

    public void setData(int i, Object obj)
    {
        beanMetaData.setData(i, parent.getData(), obj);
    }

    public int size()
    {
        return attributes.length;
    }
}
