// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import java.io.PrintStream;
import java.util.HashMap;
import org.dom4j.Node;
import org.dom4j.rule.pattern.NodeTypePattern;

// Referenced classes of package org.dom4j.rule:
//            Mode, Rule, Action, Pattern

public class RuleManager
{

    private int appearenceCount;
    private HashMap modes;
    private Action valueOfAction;

    public RuleManager()
    {
        modes = new HashMap();
    }

    protected void addDefaultRule(Mode mode, Pattern pattern, Action action)
    {
        mode.addRule(createDefaultRule(pattern, action));
    }

    protected void addDefaultRules(final Mode mode)
    {
        _cls1 _lcls1 = new _cls1();
        Action action = getValueOfAction();
        addDefaultRule(mode, NodeTypePattern.ANY_DOCUMENT, _lcls1);
        addDefaultRule(mode, NodeTypePattern.ANY_ELEMENT, _lcls1);
        if (action != null)
        {
            addDefaultRule(mode, NodeTypePattern.ANY_ATTRIBUTE, action);
            addDefaultRule(mode, NodeTypePattern.ANY_TEXT, action);
        }
    }

    public void addRule(Rule rule)
    {
        int i = appearenceCount + 1;
        appearenceCount = i;
        rule.setAppearenceCount(i);
        Mode mode = getMode(rule.getMode());
        Rule arule[] = rule.getUnionRules();
        if (arule != null)
        {
            int j = 0;
            for (int k = arule.length; j < k; j++)
            {
                mode.addRule(arule[j]);
            }

        } else
        {
            mode.addRule(rule);
        }
    }

    public void clear()
    {
        modes.clear();
        appearenceCount = 0;
    }

    protected Rule createDefaultRule(Pattern pattern, Action action)
    {
        pattern = new Rule(pattern, action);
        pattern.setImportPrecedence(-1);
        return pattern;
    }

    protected Mode createMode()
    {
        Mode mode = new Mode();
        addDefaultRules(mode);
        return mode;
    }

    public Rule getMatchingRule(String s, Node node)
    {
        s = (Mode)modes.get(s);
        if (s != null)
        {
            return s.getMatchingRule(node);
        } else
        {
            System.out.println("Warning: No Mode for mode: " + s);
            return null;
        }
    }

    public Mode getMode(String s)
    {
        Mode mode1 = (Mode)modes.get(s);
        Mode mode = mode1;
        if (mode1 == null)
        {
            mode = createMode();
            modes.put(s, mode);
        }
        return mode;
    }

    public Action getValueOfAction()
    {
        return valueOfAction;
    }

    public void removeRule(Rule rule)
    {
        Mode mode = getMode(rule.getMode());
        Rule arule[] = rule.getUnionRules();
        if (arule != null)
        {
            int i = 0;
            for (int j = arule.length; i < j; i++)
            {
                mode.removeRule(arule[i]);
            }

        } else
        {
            mode.removeRule(rule);
        }
    }

    public void setValueOfAction(Action action)
    {
        valueOfAction = action;
    }

    private class _cls1
        implements Action
    {

        private final RuleManager this$0;
        private final Mode val$mode;

        public void run(Node node)
            throws Exception
        {
            if (node instanceof Element)
            {
                mode.applyTemplates((Element)node);
            } else
            if (node instanceof Document)
            {
                mode.applyTemplates((Document)node);
                return;
            }
        }

        _cls1()
            throws Exception
        {
            this$0 = RuleManager.this;
            mode = mode1;
        }
    }

}
