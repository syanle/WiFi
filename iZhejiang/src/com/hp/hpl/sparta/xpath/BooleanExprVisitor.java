// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            XPathException, AttrEqualsExpr, AttrExistsExpr, AttrGreaterExpr, 
//            AttrLessExpr, AttrNotEqualsExpr, PositionEqualsExpr, TextEqualsExpr, 
//            TextExistsExpr, TextNotEqualsExpr, TrueExpr

public interface BooleanExprVisitor
{

    public abstract void visit(AttrEqualsExpr attrequalsexpr)
        throws XPathException;

    public abstract void visit(AttrExistsExpr attrexistsexpr)
        throws XPathException;

    public abstract void visit(AttrGreaterExpr attrgreaterexpr)
        throws XPathException;

    public abstract void visit(AttrLessExpr attrlessexpr)
        throws XPathException;

    public abstract void visit(AttrNotEqualsExpr attrnotequalsexpr)
        throws XPathException;

    public abstract void visit(PositionEqualsExpr positionequalsexpr)
        throws XPathException;

    public abstract void visit(TextEqualsExpr textequalsexpr)
        throws XPathException;

    public abstract void visit(TextExistsExpr textexistsexpr)
        throws XPathException;

    public abstract void visit(TextNotEqualsExpr textnotequalsexpr)
        throws XPathException;

    public abstract void visit(TrueExpr trueexpr);
}
