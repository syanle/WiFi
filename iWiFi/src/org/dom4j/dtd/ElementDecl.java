// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dtd;


public class ElementDecl
{

    private String model;
    private String name;

    public ElementDecl()
    {
    }

    public ElementDecl(String s, String s1)
    {
        name = s;
        model = s1;
    }

    public String getModel()
    {
        return model;
    }

    public String getName()
    {
        return name;
    }

    public void setModel(String s)
    {
        model = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public String toString()
    {
        return "<!ELEMENT " + name + " " + model + ">";
    }
}
