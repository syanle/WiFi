// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import javax.swing.tree.TreeNode;
import org.dom4j.Branch;
import org.dom4j.CharacterData;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.swing:
//            LeafTreeNode

public class BranchTreeNode extends LeafTreeNode
{

    protected List children;

    public BranchTreeNode()
    {
    }

    public BranchTreeNode(TreeNode treenode, Branch branch)
    {
        super(treenode, branch);
    }

    public BranchTreeNode(Branch branch)
    {
        super(branch);
    }

    public Enumeration children()
    {
        return new _cls1();
    }

    protected List createChildList()
    {
        Branch branch;
        ArrayList arraylist;
        int i;
        int j;
        branch = getXmlBranch();
        j = branch.nodeCount();
        arraylist = new ArrayList(j);
        i = 0;
_L3:
        Node node;
        String s;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        node = branch.node(i);
        if (!(node instanceof CharacterData))
        {
            break; /* Loop/switch isn't completed */
        }
        s = node.getText();
          goto _L1
_L4:
        i++;
        if (true) goto _L3; else goto _L2
_L1:
        if (s == null || s.trim().length() <= 0) goto _L4; else goto _L2
_L2:
        arraylist.add(createChildTreeNode(node));
          goto _L4
        return arraylist;
    }

    protected TreeNode createChildTreeNode(Node node)
    {
        if (node instanceof Branch)
        {
            return new BranchTreeNode(this, (Branch)node);
        } else
        {
            return new LeafTreeNode(this, node);
        }
    }

    public boolean getAllowsChildren()
    {
        return true;
    }

    public TreeNode getChildAt(int i)
    {
        return (TreeNode)getChildList().get(i);
    }

    public int getChildCount()
    {
        return getChildList().size();
    }

    protected List getChildList()
    {
        if (children == null)
        {
            children = createChildList();
        }
        return children;
    }

    public int getIndex(TreeNode treenode)
    {
        return getChildList().indexOf(treenode);
    }

    protected Branch getXmlBranch()
    {
        return (Branch)xmlNode;
    }

    public boolean isLeaf()
    {
        return getXmlBranch().nodeCount() <= 0;
    }

    public String toString()
    {
        return xmlNode.getName();
    }

    private class _cls1
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

        _cls1()
        {
            this$0 = BranchTreeNode.this;
            index = -1;
        }
    }

}
