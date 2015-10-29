// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

// Referenced classes of package org.jsoup.select:
//            CombiningEvaluator, Evaluator

static final class <init> extends CombiningEvaluator
{

    public boolean matches(Element element, Element element1)
    {
        for (int i = 0; i < num; i++)
        {
            if (!((Evaluator)evaluators.get(i)).matches(element, element1))
            {
                return false;
            }
        }

        return true;
    }

    public String toString()
    {
        return StringUtil.join(evaluators, " ");
    }

    (Collection collection)
    {
        super(collection);
    }

    transient t>(Evaluator aevaluator[])
    {
        this(((Collection) (Arrays.asList(aevaluator))));
    }
}
