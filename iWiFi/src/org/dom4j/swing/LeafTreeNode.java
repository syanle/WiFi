// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import java.util.Enumeration;
import javax.swing.tree.TreeNode;
import org.dom4j.Node;

public class LeafTreeNode
    implements TreeNode
{

    protected static final Enumeration EMPTY_ENUMERATION = new _cls1();
    private TreeNode parent;
    protected Node xmlNode;

    public LeafTreeNode()
    {
    }

    public LeafTreeNode(TreeNode treenode, Node node)
    {
        parent = treenode;
        xmlNode = node;
    }

    public LeafTreeNode(Node node)
    {
        xmlNode = node;
    }

    public Enumeration children()
    {
        return EMPTY_ENUMERATION;
    }

    public boolean getAllowsChildren()
    {
        return false;
    }

    public TreeNode getChildAt(int i)
    {
        return null;
    }

    public int getChildCount()
    {
        return 0;
    }

    public int getIndex(TreeNode treenode)
    {
        return -1;
    }

    public TreeNode getParent()
    {
        return parent;
    }

    public Node getXmlNode()
    {
        return xmlNode;
    }

    public boolean isLeaf()
    {
        return true;
    }

    public void setParent(LeafTreeNode leaftreenode)
    {
        parent = leaftreenode;
    }

    public String toString()
    {
        String s = xmlNode.getText();
        if (s != null)
        {
            return s.trim();
        } else
        {
            return "";
        }
    }


    private class _cls1
        implements Enumeration
    {

        public boolean hasMoreElements()
        {
            return false;
        }

        public Object nextElement()
        {
            return null;
        }

        _cls1()
        {
        }
    }

}
