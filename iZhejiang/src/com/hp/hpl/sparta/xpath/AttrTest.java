// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            NodeTest, NodeTestVisitor, Visitor

public class AttrTest extends NodeTest
{

    private final String attrName_;

    AttrTest(String s)
    {
        attrName_ = s;
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String getAttrName()
    {
        return attrName_;
    }

    public boolean isStringValue()
    {
        return true;
    }

    public String toString()
    {
        return "@" + attrName_;
    }
}
