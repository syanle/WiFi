// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.QName;

public class AttributeHelper
{

    protected AttributeHelper()
    {
    }

    protected static boolean booleanValue(Attribute attribute)
    {
        if (attribute != null)
        {
            if ((attribute = ((Attribute) (attribute.getData()))) != null)
            {
                if (attribute instanceof Boolean)
                {
                    return ((Boolean)attribute).booleanValue();
                } else
                {
                    return "true".equalsIgnoreCase(attribute.toString());
                }
            }
        }
        return false;
    }

    public static boolean booleanValue(Element element, String s)
    {
        return booleanValue(element.attribute(s));
    }

    public static boolean booleanValue(Element element, QName qname)
    {
        return booleanValue(element.attribute(qname));
    }
}
