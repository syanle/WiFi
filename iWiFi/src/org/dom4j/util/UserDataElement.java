// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;

public class UserDataElement extends DefaultElement
{

    private Object data;

    public UserDataElement(String s)
    {
        super(s);
    }

    public UserDataElement(QName qname)
    {
        super(qname);
    }

    public Object clone()
    {
        UserDataElement userdataelement = (UserDataElement)super.clone();
        if (userdataelement != this)
        {
            userdataelement.data = getCopyOfUserData();
        }
        return userdataelement;
    }

    protected Element createElement(String s)
    {
        s = getDocumentFactory().createElement(s);
        s.setData(getCopyOfUserData());
        return s;
    }

    protected Element createElement(QName qname)
    {
        qname = getDocumentFactory().createElement(qname);
        qname.setData(getCopyOfUserData());
        return qname;
    }

    protected Object getCopyOfUserData()
    {
        return data;
    }

    public Object getData()
    {
        return data;
    }

    public void setData(Object obj)
    {
        data = obj;
    }

    public String toString()
    {
        return super.toString() + " userData: " + data;
    }
}
