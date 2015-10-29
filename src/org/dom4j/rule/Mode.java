// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import java.util.HashMap;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.rule:
//            RuleSet, Rule, Action

public class Mode
{

    private Map attributeNameRuleSets;
    private Map elementNameRuleSets;
    private RuleSet ruleSets[];

    public Mode()
    {
        ruleSets = new RuleSet[14];
    }

    public void addRule(Rule rule)
    {
        Object obj;
        int j;
        j = rule.getMatchType();
        obj = rule.getMatchesNodeName();
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (j != 1) goto _L4; else goto _L3
_L3:
        elementNameRuleSets = addToNameMap(elementNameRuleSets, ((String) (obj)), rule);
_L2:
        int i;
        i = j;
        if (j >= 14)
        {
            i = 0;
        }
        if (i == 0)
        {
            j = 1;
            for (int k = ruleSets.length; j < k; j++)
            {
                obj = ruleSets[j];
                if (obj != null)
                {
                    ((RuleSet) (obj)).addRule(rule);
                }
            }

        }
        break; /* Loop/switch isn't completed */
_L4:
        if (j == 2)
        {
            attributeNameRuleSets = addToNameMap(attributeNameRuleSets, ((String) (obj)), rule);
        }
        if (true) goto _L2; else goto _L5
_L5:
        getRuleSet(i).addRule(rule);
        return;
    }

    protected Map addToNameMap(Map map, String s, Rule rule)
    {
        Object obj = map;
        if (map == null)
        {
            obj = new HashMap();
        }
        RuleSet ruleset = (RuleSet)((Map) (obj)).get(s);
        map = ruleset;
        if (ruleset == null)
        {
            map = new RuleSet();
            ((Map) (obj)).put(s, map);
        }
        map.addRule(rule);
        return ((Map) (obj));
    }

    public void applyTemplates(Document document)
        throws Exception
    {
        int i = 0;
        for (int j = document.nodeCount(); i < j; i++)
        {
            fireRule(document.node(i));
        }

    }

    public void applyTemplates(Element element)
        throws Exception
    {
        int i = 0;
        for (int j = element.attributeCount(); i < j; i++)
        {
            fireRule(element.attribute(i));
        }

        i = 0;
        for (int k = element.nodeCount(); i < k; i++)
        {
            fireRule(element.node(i));
        }

    }

    public void fireRule(Node node)
        throws Exception
    {
        if (node != null)
        {
            Object obj = getMatchingRule(node);
            if (obj != null)
            {
                obj = ((Rule) (obj)).getAction();
                if (obj != null)
                {
                    ((Action) (obj)).run(node);
                }
            }
        }
    }

    public Rule getMatchingRule(Node node)
    {
        short word1 = node.getNodeType();
        if (word1 != 1) goto _L2; else goto _L1
_L1:
        if (elementNameRuleSets == null) goto _L4; else goto _L3
_L3:
        Object obj;
        obj = node.getName();
        obj = (RuleSet)elementNameRuleSets.get(obj);
        if (obj == null) goto _L4; else goto _L5
_L5:
        obj = ((RuleSet) (obj)).getMatchingRule(node);
        if (obj == null) goto _L4; else goto _L6
_L6:
        return ((Rule) (obj));
_L2:
        Rule rule;
        if (word1 != 2 || attributeNameRuleSets == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = node.getName();
        obj = (RuleSet)attributeNameRuleSets.get(obj);
        if (obj == null)
        {
            break; /* Loop/switch isn't completed */
        }
        rule = ((RuleSet) (obj)).getMatchingRule(node);
        obj = rule;
        if (rule != null) goto _L6; else goto _L4
_L4:
        short word0;
label0:
        {
            if (word1 >= 0)
            {
                word0 = word1;
                if (word1 < ruleSets.length)
                {
                    break label0;
                }
            }
            word0 = 0;
        }
        Rule rule1 = null;
        obj = ruleSets[word0];
        if (obj != null)
        {
            rule1 = ((RuleSet) (obj)).getMatchingRule(node);
        }
        obj = rule1;
        if (rule1 == null)
        {
            obj = rule1;
            if (word0 != 0)
            {
                RuleSet ruleset = ruleSets[0];
                obj = rule1;
                if (ruleset != null)
                {
                    return ruleset.getMatchingRule(node);
                }
            }
        }
        if (true) goto _L6; else goto _L7
_L7:
    }

    protected RuleSet getRuleSet(int i)
    {
        RuleSet ruleset1 = ruleSets[i];
        RuleSet ruleset = ruleset1;
        if (ruleset1 == null)
        {
            RuleSet ruleset2 = new RuleSet();
            ruleSets[i] = ruleset2;
            ruleset = ruleset2;
            if (i != 0)
            {
                RuleSet ruleset3 = ruleSets[0];
                ruleset = ruleset2;
                if (ruleset3 != null)
                {
                    ruleset2.addAll(ruleset3);
                    ruleset = ruleset2;
                }
            }
        }
        return ruleset;
    }

    protected void removeFromNameMap(Map map, String s, Rule rule)
    {
        if (map != null)
        {
            map = (RuleSet)map.get(s);
            if (map != null)
            {
                map.removeRule(rule);
            }
        }
    }

    public void removeRule(Rule rule)
    {
        String s;
        short word1;
        word1 = rule.getMatchType();
        s = rule.getMatchesNodeName();
        if (s == null) goto _L2; else goto _L1
_L1:
        if (word1 != 1) goto _L4; else goto _L3
_L3:
        removeFromNameMap(elementNameRuleSets, s, rule);
_L2:
        short word0 = word1;
        if (word1 >= 14)
        {
            word0 = 0;
        }
        getRuleSet(word0).removeRule(rule);
        if (word0 != 0)
        {
            getRuleSet(0).removeRule(rule);
        }
        return;
_L4:
        if (word1 == 2)
        {
            removeFromNameMap(attributeNameRuleSets, s, rule);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }
}
