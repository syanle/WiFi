// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            NodeTest, XPathException, NodeTestVisitor, Visitor

public class ParentNodeTest extends NodeTest
{

    static final ParentNodeTest INSTANCE = new ParentNodeTest();

    private ParentNodeTest()
    {
    }

    public void accept(Visitor visitor)
        throws XPathException
    {
        visitor.visit(this);
    }

    public boolean isStringValue()
    {
        return false;
    }

    public String toString()
    {
        return "..";
    }

}
