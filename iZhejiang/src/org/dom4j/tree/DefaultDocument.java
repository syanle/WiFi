// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.xml.sax.EntityResolver;

// Referenced classes of package org.dom4j.tree:
//            AbstractDocument, ContentListFacade

public class DefaultDocument extends AbstractDocument
{

    protected static final Iterator EMPTY_ITERATOR;
    protected static final List EMPTY_LIST;
    private List content;
    private DocumentType docType;
    private DocumentFactory documentFactory;
    private transient EntityResolver entityResolver;
    private String name;
    private Element rootElement;

    public DefaultDocument()
    {
        documentFactory = DocumentFactory.getInstance();
    }

    public DefaultDocument(String s)
    {
        documentFactory = DocumentFactory.getInstance();
        name = s;
    }

    public DefaultDocument(String s, Element element, DocumentType documenttype)
    {
        documentFactory = DocumentFactory.getInstance();
        name = s;
        rootElement = element;
        docType = documenttype;
    }

    public DefaultDocument(DocumentType documenttype)
    {
        documentFactory = DocumentFactory.getInstance();
        docType = documenttype;
    }

    public DefaultDocument(Element element)
    {
        documentFactory = DocumentFactory.getInstance();
        rootElement = element;
    }

    public DefaultDocument(Element element, DocumentType documenttype)
    {
        documentFactory = DocumentFactory.getInstance();
        rootElement = element;
        docType = documenttype;
    }

    public Document addDocType(String s, String s1, String s2)
    {
        setDocType(getDocumentFactory().createDocType(s, s1, s2));
        return this;
    }

    protected void addNode(int i, Node node)
    {
        if (node != null)
        {
            Document document = node.getDocument();
            if (document != null && document != this)
            {
                throw new IllegalAddException(this, node, "The Node already has an existing document: " + document);
            }
            contentList().add(i, node);
            childAdded(node);
        }
    }

    protected void addNode(Node node)
    {
        if (node != null)
        {
            Document document = node.getDocument();
            if (document != null && document != this)
            {
                throw new IllegalAddException(this, node, "The Node already has an existing document: " + document);
            }
            contentList().add(node);
            childAdded(node);
        }
    }

    public void clearContent()
    {
        contentRemoved();
        content = null;
        rootElement = null;
    }

    public Object clone()
    {
        DefaultDocument defaultdocument = (DefaultDocument)super.clone();
        defaultdocument.rootElement = null;
        defaultdocument.content = null;
        defaultdocument.appendContent(this);
        return defaultdocument;
    }

    protected List contentList()
    {
        if (content == null)
        {
            content = createContentList();
            if (rootElement != null)
            {
                content.add(rootElement);
            }
        }
        return content;
    }

    public DocumentType getDocType()
    {
        return docType;
    }

    protected DocumentFactory getDocumentFactory()
    {
        return documentFactory;
    }

    public EntityResolver getEntityResolver()
    {
        return entityResolver;
    }

    public String getName()
    {
        return name;
    }

    public Element getRootElement()
    {
        return rootElement;
    }

    public String getXMLEncoding()
    {
        return encoding;
    }

    public ProcessingInstruction processingInstruction(String s)
    {
        List list = contentList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof ProcessingInstruction))
            {
                continue;
            }
            obj = (ProcessingInstruction)obj;
            if (s.equals(((ProcessingInstruction) (obj)).getName()))
            {
                return ((ProcessingInstruction) (obj));
            }
        }

        return null;
    }

    public List processingInstructions()
    {
        List list = contentList();
        BackedList backedlist = createResultList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (obj instanceof ProcessingInstruction)
            {
                backedlist.add(obj);
            }
        }

        return backedlist;
    }

    public List processingInstructions(String s)
    {
        List list = contentList();
        BackedList backedlist = createResultList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof ProcessingInstruction))
            {
                continue;
            }
            obj = (ProcessingInstruction)obj;
            if (s.equals(((ProcessingInstruction) (obj)).getName()))
            {
                backedlist.add(obj);
            }
        }

        return backedlist;
    }

    protected boolean removeNode(Node node)
    {
        if (node == rootElement)
        {
            rootElement = null;
        }
        if (contentList().remove(node))
        {
            childRemoved(node);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean removeProcessingInstruction(String s)
    {
        for (Iterator iterator = contentList().iterator(); iterator.hasNext();)
        {
            Object obj = iterator.next();
            if ((obj instanceof ProcessingInstruction) && s.equals(((ProcessingInstruction)obj).getName()))
            {
                iterator.remove();
                return true;
            }
        }

        return false;
    }

    protected void rootElementAdded(Element element)
    {
        rootElement = element;
        element.setDocument(this);
    }

    public void setContent(List list)
    {
        List list2;
label0:
        {
            rootElement = null;
            contentRemoved();
            List list1 = list;
            if (list instanceof ContentListFacade)
            {
                list1 = ((ContentListFacade)list).getBackingList();
            }
            if (list1 == null)
            {
                content = null;
                return;
            }
            int j = list1.size();
            list2 = createContentList(j);
            int i = 0;
            do
            {
                if (i >= j)
                {
                    break label0;
                }
                list = ((List) (list1.get(i)));
                if (list instanceof Node)
                {
                    Node node = (Node)list;
                    Document document = node.getDocument();
                    list = node;
                    if (document != null)
                    {
                        list = node;
                        if (document != this)
                        {
                            list = (Node)node.clone();
                        }
                    }
                    if (list instanceof Element)
                    {
                        if (rootElement != null)
                        {
                            break;
                        }
                        rootElement = (Element)list;
                    }
                    list2.add(list);
                    childAdded(list);
                }
                i++;
            } while (true);
            throw new IllegalAddException("A document may only contain one root element: " + list1);
        }
        content = list2;
    }

    public void setDocType(DocumentType documenttype)
    {
        docType = documenttype;
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        documentFactory = documentfactory;
    }

    public void setEntityResolver(EntityResolver entityresolver)
    {
        entityResolver = entityresolver;
    }

    public void setName(String s)
    {
        name = s;
    }

    static 
    {
        EMPTY_LIST = Collections.EMPTY_LIST;
        EMPTY_ITERATOR = EMPTY_LIST.iterator();
    }
}
