// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


public class InvalidXPathException extends IllegalArgumentException
{

    private static final long serialVersionUID = 0x2d33393833323838L;

    public InvalidXPathException(String s)
    {
        super("Invalid XPath expression: " + s);
    }

    public InvalidXPathException(String s, String s1)
    {
        super("Invalid XPath expression: " + s + " " + s1);
    }

    public InvalidXPathException(String s, Throwable throwable)
    {
        super("Invalid XPath expression: '" + s + "'. Caused by: " + throwable.getMessage());
    }
}
