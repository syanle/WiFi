// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.rule;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.rule:
//            Action, Mode, RuleManager

class val.mode
    implements Action
{

    private final RuleManager this$0;
    private final Mode val$mode;

    public void run(Node node)
        throws Exception
    {
        if (node instanceof Element)
        {
            val$mode.applyTemplates((Element)node);
        } else
        if (node instanceof Document)
        {
            val$mode.applyTemplates((Document)node);
            return;
        }
    }

    ()
        throws Exception
    {
        this$0 = final_rulemanager;
        val$mode = Mode.this;
    }
}
