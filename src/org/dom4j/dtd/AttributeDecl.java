// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dtd;


public class AttributeDecl
{

    private String attributeName;
    private String elementName;
    private String type;
    private String value;
    private String valueDefault;

    public AttributeDecl()
    {
    }

    public AttributeDecl(String s, String s1, String s2, String s3, String s4)
    {
        elementName = s;
        attributeName = s1;
        type = s2;
        value = s4;
        valueDefault = s3;
    }

    public String getAttributeName()
    {
        return attributeName;
    }

    public String getElementName()
    {
        return elementName;
    }

    public String getType()
    {
        return type;
    }

    public String getValue()
    {
        return value;
    }

    public String getValueDefault()
    {
        return valueDefault;
    }

    public void setAttributeName(String s)
    {
        attributeName = s;
    }

    public void setElementName(String s)
    {
        elementName = s;
    }

    public void setType(String s)
    {
        type = s;
    }

    public void setValue(String s)
    {
        value = s;
    }

    public void setValueDefault(String s)
    {
        valueDefault = s;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer("<!ATTLIST ");
        stringbuffer.append(elementName);
        stringbuffer.append(" ");
        stringbuffer.append(attributeName);
        stringbuffer.append(" ");
        stringbuffer.append(type);
        stringbuffer.append(" ");
        if (valueDefault != null)
        {
            stringbuffer.append(valueDefault);
            if (valueDefault.equals("#FIXED"))
            {
                stringbuffer.append(" \"");
                stringbuffer.append(value);
                stringbuffer.append("\"");
            }
        } else
        {
            stringbuffer.append("\"");
            stringbuffer.append(value);
            stringbuffer.append("\"");
        }
        stringbuffer.append(">");
        return stringbuffer.toString();
    }
}
