// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule.pattern;

import org.dom4j.Node;
import org.dom4j.rule.Pattern;

public class NodeTypePattern
    implements Pattern
{

    public static final NodeTypePattern ANY_ATTRIBUTE = new NodeTypePattern((short)2);
    public static final NodeTypePattern ANY_COMMENT = new NodeTypePattern((short)8);
    public static final NodeTypePattern ANY_DOCUMENT = new NodeTypePattern((short)9);
    public static final NodeTypePattern ANY_ELEMENT = new NodeTypePattern((short)1);
    public static final NodeTypePattern ANY_PROCESSING_INSTRUCTION = new NodeTypePattern((short)7);
    public static final NodeTypePattern ANY_TEXT = new NodeTypePattern((short)3);
    private short nodeType;

    public NodeTypePattern(short word0)
    {
        nodeType = word0;
    }

    public short getMatchType()
    {
        return nodeType;
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
        return node.getNodeType() == nodeType;
    }

}
