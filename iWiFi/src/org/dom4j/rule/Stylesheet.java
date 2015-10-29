// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import java.util.Iterator;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.XPath;

// Referenced classes of package org.dom4j.rule:
//            RuleManager, Mode, Rule, Action

public class Stylesheet
{

    private String modeName;
    private RuleManager ruleManager;

    public Stylesheet()
    {
        ruleManager = new RuleManager();
    }

    public void addRule(Rule rule)
    {
        ruleManager.addRule(rule);
    }

    public void applyTemplates(Object obj)
        throws Exception
    {
        applyTemplates(obj, modeName);
    }

    public void applyTemplates(Object obj, String s)
        throws Exception
    {
        Mode mode = ruleManager.getMode(s);
        if (obj instanceof Element)
        {
            obj = (Element)obj;
            int i = 0;
            for (int l = ((Element) (obj)).nodeCount(); i < l; i++)
            {
                mode.fireRule(((Element) (obj)).node(i));
            }

        } else
        if (obj instanceof Document)
        {
            obj = (Document)obj;
            int j = 0;
            for (int i1 = ((Document) (obj)).nodeCount(); j < i1; j++)
            {
                mode.fireRule(((Document) (obj)).node(j));
            }

        } else
        if (obj instanceof List)
        {
            obj = (List)obj;
            int k = 0;
            int j1 = ((List) (obj)).size();
            while (k < j1) 
            {
                Object obj1 = ((List) (obj)).get(k);
                if (obj1 instanceof Element)
                {
                    applyTemplates((Element)obj1, s);
                } else
                if (obj1 instanceof Document)
                {
                    applyTemplates((Document)obj1, s);
                }
                k++;
            }
        }
    }

    public void applyTemplates(Object obj, XPath xpath)
        throws Exception
    {
        applyTemplates(obj, xpath, modeName);
    }

    public void applyTemplates(Object obj, XPath xpath, String s)
        throws Exception
    {
        s = ruleManager.getMode(s);
        for (obj = xpath.selectNodes(obj).iterator(); ((Iterator) (obj)).hasNext(); s.fireRule((Node)((Iterator) (obj)).next())) { }
    }

    public void applyTemplates(Object obj, org.jaxen.XPath xpath)
        throws Exception
    {
        applyTemplates(obj, xpath, modeName);
    }

    public void applyTemplates(Object obj, org.jaxen.XPath xpath, String s)
        throws Exception
    {
        s = ruleManager.getMode(s);
        for (obj = xpath.selectNodes(obj).iterator(); ((Iterator) (obj)).hasNext(); s.fireRule((Node)((Iterator) (obj)).next())) { }
    }

    public void clear()
    {
        ruleManager.clear();
    }

    public String getModeName()
    {
        return modeName;
    }

    public Action getValueOfAction()
    {
        return ruleManager.getValueOfAction();
    }

    public void removeRule(Rule rule)
    {
        ruleManager.removeRule(rule);
    }

    public void run(Object obj)
        throws Exception
    {
        run(obj, modeName);
    }

    public void run(Object obj, String s)
        throws Exception
    {
        if (obj instanceof Node)
        {
            run((Node)obj, s);
        } else
        if (obj instanceof List)
        {
            run((List)obj, s);
            return;
        }
    }

    public void run(List list)
        throws Exception
    {
        run(list, modeName);
    }

    public void run(List list, String s)
        throws Exception
    {
        int i = 0;
        for (int j = list.size(); i < j; i++)
        {
            Object obj = list.get(i);
            if (obj instanceof Node)
            {
                run((Node)obj, s);
            }
        }

    }

    public void run(Node node)
        throws Exception
    {
        run(node, modeName);
    }

    public void run(Node node, String s)
        throws Exception
    {
        ruleManager.getMode(s).fireRule(node);
    }

    public void setModeName(String s)
    {
        modeName = s;
    }

    public void setValueOfAction(Action action)
    {
        ruleManager.setValueOfAction(action);
    }
}
