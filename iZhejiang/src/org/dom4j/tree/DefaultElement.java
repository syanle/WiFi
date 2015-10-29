// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.tree:
//            AbstractElement, BackedList, ContentListFacade, DefaultText

public class DefaultElement extends AbstractElement
{

    private static final transient DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
    private Object attributes;
    private Object content;
    private Branch parentBranch;
    private QName qname;

    public DefaultElement(String s)
    {
        qname = DOCUMENT_FACTORY.createQName(s);
    }

    public DefaultElement(String s, Namespace namespace)
    {
        qname = DOCUMENT_FACTORY.createQName(s, namespace);
    }

    public DefaultElement(QName qname1)
    {
        qname = qname1;
    }

    public DefaultElement(QName qname1, int i)
    {
        qname = qname1;
        if (i > 1)
        {
            attributes = new ArrayList(i);
        }
    }

    public void add(Attribute attribute1)
    {
        if (attribute1.getParent() != null)
        {
            throw new IllegalAddException(this, attribute1, "The Attribute already has an existing parent \"" + attribute1.getParent().getQualifiedName() + "\"");
        }
        if (attribute1.getValue() == null)
        {
            attribute1 = attribute(attribute1.getQName());
            if (attribute1 != null)
            {
                remove(attribute1);
            }
            return;
        }
        if (attributes == null)
        {
            attributes = attribute1;
        } else
        {
            attributeList().add(attribute1);
        }
        childAdded(attribute1);
    }

    protected void addNewNode(Node node1)
    {
        Object obj = content;
        if (obj == null)
        {
            content = node1;
        } else
        if (obj instanceof List)
        {
            ((List)obj).add(node1);
        } else
        {
            List list = createContentList();
            list.add(obj);
            list.add(node1);
            content = list;
        }
        childAdded(node1);
    }

    public List additionalNamespaces()
    {
label0:
        {
            Object obj;
label1:
            {
                obj = content;
                if (obj instanceof List)
                {
                    List list = (List)obj;
                    int j = list.size();
                    BackedList backedlist = createResultList();
                    int i = 0;
                    do
                    {
                        obj = backedlist;
                        if (i >= j)
                        {
                            break;
                        }
                        obj = list.get(i);
                        if (obj instanceof Namespace)
                        {
                            obj = (Namespace)obj;
                            if (!((Namespace) (obj)).equals(getNamespace()))
                            {
                                backedlist.addLocal(obj);
                            }
                        }
                        i++;
                    } while (true);
                } else
                {
                    if (!(obj instanceof Namespace))
                    {
                        break label0;
                    }
                    obj = (Namespace)obj;
                    if (!((Namespace) (obj)).equals(getNamespace()))
                    {
                        break label1;
                    }
                    obj = createEmptyList();
                }
                return ((List) (obj));
            }
            return createSingleResultList(obj);
        }
        return createEmptyList();
    }

    public List additionalNamespaces(String s)
    {
label0:
        {
            Object obj = content;
            if (obj instanceof List)
            {
                List list = (List)obj;
                BackedList backedlist = createResultList();
                int j = list.size();
                int i = 0;
                do
                {
                    obj = backedlist;
                    if (i >= j)
                    {
                        break;
                    }
                    obj = list.get(i);
                    if (obj instanceof Namespace)
                    {
                        obj = (Namespace)obj;
                        if (!s.equals(((Namespace) (obj)).getURI()))
                        {
                            backedlist.addLocal(obj);
                        }
                    }
                    i++;
                } while (true);
            } else
            {
                if (!(obj instanceof Namespace))
                {
                    break label0;
                }
                obj = (Namespace)obj;
                if (s.equals(((Namespace) (obj)).getURI()))
                {
                    break label0;
                }
                obj = createSingleResultList(obj);
            }
            return ((List) (obj));
        }
        return createEmptyList();
    }

    public Attribute attribute(int i)
    {
        Object obj = attributes;
        if (obj instanceof List)
        {
            return (Attribute)((List)obj).get(i);
        }
        if (obj != null && i == 0)
        {
            return (Attribute)obj;
        } else
        {
            return null;
        }
    }

    public Attribute attribute(String s)
    {
        Object obj = attributes;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        Object obj1;
        int i;
        int j;
        obj1 = (List)obj;
        j = ((List) (obj1)).size();
        i = 0;
_L8:
        if (i >= j) goto _L4; else goto _L3
_L3:
        obj = (Attribute)((List) (obj1)).get(i);
        if (!s.equals(((Attribute) (obj)).getName())) goto _L6; else goto _L5
_L5:
        return ((Attribute) (obj));
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (obj == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (Attribute)obj;
        obj = obj1;
        if (s.equals(((Attribute) (obj1)).getName())) goto _L5; else goto _L4
_L4:
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public Attribute attribute(String s, Namespace namespace)
    {
        return attribute(getDocumentFactory().createQName(s, namespace));
    }

    public Attribute attribute(QName qname1)
    {
        Object obj = attributes;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        Object obj1;
        int i;
        int j;
        obj1 = (List)obj;
        j = ((List) (obj1)).size();
        i = 0;
_L8:
        if (i >= j) goto _L4; else goto _L3
_L3:
        obj = (Attribute)((List) (obj1)).get(i);
        if (!qname1.equals(((Attribute) (obj)).getQName())) goto _L6; else goto _L5
_L5:
        return ((Attribute) (obj));
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (obj == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (Attribute)obj;
        obj = obj1;
        if (qname1.equals(((Attribute) (obj1)).getQName())) goto _L5; else goto _L4
_L4:
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public int attributeCount()
    {
        Object obj = attributes;
        if (obj instanceof List)
        {
            return ((List)obj).size();
        }
        return obj == null ? 0 : 1;
    }

    public Iterator attributeIterator()
    {
        Object obj = attributes;
        if (obj instanceof List)
        {
            return ((List)obj).iterator();
        }
        if (obj != null)
        {
            return createSingleIterator(obj);
        } else
        {
            return EMPTY_ITERATOR;
        }
    }

    protected List attributeList()
    {
        Object obj = attributes;
        if (obj instanceof List)
        {
            return (List)obj;
        }
        if (obj != null)
        {
            List list1 = createAttributeList();
            list1.add(obj);
            attributes = list1;
            return list1;
        } else
        {
            List list = createAttributeList();
            attributes = list;
            return list;
        }
    }

    protected List attributeList(int i)
    {
        Object obj = attributes;
        if (obj instanceof List)
        {
            return (List)obj;
        }
        if (obj != null)
        {
            List list1 = createAttributeList(i);
            list1.add(obj);
            attributes = list1;
            return list1;
        } else
        {
            List list = createAttributeList(i);
            attributes = list;
            return list;
        }
    }

    public List attributes()
    {
        return new ContentListFacade(this, attributeList());
    }

    public void clearContent()
    {
        if (content != null)
        {
            contentRemoved();
            content = null;
        }
    }

    public Object clone()
    {
        DefaultElement defaultelement = (DefaultElement)super.clone();
        if (defaultelement != this)
        {
            defaultelement.content = null;
            defaultelement.attributes = null;
            defaultelement.appendAttributes(this);
            defaultelement.appendContent(this);
        }
        return defaultelement;
    }

    protected List contentList()
    {
        Object obj = content;
        if (obj instanceof List)
        {
            return (List)obj;
        }
        List list = createContentList();
        if (obj != null)
        {
            list.add(obj);
        }
        content = list;
        return list;
    }

    public List declaredNamespaces()
    {
        BackedList backedlist = createResultList();
        Object obj = content;
        if (obj instanceof List)
        {
            obj = (List)obj;
            int j = ((List) (obj)).size();
            for (int i = 0; i < j; i++)
            {
                Object obj1 = ((List) (obj)).get(i);
                if (obj1 instanceof Namespace)
                {
                    backedlist.addLocal(obj1);
                }
            }

        } else
        if (obj instanceof Namespace)
        {
            backedlist.addLocal(obj);
        }
        return backedlist;
    }

    public Element element(String s)
    {
        Object obj = content;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        Object obj1;
        int i;
        int j;
        obj1 = (List)obj;
        j = ((List) (obj1)).size();
        i = 0;
_L9:
        if (i >= j) goto _L4; else goto _L3
_L3:
        obj = ((List) (obj1)).get(i);
        if (!(obj instanceof Element)) goto _L6; else goto _L5
_L5:
        obj = (Element)obj;
        if (!s.equals(((Element) (obj)).getName())) goto _L6; else goto _L7
_L7:
        return ((Element) (obj));
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (!(obj instanceof Element))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (Element)obj;
        obj = obj1;
        if (s.equals(((Element) (obj1)).getName())) goto _L7; else goto _L4
_L4:
        return null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public Element element(String s, Namespace namespace)
    {
        return element(getDocumentFactory().createQName(s, namespace));
    }

    public Element element(QName qname1)
    {
        Object obj = content;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        Object obj1;
        int i;
        int j;
        obj1 = (List)obj;
        j = ((List) (obj1)).size();
        i = 0;
_L9:
        if (i >= j) goto _L4; else goto _L3
_L3:
        obj = ((List) (obj1)).get(i);
        if (!(obj instanceof Element)) goto _L6; else goto _L5
_L5:
        obj = (Element)obj;
        if (!qname1.equals(((Element) (obj)).getQName())) goto _L6; else goto _L7
_L7:
        return ((Element) (obj));
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (!(obj instanceof Element))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (Element)obj;
        obj = obj1;
        if (qname1.equals(((Element) (obj1)).getQName())) goto _L7; else goto _L4
_L4:
        return null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public Document getDocument()
    {
        if (parentBranch instanceof Document)
        {
            return (Document)parentBranch;
        }
        if (parentBranch instanceof Element)
        {
            return ((Element)parentBranch).getDocument();
        } else
        {
            return null;
        }
    }

    protected DocumentFactory getDocumentFactory()
    {
        DocumentFactory documentfactory = qname.getDocumentFactory();
        if (documentfactory != null)
        {
            return documentfactory;
        } else
        {
            return DOCUMENT_FACTORY;
        }
    }

    public Namespace getNamespaceForPrefix(String s)
    {
        String s1;
        s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        if (!s1.equals(getNamespacePrefix())) goto _L2; else goto _L1
_L1:
        s = getNamespace();
_L4:
        return s;
_L2:
        List list;
        int i;
        int j;
        if (s1.equals("xml"))
        {
            return Namespace.XML_NAMESPACE;
        }
        s = ((String) (content));
        if (!(s instanceof List))
        {
            break MISSING_BLOCK_LABEL_121;
        }
        list = (List)s;
        j = list.size();
        i = 0;
_L5:
        Namespace namespace;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        s = ((String) (list.get(i)));
        if (!(s instanceof Namespace))
        {
            break; /* Loop/switch isn't completed */
        }
        namespace = (Namespace)s;
        s = namespace;
        if (s1.equals(namespace.getPrefix())) goto _L4; else goto _L3
_L3:
        i++;
          goto _L5
        if (!(s instanceof Namespace))
        {
            break; /* Loop/switch isn't completed */
        }
        namespace = (Namespace)s;
        s = namespace;
        if (s1.equals(namespace.getPrefix())) goto _L4; else goto _L6
_L6:
        s = getParent();
        if (s != null)
        {
            s = s.getNamespaceForPrefix(s1);
            if (s != null)
            {
                return s;
            }
        }
        if (s1 == null || s1.length() <= 0)
        {
            return Namespace.NO_NAMESPACE;
        } else
        {
            return null;
        }
    }

    public Namespace getNamespaceForURI(String s)
    {
        if (s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        Object obj = Namespace.NO_NAMESPACE;
_L4:
        return ((Namespace) (obj));
_L2:
        List list;
        int i;
        int j;
        if (s.equals(getNamespaceURI()))
        {
            return getNamespace();
        }
        obj = content;
        if (!(obj instanceof List))
        {
            break MISSING_BLOCK_LABEL_114;
        }
        list = (List)obj;
        j = list.size();
        i = 0;
_L5:
        Namespace namespace;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = list.get(i);
        if (!(obj instanceof Namespace))
        {
            break; /* Loop/switch isn't completed */
        }
        namespace = (Namespace)obj;
        obj = namespace;
        if (s.equals(namespace.getURI())) goto _L4; else goto _L3
_L3:
        i++;
          goto _L5
        if (!(obj instanceof Namespace))
        {
            break; /* Loop/switch isn't completed */
        }
        namespace = (Namespace)obj;
        obj = namespace;
        if (s.equals(namespace.getURI())) goto _L4; else goto _L6
_L6:
        Element element1 = getParent();
        if (element1 != null)
        {
            return element1.getNamespaceForURI(s);
        } else
        {
            return null;
        }
    }

    public Element getParent()
    {
        Element element1 = null;
        if (parentBranch instanceof Element)
        {
            element1 = (Element)parentBranch;
        }
        return element1;
    }

    public QName getQName()
    {
        return qname;
    }

    public String getStringValue()
    {
        Object obj = content;
        if (obj instanceof List)
        {
            obj = (List)obj;
            int j = ((List) (obj)).size();
            if (j > 0)
            {
                if (j == 1)
                {
                    return getContentAsStringValue(((List) (obj)).get(0));
                }
                StringBuffer stringbuffer = new StringBuffer();
                for (int i = 0; i < j; i++)
                {
                    String s = getContentAsStringValue(((List) (obj)).get(i));
                    if (s.length() > 0)
                    {
                        stringbuffer.append(s);
                    }
                }

                return stringbuffer.toString();
            }
        } else
        if (obj != null)
        {
            return getContentAsStringValue(obj);
        }
        return "";
    }

    public String getText()
    {
        Object obj = content;
        if (obj instanceof List)
        {
            return super.getText();
        }
        if (obj != null)
        {
            return getContentAsText(obj);
        } else
        {
            return "";
        }
    }

    public int indexOf(Node node1)
    {
        Object obj = content;
        if (obj instanceof List)
        {
            return ((List)obj).indexOf(node1);
        }
        return obj == null || !obj.equals(node1) ? -1 : 0;
    }

    public Node node(int i)
    {
        if (i < 0) goto _L2; else goto _L1
_L1:
        Object obj = content;
        if (!(obj instanceof List)) goto _L4; else goto _L3
_L3:
        obj = (List)obj;
        if (i < ((List) (obj)).size()) goto _L5; else goto _L2
_L2:
        return null;
_L5:
        obj = ((List) (obj)).get(i);
_L6:
        if (obj != null)
        {
            if (obj instanceof Node)
            {
                return (Node)obj;
            } else
            {
                return new DefaultText(obj.toString());
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (i != 0)
        {
            obj = null;
        }
          goto _L6
        if (true) goto _L2; else goto _L7
_L7:
    }

    public int nodeCount()
    {
        Object obj = content;
        if (obj instanceof List)
        {
            return ((List)obj).size();
        }
        return obj == null ? 0 : 1;
    }

    public Iterator nodeIterator()
    {
        Object obj = content;
        if (obj instanceof List)
        {
            return ((List)obj).iterator();
        }
        if (obj != null)
        {
            return createSingleIterator(obj);
        } else
        {
            return EMPTY_ITERATOR;
        }
    }

    public ProcessingInstruction processingInstruction(String s)
    {
        Object obj = content;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        Object obj1;
        int i;
        int j;
        obj1 = (List)obj;
        j = ((List) (obj1)).size();
        i = 0;
_L9:
        if (i >= j) goto _L4; else goto _L3
_L3:
        obj = ((List) (obj1)).get(i);
        if (!(obj instanceof ProcessingInstruction)) goto _L6; else goto _L5
_L5:
        obj = (ProcessingInstruction)obj;
        if (!s.equals(((ProcessingInstruction) (obj)).getName())) goto _L6; else goto _L7
_L7:
        return ((ProcessingInstruction) (obj));
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (!(obj instanceof ProcessingInstruction))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (ProcessingInstruction)obj;
        obj = obj1;
        if (s.equals(((ProcessingInstruction) (obj1)).getName())) goto _L7; else goto _L4
_L4:
        return null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public List processingInstructions()
    {
label0:
        {
            Object obj = content;
            if (obj instanceof List)
            {
                List list = (List)obj;
                BackedList backedlist = createResultList();
                int j = list.size();
                int i = 0;
                do
                {
                    obj = backedlist;
                    if (i >= j)
                    {
                        break;
                    }
                    obj = list.get(i);
                    if (obj instanceof ProcessingInstruction)
                    {
                        backedlist.addLocal(obj);
                    }
                    i++;
                } while (true);
            } else
            {
                if (!(obj instanceof ProcessingInstruction))
                {
                    break label0;
                }
                obj = createSingleResultList(obj);
            }
            return ((List) (obj));
        }
        return createEmptyList();
    }

    public List processingInstructions(String s)
    {
label0:
        {
            Object obj = content;
            if (obj instanceof List)
            {
                List list = (List)obj;
                BackedList backedlist = createResultList();
                int j = list.size();
                int i = 0;
                do
                {
                    obj = backedlist;
                    if (i >= j)
                    {
                        break;
                    }
                    obj = list.get(i);
                    if (obj instanceof ProcessingInstruction)
                    {
                        obj = (ProcessingInstruction)obj;
                        if (s.equals(((ProcessingInstruction) (obj)).getName()))
                        {
                            backedlist.addLocal(obj);
                        }
                    }
                    i++;
                } while (true);
            } else
            {
                if (!(obj instanceof ProcessingInstruction))
                {
                    break label0;
                }
                obj = (ProcessingInstruction)obj;
                if (!s.equals(((ProcessingInstruction) (obj)).getName()))
                {
                    break label0;
                }
                obj = createSingleResultList(obj);
            }
            return ((List) (obj));
        }
        return createEmptyList();
    }

    public boolean remove(Attribute attribute1)
    {
        Object obj;
        boolean flag1;
        flag1 = false;
        obj = attributes;
        if (!(obj instanceof List)) goto _L2; else goto _L1
_L1:
        boolean flag;
        obj = (List)obj;
        flag1 = ((List) (obj)).remove(attribute1);
        flag = flag1;
        if (!flag1)
        {
            Attribute attribute2 = attribute(attribute1.getQName());
            flag = flag1;
            if (attribute2 != null)
            {
                ((List) (obj)).remove(attribute2);
                flag = true;
            }
        }
_L4:
        if (flag)
        {
            childRemoved(attribute1);
        }
        return flag;
_L2:
        flag = flag1;
        if (obj != null)
        {
            if (attribute1.equals(obj))
            {
                attributes = null;
                flag = true;
            } else
            {
                obj = (Attribute)obj;
                flag = flag1;
                if (attribute1.getQName().equals(((Attribute) (obj)).getQName()))
                {
                    attributes = null;
                    flag = true;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected boolean removeNode(Node node1)
    {
        Object obj;
        boolean flag;
        boolean flag1;
        flag1 = false;
        obj = content;
        flag = flag1;
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (obj != node1) goto _L4; else goto _L3
_L3:
        content = null;
        flag = true;
_L2:
        if (flag)
        {
            childRemoved(node1);
        }
        return flag;
_L4:
        flag = flag1;
        if (obj instanceof List)
        {
            flag = ((List)obj).remove(node1);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public boolean removeProcessingInstruction(String s)
    {
label0:
        {
            Object obj = content;
            if (obj instanceof List)
            {
                obj = ((List)obj).iterator();
                Object obj1;
                do
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break label0;
                    }
                    obj1 = ((Iterator) (obj)).next();
                } while (!(obj1 instanceof ProcessingInstruction) || !s.equals(((ProcessingInstruction)obj1).getName()));
                ((Iterator) (obj)).remove();
                return true;
            }
            if ((obj instanceof ProcessingInstruction) && s.equals(((ProcessingInstruction)obj).getName()))
            {
                content = null;
                return true;
            }
        }
        return false;
    }

    protected void setAttributeList(List list)
    {
        attributes = list;
    }

    public void setAttributes(List list)
    {
        List list1 = list;
        if (list instanceof ContentListFacade)
        {
            list1 = ((ContentListFacade)list).getBackingList();
        }
        attributes = list1;
    }

    public void setContent(List list)
    {
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
        List list2 = createContentList(j);
        int i = 0;
        while (i < j) 
        {
            list = ((List) (list1.get(i)));
            if (list instanceof Node)
            {
                Node node1 = (Node)list;
                Element element1 = node1.getParent();
                list = node1;
                if (element1 != null)
                {
                    list = node1;
                    if (element1 != this)
                    {
                        list = (Node)node1.clone();
                    }
                }
                list2.add(list);
                childAdded(list);
            } else
            if (list != null)
            {
                list = list.toString();
                list = getDocumentFactory().createText(list);
                list2.add(list);
                childAdded(list);
            }
            i++;
        }
        content = list2;
    }

    public void setDocument(Document document)
    {
        if ((parentBranch instanceof Document) || document != null)
        {
            parentBranch = document;
        }
    }

    public void setParent(Element element1)
    {
        if ((parentBranch instanceof Element) || element1 != null)
        {
            parentBranch = element1;
        }
    }

    public void setQName(QName qname1)
    {
        qname = qname1;
    }

    public boolean supportsParent()
    {
        return true;
    }

}
