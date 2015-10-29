// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import org.dom4j.Node;

public interface Action
{

    public abstract void run(Node node)
        throws Exception;
}
