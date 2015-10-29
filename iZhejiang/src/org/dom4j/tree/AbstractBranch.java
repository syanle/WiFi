// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.dom4j.Branch;
import org.dom4j.Comment;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.tree:
//            AbstractNode, ContentListFacade, BackedList

public abstract class AbstractBranch extends AbstractNode
    implements Branch
{

    protected static final int DEFAULT_CONTENT_LIST_SIZE = 5;

    public AbstractBranch()
    {
    }

    public void add(Comment comment)
    {
        addNode(comment);
    }

    public void add(Element element)
    {
        addNode(element);
    }

    public void add(Node node1)
    {
        switch (node1.getNodeType())
        {
        default:
            invalidNodeTypeAddException(node1);
            return;

        case 1: // '\001'
            add((Element)node1);
            return;

        case 8: // '\b'
            add((Comment)node1);
            return;

        case 7: // '\007'
            add((ProcessingInstruction)node1);
            return;
        }
    }

    public void add(ProcessingInstruction processinginstruction)
    {
        addNode(processinginstruction);
    }

    public Element addElement(String s)
    {
        s = getDocumentFactory().createElement(s);
        add(s);
        return s;
    }

    public Element addElement(String s, String s1)
    {
        s = getDocumentFactory().createElement(s, s1);
        add(s);
        return s;
    }

    public Element addElement(String s, String s1, String s2)
    {
        s1 = Namespace.get(s1, s2);
        return addElement(getDocumentFactory().createQName(s, s1));
    }

    public Element addElement(QName qname)
    {
        qname = getDocumentFactory().createElement(qname);
        add(qname);
        return qname;
    }

    protected abstract void addNode(int i, Node node1);

    protected abstract void addNode(Node node1);

    public void appendContent(Branch branch)
    {
        int i = 0;
        for (int j = branch.nodeCount(); i < j; i++)
        {
            add((Node)branch.node(i).clone());
        }

    }

    protected abstract void childAdded(Node node1);

    protected abstract void childRemoved(Node node1);

    public List content()
    {
        return new ContentListFacade(this, contentList());
    }

    protected abstract List contentList();

    protected void contentRemoved()
    {
        List list = contentList();
        int i = 0;
        for (int j = list.size(); i < j; i++)
        {
            Object obj = list.get(i);
            if (obj instanceof Node)
            {
                childRemoved((Node)obj);
            }
        }

    }

    protected List createContentList()
    {
        return new ArrayList(5);
    }

    protected List createContentList(int i)
    {
        return new ArrayList(i);
    }

    protected List createEmptyList()
    {
        return new BackedList(this, contentList(), 0);
    }

    protected BackedList createResultList()
    {
        return new BackedList(this, contentList());
    }

    protected List createSingleResultList(Object obj)
    {
        BackedList backedlist = new BackedList(this, contentList(), 1);
        backedlist.addLocal(obj);
        return backedlist;
    }

    public Element elementByID(String s)
    {
        int i;
        int j;
        i = 0;
        j = nodeCount();
_L6:
        if (i >= j) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        obj = node(i);
        if (!(obj instanceof Element))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = (Element)obj;
        obj1 = elementID(((Element) (obj)));
        if (obj1 == null || !((String) (obj1)).equals(s)) goto _L4; else goto _L3
_L3:
        return ((Element) (obj));
_L4:
        obj1 = ((Element) (obj)).elementByID(s);
        obj = obj1;
        if (obj1 != null) goto _L3; else goto _L5
_L5:
        i++;
          goto _L6
_L2:
        return null;
    }

    protected String elementID(Element element)
    {
        return element.attributeValue("ID");
    }

    protected String getContentAsStringValue(Object obj)
    {
        if (!(obj instanceof Node)) goto _L2; else goto _L1
_L1:
        obj = (Node)obj;
        ((Node) (obj)).getNodeType();
        JVM INSTR tableswitch 1 5: default 52
    //                   1 55
    //                   2 52
    //                   3 55
    //                   4 55
    //                   5 55;
           goto _L3 _L4 _L3 _L4 _L4 _L4
_L3:
        return "";
_L4:
        return ((Node) (obj)).getStringValue();
_L2:
        if (obj instanceof String)
        {
            return (String)obj;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    protected String getContentAsText(Object obj)
    {
        if (!(obj instanceof Node)) goto _L2; else goto _L1
_L1:
        obj = (Node)obj;
        ((Node) (obj)).getNodeType();
        JVM INSTR tableswitch 3 5: default 44
    //                   3 47
    //                   4 47
    //                   5 47;
           goto _L3 _L4 _L4 _L4
_L3:
        return "";
_L4:
        return ((Node) (obj)).getText();
_L2:
        if (obj instanceof String)
        {
            return (String)obj;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public String getText()
    {
        List list = contentList();
        if (list != null)
        {
            int j = list.size();
            if (j >= 1)
            {
                Object obj = getContentAsText(list.get(0));
                if (j == 1)
                {
                    return ((String) (obj));
                }
                obj = new StringBuffer(((String) (obj)));
                for (int i = 1; i < j; i++)
                {
                    ((StringBuffer) (obj)).append(getContentAsText(list.get(i)));
                }

                return ((StringBuffer) (obj)).toString();
            }
        }
        return "";
    }

    public String getTextTrim()
    {
        Object obj = getText();
        StringBuffer stringbuffer = new StringBuffer();
        obj = new StringTokenizer(((String) (obj)));
        do
        {
            if (!((StringTokenizer) (obj)).hasMoreTokens())
            {
                break;
            }
            stringbuffer.append(((StringTokenizer) (obj)).nextToken());
            if (((StringTokenizer) (obj)).hasMoreTokens())
            {
                stringbuffer.append(" ");
            }
        } while (true);
        return stringbuffer.toString();
    }

    public boolean hasContent()
    {
        return nodeCount() > 0;
    }

    public int indexOf(Node node1)
    {
        return contentList().indexOf(node1);
    }

    protected void invalidNodeTypeAddException(Node node1)
    {
        throw new IllegalAddException("Invalid node type. Cannot add node: " + node1 + " to this branch: " + this);
    }

    public boolean isReadOnly()
    {
        return false;
    }

    public Node node(int i)
    {
        Object obj = contentList().get(i);
        if (obj instanceof Node)
        {
            return (Node)obj;
        }
        if (obj instanceof String)
        {
            return getDocumentFactory().createText(obj.toString());
        } else
        {
            return null;
        }
    }

    public int nodeCount()
    {
        return contentList().size();
    }

    public Iterator nodeIterator()
    {
        return contentList().iterator();
    }

    public boolean remove(Comment comment)
    {
        return removeNode(comment);
    }

    public boolean remove(Element element)
    {
        return removeNode(element);
    }

    public boolean remove(Node node1)
    {
        switch (node1.getNodeType())
        {
        default:
            invalidNodeTypeAddException(node1);
            return false;

        case 1: // '\001'
            return remove((Element)node1);

        case 8: // '\b'
            return remove((Comment)node1);

        case 7: // '\007'
            return remove((ProcessingInstruction)node1);
        }
    }

    public boolean remove(ProcessingInstruction processinginstruction)
    {
        return removeNode(processinginstruction);
    }

    protected abstract boolean removeNode(Node node1);

    public void setProcessingInstructions(List list)
    {
        for (list = list.iterator(); list.hasNext(); addNode((ProcessingInstruction)list.next())) { }
    }
}
