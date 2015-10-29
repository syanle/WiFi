// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import java.io.IOException;

// Referenced classes of package com.hp.hpl.sparta.xpath:
//            SimpleStreamTokenizer, XPath

public class XPathException extends Exception
{

    private Throwable cause_;

    XPathException(XPath xpath, Exception exception)
    {
        super(xpath + " " + exception);
        cause_ = null;
        cause_ = exception;
    }

    public XPathException(XPath xpath, String s)
    {
        super(xpath + " " + s);
        cause_ = null;
    }

    XPathException(XPath xpath, String s, SimpleStreamTokenizer simplestreamtokenizer, String s1)
    {
        this(xpath, s + " got \"" + toString(simplestreamtokenizer) + "\" instead of expected " + s1);
    }

    private static String toString(SimpleStreamTokenizer simplestreamtokenizer)
    {
        try
        {
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append(tokenToString(simplestreamtokenizer));
            if (simplestreamtokenizer.ttype != -1)
            {
                simplestreamtokenizer.nextToken();
                stringbuffer.append(tokenToString(simplestreamtokenizer));
                simplestreamtokenizer.pushBack();
            }
            simplestreamtokenizer = stringbuffer.toString();
        }
        // Misplaced declaration of an exception variable
        catch (SimpleStreamTokenizer simplestreamtokenizer)
        {
            return "(cannot get  info: " + simplestreamtokenizer + ")";
        }
        return simplestreamtokenizer;
    }

    private static String tokenToString(SimpleStreamTokenizer simplestreamtokenizer)
    {
        switch (simplestreamtokenizer.ttype)
        {
        default:
            return (char)simplestreamtokenizer.ttype + "";

        case -1: 
            return "<end of expression>";

        case -2: 
            return simplestreamtokenizer.nval + "";

        case -3: 
            return simplestreamtokenizer.sval;
        }
    }

    public Throwable getCause()
    {
        return cause_;
    }
}
