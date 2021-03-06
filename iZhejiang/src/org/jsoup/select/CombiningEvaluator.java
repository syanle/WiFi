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
//            Evaluator

abstract class CombiningEvaluator extends Evaluator
{
    static final class And extends CombiningEvaluator
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

        And(Collection collection)
        {
            super(collection);
        }

        transient And(Evaluator aevaluator[])
        {
            this(((Collection) (Arrays.asList(aevaluator))));
        }
    }

    static final class Or extends CombiningEvaluator
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

        Or()
        {
        }

        Or(Collection collection)
        {
            if (num > 1)
            {
                evaluators.add(new And(collection));
            } else
            {
                evaluators.addAll(collection);
            }
            updateNumEvaluators();
        }
    }


    final ArrayList evaluators;
    int num;

    CombiningEvaluator()
    {
        num = 0;
        evaluators = new ArrayList();
    }

    CombiningEvaluator(Collection collection)
    {
        this();
        evaluators.addAll(collection);
        updateNumEvaluators();
    }

    void replaceRightMostEvaluator(Evaluator evaluator)
    {
        evaluators.set(num - 1, evaluator);
    }

    Evaluator rightMostEvaluator()
    {
        if (num > 0)
        {
            return (Evaluator)evaluators.get(num - 1);
        } else
        {
            return null;
        }
    }

    void updateNumEvaluators()
    {
        num = evaluators.size();
    }
}
