// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            BooleanExpr, BooleanExprVisitor

public class TrueExpr extends BooleanExpr
{

    static final TrueExpr INSTANCE = new TrueExpr();

    private TrueExpr()
    {
    }

    public void accept(BooleanExprVisitor booleanexprvisitor)
    {
        booleanexprvisitor.visit(this);
    }

    public String toString()
    {
        return "";
    }

}
