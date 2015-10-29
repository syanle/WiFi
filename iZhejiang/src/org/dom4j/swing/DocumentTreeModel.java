// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import javax.swing.tree.DefaultTreeModel;
import org.dom4j.Document;

// Referenced classes of package org.dom4j.swing:
//            BranchTreeNode

public class DocumentTreeModel extends DefaultTreeModel
{

    protected Document document;

    public DocumentTreeModel(Document document1)
    {
        super(new BranchTreeNode(document1));
        document = document1;
    }

    public Document getDocument()
    {
        return document;
    }

    public void setDocument(Document document1)
    {
        document = document1;
        setRoot(new BranchTreeNode(document1));
    }
}
