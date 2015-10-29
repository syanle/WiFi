// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            BooleanExpr

public abstract class AttrExpr extends BooleanExpr
{

    private final String attrName_;

    AttrExpr(String s)
    {
        attrName_ = s;
    }

    public String getAttrName()
    {
        return attrName_;
    }

    public String toString()
    {
        return "@" + attrName_;
    }
}
