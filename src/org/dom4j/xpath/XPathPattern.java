// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.xpath;

import java.util.ArrayList;
import org.dom4j.InvalidXPathException;
import org.dom4j.Node;
import org.dom4j.XPathException;
import org.dom4j.rule.Pattern;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.JaxenException;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.SimpleVariableContext;
import org.jaxen.VariableContext;
import org.jaxen.XPathFunctionContext;
import org.jaxen.dom4j.DocumentNavigator;
import org.jaxen.pattern.PatternParser;
import org.jaxen.saxpath.SAXPathException;

public class XPathPattern
    implements Pattern
{

    private Context context;
    private org.jaxen.pattern.Pattern pattern;
    private String text;

    public XPathPattern(String s)
    {
        text = s;
        context = new Context(getContextSupport());
        try
        {
            pattern = PatternParser.parse(s);
            return;
        }
        catch (SAXPathException saxpathexception)
        {
            throw new InvalidXPathException(s, saxpathexception.getMessage());
        }
        catch (Throwable throwable)
        {
            throw new InvalidXPathException(s, throwable);
        }
    }

    public XPathPattern(org.jaxen.pattern.Pattern pattern1)
    {
        pattern = pattern1;
        text = pattern1.getText();
        context = new Context(getContextSupport());
    }

    protected ContextSupport getContextSupport()
    {
        return new ContextSupport(new SimpleNamespaceContext(), XPathFunctionContext.getInstance(), new SimpleVariableContext(), DocumentNavigator.getInstance());
    }

    public short getMatchType()
    {
        return pattern.getMatchType();
    }

    public String getMatchesNodeName()
    {
        return pattern.getMatchesNodeName();
    }

    public double getPriority()
    {
        return pattern.getPriority();
    }

    public String getText()
    {
        return text;
    }

    public Pattern[] getUnionPatterns()
    {
        org.jaxen.pattern.Pattern apattern[] = pattern.getUnionPatterns();
        XPathPattern axpathpattern[];
        if (apattern != null)
        {
            int j = apattern.length;
            XPathPattern axpathpattern1[] = new XPathPattern[j];
            int i = 0;
            do
            {
                axpathpattern = axpathpattern1;
                if (i >= j)
                {
                    break;
                }
                axpathpattern1[i] = new XPathPattern(apattern[i]);
                i++;
            } while (true);
        } else
        {
            axpathpattern = null;
        }
        return axpathpattern;
    }

    protected void handleJaxenException(JaxenException jaxenexception)
        throws XPathException
    {
        throw new XPathException(text, jaxenexception);
    }

    public boolean matches(Node node)
    {
        boolean flag;
        try
        {
            ArrayList arraylist = new ArrayList(1);
            arraylist.add(node);
            context.setNodeSet(arraylist);
            flag = pattern.matches(node, context);
        }
        // Misplaced declaration of an exception variable
        catch (Node node)
        {
            handleJaxenException(node);
            return false;
        }
        return flag;
    }

    public void setVariableContext(VariableContext variablecontext)
    {
        context.getContextSupport().setVariableContext(variablecontext);
    }

    public String toString()
    {
        return "[XPathPattern: text: " + text + " Pattern: " + pattern + "]";
    }
}
