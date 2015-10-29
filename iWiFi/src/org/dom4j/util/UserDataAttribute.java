// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;

public class UserDataAttribute extends DefaultAttribute
{

    private Object data;

    public UserDataAttribute(QName qname)
    {
        super(qname);
    }

    public UserDataAttribute(QName qname, String s)
    {
        super(qname, s);
    }

    public Object getData()
    {
        return data;
    }

    public void setData(Object obj)
    {
        data = obj;
    }
}
