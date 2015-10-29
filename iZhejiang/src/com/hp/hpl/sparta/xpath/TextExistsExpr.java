// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            BooleanExpr, XPathException, BooleanExprVisitor

public class TextExistsExpr extends BooleanExpr
{

    static final TextExistsExpr INSTANCE = new TextExistsExpr();

    private TextExistsExpr()
    {
    }

    public void accept(BooleanExprVisitor booleanexprvisitor)
        throws XPathException
    {
        booleanexprvisitor.visit(this);
    }

    public String toString()
    {
        return "[text()]";
    }

}
