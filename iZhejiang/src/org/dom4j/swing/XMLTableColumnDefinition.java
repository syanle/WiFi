// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import java.io.PrintStream;
import java.io.Serializable;
import org.dom4j.DocumentHelper;
import org.dom4j.XPath;

public class XMLTableColumnDefinition
    implements Serializable
{

    public static final int NODE_TYPE = 3;
    public static final int NUMBER_TYPE = 2;
    public static final int OBJECT_TYPE = 0;
    public static final int STRING_TYPE = 1;
    static Class class$java$lang$Number;
    static Class class$java$lang$Object;
    static Class class$java$lang$String;
    static Class class$org$dom4j$Node;
    private XPath columnNameXPath;
    private String name;
    private int type;
    private XPath xpath;

    public XMLTableColumnDefinition()
    {
    }

    public XMLTableColumnDefinition(String s, String s1, int i)
    {
        name = s;
        type = i;
        xpath = createXPath(s1);
    }

    public XMLTableColumnDefinition(String s, XPath xpath1, int i)
    {
        name = s;
        xpath = xpath1;
        type = i;
    }

    public XMLTableColumnDefinition(XPath xpath1, XPath xpath2, int i)
    {
        xpath = xpath2;
        columnNameXPath = xpath1;
        type = i;
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

    public static int parseType(String s)
    {
        if (s != null && s.length() > 0)
        {
            if (s.equals("string"))
            {
                return 1;
            }
            if (s.equals("number"))
            {
                return 2;
            }
            if (s.equals("node"))
            {
                return 3;
            }
        }
        return 0;
    }

    protected XPath createXPath(String s)
    {
        return DocumentHelper.createXPath(s);
    }

    public Class getColumnClass()
    {
        switch (type)
        {
        default:
            if (class$java$lang$Object == null)
            {
                Class class1 = _mthclass$("java.lang.Object");
                class$java$lang$Object = class1;
                return class1;
            } else
            {
                return class$java$lang$Object;
            }

        case 1: // '\001'
            if (class$java$lang$String == null)
            {
                Class class2 = _mthclass$("java.lang.String");
                class$java$lang$String = class2;
                return class2;
            } else
            {
                return class$java$lang$String;
            }

        case 2: // '\002'
            if (class$java$lang$Number == null)
            {
                Class class3 = _mthclass$("java.lang.Number");
                class$java$lang$Number = class3;
                return class3;
            } else
            {
                return class$java$lang$Number;
            }

        case 3: // '\003'
            break;
        }
        if (class$org$dom4j$Node == null)
        {
            Class class4 = _mthclass$("org.dom4j.Node");
            class$org$dom4j$Node = class4;
            return class4;
        } else
        {
            return class$org$dom4j$Node;
        }
    }

    public XPath getColumnNameXPath()
    {
        return columnNameXPath;
    }

    public String getName()
    {
        return name;
    }

    public int getType()
    {
        return type;
    }

    public Object getValue(Object obj)
    {
        switch (type)
        {
        default:
            return xpath.evaluate(obj);

        case 1: // '\001'
            return xpath.valueOf(obj);

        case 2: // '\002'
            return xpath.numberValueOf(obj);

        case 3: // '\003'
            return xpath.selectSingleNode(obj);
        }
    }

    public XPath getXPath()
    {
        return xpath;
    }

    protected void handleException(Exception exception)
    {
        System.out.println("Caught: " + exception);
    }

    public void setColumnNameXPath(XPath xpath1)
    {
        columnNameXPath = xpath1;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setType(int i)
    {
        type = i;
    }

    public void setXPath(XPath xpath1)
    {
        xpath = xpath1;
    }
}
