// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;


// Referenced classes of package com.hp.hpl.sparta.xpath:
//            BooleanExpr

public abstract class TextCompareExpr extends BooleanExpr
{

    private final String value_;

    TextCompareExpr(String s)
    {
        value_ = s;
    }

    public String getValue()
    {
        return value_;
    }

    protected String toString(String s)
    {
        return "[text()" + s + "'" + value_ + "']";
    }
}
