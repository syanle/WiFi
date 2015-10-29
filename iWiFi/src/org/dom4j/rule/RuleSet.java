// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import java.util.ArrayList;
import java.util.Collections;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.rule:
//            Rule

public class RuleSet
{

    private Rule ruleArray[];
    private ArrayList rules;

    public RuleSet()
    {
        rules = new ArrayList();
    }

    public void addAll(RuleSet ruleset)
    {
        rules.addAll(ruleset.rules);
        ruleArray = null;
    }

    public void addRule(Rule rule)
    {
        rules.add(rule);
        ruleArray = null;
    }

    public Rule getMatchingRule(Node node)
    {
        Rule arule[] = getRuleArray();
        for (int i = arule.length - 1; i >= 0; i--)
        {
            Rule rule = arule[i];
            if (rule.matches(node))
            {
                return rule;
            }
        }

        return null;
    }

    protected Rule[] getRuleArray()
    {
        if (ruleArray == null)
        {
            Collections.sort(rules);
            ruleArray = new Rule[rules.size()];
            rules.toArray(ruleArray);
        }
        return ruleArray;
    }

    public void removeRule(Rule rule)
    {
        rules.remove(rule);
        ruleArray = null;
    }

    public String toString()
    {
        return super.toString() + " [RuleSet: " + rules + " ]";
    }
}
