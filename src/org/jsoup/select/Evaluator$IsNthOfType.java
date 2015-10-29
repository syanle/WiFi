// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.parser.Tag;

// Referenced classes of package org.jsoup.select:
//            Evaluator, Elements

public static class tor extends tor
{

    protected int calculatePosition(Element element, Element element1)
    {
        int i = 0;
        element = element1.parent().children();
        int k = 0;
        do
        {
            int j;
label0:
            {
                j = i;
                if (k < element.size())
                {
                    j = i;
                    if (element.get(k).tag().equals(element1.tag()))
                    {
                        j = i + 1;
                    }
                    if (element.get(k) != element1)
                    {
                        break label0;
                    }
                }
                return j;
            }
            k++;
            i = j;
        } while (true);
    }

    protected String getPseudoClass()
    {
        return "nth-of-type";
    }

    public tor(int i, int j)
    {
        super(i, j);
    }
}
