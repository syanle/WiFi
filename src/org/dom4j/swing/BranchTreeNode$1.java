// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import java.util.Enumeration;

// Referenced classes of package org.dom4j.swing:
//            BranchTreeNode

class index
    implements Enumeration
{

    private int index;
    private final BranchTreeNode this$0;

    public boolean hasMoreElements()
    {
        return index + 1 < getChildCount();
    }

    public Object nextElement()
    {
        BranchTreeNode branchtreenode = BranchTreeNode.this;
        int i = index + 1;
        index = i;
        return branchtreenode.getChildAt(i);
    }

    ()
    {
        this$0 = BranchTreeNode.this;
        index = -1;
    }
}
