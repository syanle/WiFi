// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            XPathException, AllElementTest, AttrTest, ElementTest, 
//            ParentNodeTest, TextTest, ThisNodeTest

public interface NodeTestVisitor
{

    public abstract void visit(AllElementTest allelementtest);

    public abstract void visit(AttrTest attrtest);

    public abstract void visit(ElementTest elementtest);

    public abstract void visit(ParentNodeTest parentnodetest)
        throws XPathException;

    public abstract void visit(TextTest texttest);

    public abstract void visit(ThisNodeTest thisnodetest);
}
