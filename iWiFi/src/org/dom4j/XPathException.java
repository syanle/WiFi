// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


public class XPathException extends RuntimeException
{

    private String xpath;

    public XPathException(String s)
    {
        super("Exception occurred evaluting XPath: " + s);
        xpath = s;
    }

    public XPathException(String s, Exception exception)
    {
        super("Exception occurred evaluting XPath: " + s + ". Exception: " + exception.getMessage());
        xpath = s;
    }

    public XPathException(String s, String s1)
    {
        super("Exception occurred evaluting XPath: " + s + " " + s1);
        xpath = s;
    }

    public String getXPath()
    {
        return xpath;
    }
}
