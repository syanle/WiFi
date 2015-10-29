// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import com.hp.hpl.sparta.Sparta;

// Referenced classes of package com.hp.hpl.sparta.xpath:
//            NodeTest, NodeTestVisitor, Visitor

public class ElementTest extends NodeTest
{

    private final String tagName_;

    ElementTest(String s)
    {
        tagName_ = Sparta.intern(s);
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String getTagName()
    {
        return tagName_;
    }

    public boolean isStringValue()
    {
        return false;
    }

    public String toString()
    {
        return tagName_;
    }
}
