// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import org.jsoup.nodes.Element;

// Referenced classes of package org.jsoup.select:
//            StructuralEvaluator, Evaluator

static class evaluator extends StructuralEvaluator
{

    public boolean matches(Element element, Element element1)
    {
        if (element != element1)
        {
            if ((element1 = element1.parent()) != null && evaluator.matches(element, element1))
            {
                return true;
            }
        }
        return false;
    }

    public String toString()
    {
        return String.format(":ImmediateParent%s", new Object[] {
            evaluator
        });
    }

    public (Evaluator evaluator)
    {
        this.evaluator = evaluator;
    }
}
