// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule.pattern;

import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.rule.Pattern;

public class DefaultPattern
    implements Pattern
{

    private NodeFilter filter;

    public DefaultPattern(NodeFilter nodefilter)
    {
        filter = nodefilter;
    }

    public short getMatchType()
    {
        return 0;
    }

    public String getMatchesNodeName()
    {
        return null;
    }

    public double getPriority()
    {
        return 0.5D;
    }

    public Pattern[] getUnionPatterns()
    {
        return null;
    }

    public boolean matches(Node node)
    {
        return filter.matches(node);
    }
}
