// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import org.dom4j.Node;

// Referenced classes of package org.dom4j.rule:
//            Action

public class NullAction
    implements Action
{

    public static final NullAction SINGLETON = new NullAction();

    public NullAction()
    {
    }

    public void run(Node node)
        throws Exception
    {
    }

}
