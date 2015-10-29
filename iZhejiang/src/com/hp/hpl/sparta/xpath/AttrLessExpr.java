// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            AttrRelationalExpr, XPathException, BooleanExprVisitor

public class AttrLessExpr extends AttrRelationalExpr
{

    public AttrLessExpr(String s, int i)
    {
        super(s, i);
    }

    public void accept(BooleanExprVisitor booleanexprvisitor)
        throws XPathException
    {
        booleanexprvisitor.visit(this);
    }

    public String toString()
    {
        return toString("<");
    }
}
