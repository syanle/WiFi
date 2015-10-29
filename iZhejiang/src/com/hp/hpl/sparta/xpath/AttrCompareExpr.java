// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import com.hp.hpl.sparta.Sparta;

// Referenced classes of package com.hp.hpl.sparta.xpath:
//            AttrExpr

public abstract class AttrCompareExpr extends AttrExpr
{

    private final String attrValue_;

    AttrCompareExpr(String s, String s1)
    {
        super(s);
        attrValue_ = Sparta.intern(s1);
    }

    public String getAttrValue()
    {
        return attrValue_;
    }

    protected String toString(String s)
    {
        return "[" + super.toString() + s + "'" + attrValue_ + "']";
    }
}
