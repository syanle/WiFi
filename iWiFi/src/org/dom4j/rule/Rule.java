// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import org.dom4j.Node;

// Referenced classes of package org.dom4j.rule:
//            Pattern, Action

public class Rule
    implements Comparable
{

    private Action action;
    private int appearenceCount;
    private int importPrecedence;
    private String mode;
    private Pattern pattern;
    private double priority;

    public Rule()
    {
        priority = 0.5D;
    }

    public Rule(Pattern pattern1)
    {
        pattern = pattern1;
        priority = pattern1.getPriority();
    }

    public Rule(Pattern pattern1, Action action1)
    {
        this(pattern1);
        action = action1;
    }

    public Rule(Rule rule, Pattern pattern1)
    {
        mode = rule.mode;
        importPrecedence = rule.importPrecedence;
        priority = rule.priority;
        appearenceCount = rule.appearenceCount;
        action = rule.action;
        pattern = pattern1;
    }

    public int compareTo(Object obj)
    {
        if (obj instanceof Rule)
        {
            return compareTo((Rule)obj);
        } else
        {
            return getClass().getName().compareTo(obj.getClass().getName());
        }
    }

    public int compareTo(Rule rule)
    {
        int j = importPrecedence - rule.importPrecedence;
        int i = j;
        if (j == 0)
        {
            int k = (int)Math.round(priority - rule.priority);
            i = k;
            if (k == 0)
            {
                i = appearenceCount - rule.appearenceCount;
            }
        }
        return i;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (obj instanceof Rule)
        {
            flag = flag1;
            if (compareTo((Rule)obj) == 0)
            {
                flag = true;
            }
        }
        return flag;
    }

    public Action getAction()
    {
        return action;
    }

    public int getAppearenceCount()
    {
        return appearenceCount;
    }

    public int getImportPrecedence()
    {
        return importPrecedence;
    }

    public final short getMatchType()
    {
        return pattern.getMatchType();
    }

    public final String getMatchesNodeName()
    {
        return pattern.getMatchesNodeName();
    }

    public String getMode()
    {
        return mode;
    }

    public Pattern getPattern()
    {
        return pattern;
    }

    public double getPriority()
    {
        return priority;
    }

    public Rule[] getUnionRules()
    {
        Pattern apattern[] = pattern.getUnionPatterns();
        if (apattern != null) goto _L2; else goto _L1
_L1:
        Rule arule[] = null;
_L4:
        return arule;
_L2:
        int j = apattern.length;
        Rule arule1[] = new Rule[j];
        int i = 0;
        do
        {
            arule = arule1;
            if (i >= j)
            {
                continue;
            }
            arule1[i] = new Rule(this, apattern[i]);
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int hashCode()
    {
        return importPrecedence + appearenceCount;
    }

    public final boolean matches(Node node)
    {
        return pattern.matches(node);
    }

    public void setAction(Action action1)
    {
        action = action1;
    }

    public void setAppearenceCount(int i)
    {
        appearenceCount = i;
    }

    public void setImportPrecedence(int i)
    {
        importPrecedence = i;
    }

    public void setMode(String s)
    {
        mode = s;
    }

    public void setPattern(Pattern pattern1)
    {
        pattern = pattern1;
    }

    public void setPriority(double d)
    {
        priority = d;
    }

    public String toString()
    {
        return super.toString() + "[ pattern: " + getPattern() + " action: " + getAction() + " ]";
    }
}
