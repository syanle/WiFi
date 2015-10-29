// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import java.util.ArrayList;
import java.util.Collection;
import org.jsoup.nodes.Element;

// Referenced classes of package org.jsoup.select:
//            CombiningEvaluator, Evaluator

static final class updateNumEvaluators extends CombiningEvaluator
{

    public void add(Evaluator evaluator)
    {
        evaluators.add(evaluator);
        updateNumEvaluators();
    }

    public boolean matches(Element element, Element element1)
    {
        for (int i = 0; i < num; i++)
        {
            if (((Evaluator)evaluators.get(i)).matches(element, element1))
            {
                return true;
            }
        }

        return false;
    }

    public String toString()
    {
        return String.format(":or%s", new Object[] {
            evaluators
        });
    }

    ()
    {
    }

    (Collection collection)
    {
        if (num > 1)
        {
            evaluators.add(new (collection));
        } else
        {
            evaluators.addAll(collection);
        }
        updateNumEvaluators();
    }
}
