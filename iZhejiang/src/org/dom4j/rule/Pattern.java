// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import org.dom4j.Node;
import org.dom4j.NodeFilter;

public interface Pattern
    extends NodeFilter
{

    public static final short ANY_NODE = 0;
    public static final double DEFAULT_PRIORITY = 0.5D;
    public static final short NONE = 9999;
    public static final short NUMBER_OF_TYPES = 14;

    public abstract short getMatchType();

    public abstract String getMatchesNodeName();

    public abstract double getPriority();

    public abstract Pattern[] getUnionPatterns();

    public abstract boolean matches(Node node);
}
