// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.parser.Tag;

// Referenced classes of package org.jsoup.select:
//            Evaluator, Elements

public static class <init> extends <init>
{

    protected int calculatePosition(Element element, Element element1)
    {
        int j = 0;
        element = element1.parent().children();
        for (int i = element1.elementSiblingIndex().intValue(); i < element.size();)
        {
            int k = j;
            if (element.get(i).tag().equals(element1.tag()))
            {
                k = j + 1;
            }
            i++;
            j = k;
        }

        return j;
    }

    protected String getPseudoClass()
    {
        return "nth-last-of-type";
    }

    public (int i, int j)
    {
        super(i, j);
    }
}
