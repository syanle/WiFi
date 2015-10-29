// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import org.jsoup.nodes.Element;

// Referenced classes of package org.jsoup.select:
//            Evaluator

public static final class ator extends ator
{

    protected int calculatePosition(Element element, Element element1)
    {
        return element1.elementSiblingIndex().intValue() + 1;
    }

    protected String getPseudoClass()
    {
        return "nth-child";
    }

    public ator(int i, int j)
    {
        super(i, j);
    }
}
