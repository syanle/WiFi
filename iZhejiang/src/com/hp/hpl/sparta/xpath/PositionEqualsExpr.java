// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            BooleanExpr, XPathException, BooleanExprVisitor

public class PositionEqualsExpr extends BooleanExpr
{

    private final int position_;

    public PositionEqualsExpr(int i)
    {
        position_ = i;
    }

    public void accept(BooleanExprVisitor booleanexprvisitor)
        throws XPathException
    {
        booleanexprvisitor.visit(this);
    }

    public int getPosition()
    {
        return position_;
    }

    public String toString()
    {
        return "[" + position_ + "]";
    }
}
