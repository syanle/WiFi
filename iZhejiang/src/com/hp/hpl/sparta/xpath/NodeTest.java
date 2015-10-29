// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            XPathException, Visitor

public abstract class NodeTest
{

    public NodeTest()
    {
    }

    public abstract void accept(Visitor visitor)
        throws XPathException;

    public abstract boolean isStringValue();
}
