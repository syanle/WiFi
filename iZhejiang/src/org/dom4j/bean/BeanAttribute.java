// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.bean;

import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractAttribute;

// Referenced classes of package org.dom4j.bean:
//            BeanAttributeList

public class BeanAttribute extends AbstractAttribute
{

    private final BeanAttributeList beanList;
    private final int index;

    public BeanAttribute(BeanAttributeList beanattributelist, int i)
    {
        beanList = beanattributelist;
        index = i;
    }

    public Object getData()
    {
        return beanList.getData(index);
    }

    public Element getParent()
    {
        return beanList.getParent();
    }

    public QName getQName()
    {
        return beanList.getQName(index);
    }

    public String getValue()
    {
        Object obj = getData();
        if (obj != null)
        {
            return obj.toString();
        } else
        {
            return null;
        }
    }

    public void setData(Object obj)
    {
        beanList.setData(index, obj);
    }

    public void setValue(String s)
    {
        beanList.setData(index, s);
    }
}
