// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            AttrExpr

public abstract class AttrRelationalExpr extends AttrExpr
{

    private final int attrValue_;

    AttrRelationalExpr(String s, int i)
    {
        super(s);
        attrValue_ = i;
    }

    public double getAttrValue()
    {
        return (double)attrValue_;
    }

    protected String toString(String s)
    {
        return "[" + super.toString() + s + "'" + attrValue_ + "']";
    }
}