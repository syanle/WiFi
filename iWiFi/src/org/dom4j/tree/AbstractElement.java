// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.Visitor;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;
import org.xml.sax.Attributes;

// Referenced classes of package org.dom4j.tree:
//            AbstractBranch, BackedList, ContentListFacade, SingleIterator, 
//            NamespaceStack

public abstract class AbstractElement extends AbstractBranch
    implements Element
{

    private static final DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
    protected static final Iterator EMPTY_ITERATOR;
    protected static final List EMPTY_LIST;
    protected static final boolean USE_STRINGVALUE_SEPARATOR = false;
    protected static final boolean VERBOSE_TOSTRING = false;

    public AbstractElement()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
        int i = 0;
        for (int j = attributeCount(); i < j; i++)
        {
            visitor.visit(attribute(i));
        }

        i = 0;
        for (int k = nodeCount(); i < k; i++)
        {
            node(i).accept(visitor);
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
        } else
        {
            attributeList().add(attribute1);
            childAdded(attribute1);
            return;
        }
    }

    public void add(CDATA cdata)
    {
        addNode(cdata);
    }

    public void add(Comment comment)
    {
        addNode(comment);
    }

    public void add(Element element1)
    {
        addNode(element1);
    }

    public void add(Entity entity)
    {
        addNode(entity);
    }

    public void add(Namespace namespace)
    {
        addNode(namespace);
    }

    public void add(Node node1)
    {
        switch (node1.getNodeType())
        {
        case 6: // '\006'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
        case 12: // '\f'
        default:
            invalidNodeTypeAddException(node1);
            return;

        case 1: // '\001'
            add((Element)node1);
            return;

        case 2: // '\002'
            add((Attribute)node1);
            return;

        case 3: // '\003'
            add((Text)node1);
            return;

        case 4: // '\004'
            add((CDATA)node1);
            return;

        case 5: // '\005'
            add((Entity)node1);
            return;

        case 7: // '\007'
            add((ProcessingInstruction)node1);
            return;

        case 8: // '\b'
            add((Comment)node1);
            return;

        case 13: // '\r'
            add((Namespace)node1);
            break;
        }
    }

    public void add(ProcessingInstruction processinginstruction)
    {
        addNode(processinginstruction);
    }

    public void add(Text text)
    {
        addNode(text);
    }

    public Element addAttribute(String s, String s1)
    {
        Attribute attribute1 = attribute(s);
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (attribute1 != null) goto _L4; else goto _L3
_L3:
        add(getDocumentFactory().createAttribute(this, s, s1));
_L6:
        return this;
_L4:
        if (attribute1.isReadOnly())
        {
            remove(attribute1);
            add(getDocumentFactory().createAttribute(this, s, s1));
            return this;
        } else
        {
            attribute1.setValue(s1);
            return this;
        }
_L2:
        if (attribute1 != null)
        {
            remove(attribute1);
            return this;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Element addAttribute(QName qname, String s)
    {
        Attribute attribute1 = attribute(qname);
        if (s == null) goto _L2; else goto _L1
_L1:
        if (attribute1 != null) goto _L4; else goto _L3
_L3:
        add(getDocumentFactory().createAttribute(this, qname, s));
_L6:
        return this;
_L4:
        if (attribute1.isReadOnly())
        {
            remove(attribute1);
            add(getDocumentFactory().createAttribute(this, qname, s));
            return this;
        } else
        {
            attribute1.setValue(s);
            return this;
        }
_L2:
        if (attribute1 != null)
        {
            remove(attribute1);
            return this;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Element addCDATA(String s)
    {
        addNewNode(getDocumentFactory().createCDATA(s));
        return this;
    }

    public Element addComment(String s)
    {
        addNewNode(getDocumentFactory().createComment(s));
        return this;
    }

    public Element addElement(String s)
    {
        DocumentFactory documentfactory = getDocumentFactory();
        int i = s.indexOf(":");
        String s1 = s;
        Namespace namespace;
        if (i > 0)
        {
            String s2 = s.substring(0, i);
            s1 = s.substring(i + 1);
            Namespace namespace1 = getNamespaceForPrefix(s2);
            namespace = namespace1;
            if (namespace1 == null)
            {
                throw new IllegalAddException("No such namespace prefix: " + s2 + " is in scope on: " + this + " so cannot add element: " + s);
            }
        } else
        {
            namespace = getNamespaceForPrefix("");
        }
        if (namespace != null)
        {
            s = documentfactory.createElement(documentfactory.createQName(s1, namespace));
        } else
        {
            s = documentfactory.createElement(s);
        }
        addNewNode(s);
        return s;
    }

    public Element addEntity(String s, String s1)
    {
        addNewNode(getDocumentFactory().createEntity(s, s1));
        return this;
    }

    public Element addNamespace(String s, String s1)
    {
        addNewNode(getDocumentFactory().createNamespace(s, s1));
        return this;
    }

    protected void addNewNode(int i, Node node1)
    {
        contentList().add(i, node1);
        childAdded(node1);
    }

    protected void addNewNode(Node node1)
    {
        contentList().add(node1);
        childAdded(node1);
    }

    protected void addNode(int i, Node node1)
    {
        if (node1.getParent() != null)
        {
            throw new IllegalAddException(this, node1, "The Node already has an existing parent of \"" + node1.getParent().getQualifiedName() + "\"");
        } else
        {
            addNewNode(i, node1);
            return;
        }
    }

    protected void addNode(Node node1)
    {
        if (node1.getParent() != null)
        {
            throw new IllegalAddException(this, node1, "The Node already has an existing parent of \"" + node1.getParent().getQualifiedName() + "\"");
        } else
        {
            addNewNode(node1);
            return;
        }
    }

    public Element addProcessingInstruction(String s, String s1)
    {
        addNewNode(getDocumentFactory().createProcessingInstruction(s, s1));
        return this;
    }

    public Element addProcessingInstruction(String s, Map map)
    {
        addNewNode(getDocumentFactory().createProcessingInstruction(s, map));
        return this;
    }

    public Element addText(String s)
    {
        addNewNode(getDocumentFactory().createText(s));
        return this;
    }

    public List additionalNamespaces()
    {
        List list = contentList();
        int j = list.size();
        BackedList backedlist = createResultList();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof Namespace))
            {
                continue;
            }
            obj = (Namespace)obj;
            if (!((Namespace) (obj)).equals(getNamespace()))
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public List additionalNamespaces(String s)
    {
        List list = contentList();
        BackedList backedlist = createResultList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof Namespace))
            {
                continue;
            }
            obj = (Namespace)obj;
            if (!s.equals(((Namespace) (obj)).getURI()))
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public void appendAttributes(Element element1)
    {
        int i = 0;
        int j = element1.attributeCount();
        while (i < j) 
        {
            Attribute attribute1 = element1.attribute(i);
            if (attribute1.supportsParent())
            {
                addAttribute(attribute1.getQName(), attribute1.getValue());
            } else
            {
                add(attribute1);
            }
            i++;
        }
    }

    public String asXML()
    {
        Object obj;
        try
        {
            obj = new StringWriter();
            XMLWriter xmlwriter = new XMLWriter(((Writer) (obj)), new OutputFormat());
            xmlwriter.write(this);
            xmlwriter.flush();
            obj = ((StringWriter) (obj)).toString();
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("IOException while generating textual representation: " + ioexception.getMessage());
        }
        return ((String) (obj));
    }

    public Attribute attribute(int i)
    {
        return (Attribute)attributeList().get(i);
    }

    public Attribute attribute(String s)
    {
        List list = attributeList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Attribute attribute1 = (Attribute)list.get(i);
            if (s.equals(attribute1.getName()))
            {
                return attribute1;
            }
        }

        return null;
    }

    public Attribute attribute(String s, Namespace namespace)
    {
        return attribute(getDocumentFactory().createQName(s, namespace));
    }

    public Attribute attribute(QName qname)
    {
        List list = attributeList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Attribute attribute1 = (Attribute)list.get(i);
            if (qname.equals(attribute1.getQName()))
            {
                return attribute1;
            }
        }

        return null;
    }

    public int attributeCount()
    {
        return attributeList().size();
    }

    public Iterator attributeIterator()
    {
        return attributeList().iterator();
    }

    protected abstract List attributeList();

    protected abstract List attributeList(int i);

    public String attributeValue(String s)
    {
        s = attribute(s);
        if (s == null)
        {
            return null;
        } else
        {
            return s.getValue();
        }
    }

    public String attributeValue(String s, String s1)
    {
        s = attributeValue(s);
        if (s != null)
        {
            return s;
        } else
        {
            return s1;
        }
    }

    public String attributeValue(QName qname)
    {
        qname = attribute(qname);
        if (qname == null)
        {
            return null;
        } else
        {
            return qname.getValue();
        }
    }

    public String attributeValue(QName qname, String s)
    {
        qname = attributeValue(qname);
        if (qname != null)
        {
            return qname;
        } else
        {
            return s;
        }
    }

    public List attributes()
    {
        return new ContentListFacade(this, attributeList());
    }

    protected void childAdded(Node node1)
    {
        if (node1 != null)
        {
            node1.setParent(this);
        }
    }

    protected void childRemoved(Node node1)
    {
        if (node1 != null)
        {
            node1.setParent(null);
            node1.setDocument(null);
        }
    }

    protected List createAttributeList()
    {
        return createAttributeList(5);
    }

    protected List createAttributeList(int i)
    {
        return new ArrayList(i);
    }

    public Element createCopy()
    {
        Element element1 = createElement(getQName());
        element1.appendAttributes(this);
        element1.appendContent(this);
        return element1;
    }

    public Element createCopy(String s)
    {
        s = createElement(s);
        s.appendAttributes(this);
        s.appendContent(this);
        return s;
    }

    public Element createCopy(QName qname)
    {
        qname = createElement(qname);
        qname.appendAttributes(this);
        qname.appendContent(this);
        return qname;
    }

    protected Element createElement(String s)
    {
        return getDocumentFactory().createElement(s);
    }

    protected Element createElement(QName qname)
    {
        return getDocumentFactory().createElement(qname);
    }

    protected Iterator createSingleIterator(Object obj)
    {
        return new SingleIterator(obj);
    }

    public List declaredNamespaces()
    {
        BackedList backedlist = createResultList();
        List list = contentList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (obj instanceof Namespace)
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public Element element(String s)
    {
        List list = contentList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof Element))
            {
                continue;
            }
            obj = (Element)obj;
            if (s.equals(((Element) (obj)).getName()))
            {
                return ((Element) (obj));
            }
        }

        return null;
    }

    public Element element(String s, Namespace namespace)
    {
        return element(getDocumentFactory().createQName(s, namespace));
    }

    public Element element(QName qname)
    {
        List list = contentList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof Element))
            {
                continue;
            }
            obj = (Element)obj;
            if (qname.equals(((Element) (obj)).getQName()))
            {
                return ((Element) (obj));
            }
        }

        return null;
    }

    public Iterator elementIterator()
    {
        return elements().iterator();
    }

    public Iterator elementIterator(String s)
    {
        return elements(s).iterator();
    }

    public Iterator elementIterator(String s, Namespace namespace)
    {
        return elementIterator(getDocumentFactory().createQName(s, namespace));
    }

    public Iterator elementIterator(QName qname)
    {
        return elements(qname).iterator();
    }

    public String elementText(String s)
    {
        s = element(s);
        if (s != null)
        {
            return s.getText();
        } else
        {
            return null;
        }
    }

    public String elementText(QName qname)
    {
        qname = element(qname);
        if (qname != null)
        {
            return qname.getText();
        } else
        {
            return null;
        }
    }

    public String elementTextTrim(String s)
    {
        s = element(s);
        if (s != null)
        {
            return s.getTextTrim();
        } else
        {
            return null;
        }
    }

    public String elementTextTrim(QName qname)
    {
        qname = element(qname);
        if (qname != null)
        {
            return qname.getTextTrim();
        } else
        {
            return null;
        }
    }

    public List elements()
    {
        List list = contentList();
        BackedList backedlist = createResultList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (obj instanceof Element)
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public List elements(String s)
    {
        List list = contentList();
        BackedList backedlist = createResultList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof Element))
            {
                continue;
            }
            obj = (Element)obj;
            if (s.equals(((Element) (obj)).getName()))
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public List elements(String s, Namespace namespace)
    {
        return elements(getDocumentFactory().createQName(s, namespace));
    }

    public List elements(QName qname)
    {
        List list = contentList();
        BackedList backedlist = createResultList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if (!(obj instanceof Element))
            {
                continue;
            }
            obj = (Element)obj;
            if (qname.equals(((Element) (obj)).getQName()))
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public void ensureAttributesCapacity(int i)
    {
        if (i > 1)
        {
            List list = attributeList();
            if (list instanceof ArrayList)
            {
                ((ArrayList)list).ensureCapacity(i);
            }
        }
    }

    public Object getData()
    {
        return getText();
    }

    protected DocumentFactory getDocumentFactory()
    {
        Object obj = getQName();
        if (obj != null)
        {
            obj = ((QName) (obj)).getDocumentFactory();
            if (obj != null)
            {
                return ((DocumentFactory) (obj));
            }
        }
        return DOCUMENT_FACTORY;
    }

    public String getName()
    {
        return getQName().getName();
    }

    public Namespace getNamespace()
    {
        return getQName().getNamespace();
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
_L6:
        return s;
_L2:
        List list;
        int i;
        int j;
        if (s1.equals("xml"))
        {
            return Namespace.XML_NAMESPACE;
        }
        list = contentList();
        j = list.size();
        i = 0;
_L7:
        if (i >= j) goto _L4; else goto _L3
_L3:
        Namespace namespace;
        s = ((String) (list.get(i)));
        if (!(s instanceof Namespace))
        {
            continue; /* Loop/switch isn't completed */
        }
        namespace = (Namespace)s;
        s = namespace;
        if (s1.equals(namespace.getPrefix())) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L4:
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
_L6:
        return ((Namespace) (obj));
_L2:
        List list;
        int i;
        int j;
        if (s.equals(getNamespaceURI()))
        {
            return getNamespace();
        }
        list = contentList();
        j = list.size();
        i = 0;
_L7:
        if (i >= j) goto _L4; else goto _L3
_L3:
        Namespace namespace;
        obj = list.get(i);
        if (!(obj instanceof Namespace))
        {
            continue; /* Loop/switch isn't completed */
        }
        namespace = (Namespace)obj;
        obj = namespace;
        if (s.equals(namespace.getURI())) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L4:
        return null;
    }

    public String getNamespacePrefix()
    {
        return getQName().getNamespacePrefix();
    }

    public String getNamespaceURI()
    {
        return getQName().getNamespaceURI();
    }

    public List getNamespacesForURI(String s)
    {
        BackedList backedlist = createResultList();
        List list = contentList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Object obj = list.get(i);
            if ((obj instanceof Namespace) && ((Namespace)obj).getURI().equals(s))
            {
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public short getNodeType()
    {
        return 1;
    }

    public String getPath(Element element1)
    {
        if (this == element1)
        {
            return ".";
        }
        Element element2 = getParent();
        if (element2 == null)
        {
            return "/" + getXPathNameStep();
        }
        if (element2 == element1)
        {
            return getXPathNameStep();
        } else
        {
            return element2.getPath(element1) + "/" + getXPathNameStep();
        }
    }

    public QName getQName(String s)
    {
        String s2 = "";
        String s1 = s;
        int i = s.indexOf(":");
        if (i > 0)
        {
            s2 = s.substring(0, i);
            s1 = s.substring(i + 1);
        }
        s = getNamespaceForPrefix(s2);
        if (s != null)
        {
            return getDocumentFactory().createQName(s1, s);
        } else
        {
            return getDocumentFactory().createQName(s1);
        }
    }

    public String getQualifiedName()
    {
        return getQName().getQualifiedName();
    }

    public String getStringValue()
    {
        List list = contentList();
        int j = list.size();
        if (j > 0)
        {
            if (j == 1)
            {
                return getContentAsStringValue(list.get(0));
            }
            StringBuffer stringbuffer = new StringBuffer();
            for (int i = 0; i < j; i++)
            {
                String s = getContentAsStringValue(list.get(i));
                if (s.length() > 0)
                {
                    stringbuffer.append(s);
                }
            }

            return stringbuffer.toString();
        } else
        {
            return "";
        }
    }

    public String getUniquePath(Element element1)
    {
        Element element2 = getParent();
        if (element2 == null)
        {
            return "/" + getXPathNameStep();
        }
        StringBuffer stringbuffer = new StringBuffer();
        if (element2 != element1)
        {
            stringbuffer.append(element2.getUniquePath(element1));
            stringbuffer.append("/");
        }
        stringbuffer.append(getXPathNameStep());
        element1 = element2.elements(getQName());
        if (element1.size() > 1)
        {
            int i = element1.indexOf(this);
            if (i >= 0)
            {
                stringbuffer.append("[");
                stringbuffer.append(Integer.toString(i + 1));
                stringbuffer.append("]");
            }
        }
        return stringbuffer.toString();
    }

    public String getXPathNameStep()
    {
        String s = getNamespaceURI();
        if (s == null || s.length() == 0)
        {
            return getName();
        }
        s = getNamespacePrefix();
        if (s == null || s.length() == 0)
        {
            return "*[name()='" + getName() + "']";
        } else
        {
            return getQualifiedName();
        }
    }

    public Node getXPathResult(int i)
    {
        Node node2 = node(i);
        Node node1 = node2;
        if (node2 != null)
        {
            node1 = node2;
            if (!node2.supportsParent())
            {
                node1 = node2.asXPathResult(this);
            }
        }
        return node1;
    }

    public boolean hasMixedContent()
    {
        List list = contentList();
        if (list != null && !list.isEmpty() && list.size() >= 2)
        {
            Class class1 = null;
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                Class class2 = iterator.next().getClass();
                if (class2 != class1)
                {
                    if (class1 != null)
                    {
                        return true;
                    }
                    class1 = class2;
                }
            }
        }
        return false;
    }

    public int indexOf(Node node1)
    {
        return contentList().indexOf(node1);
    }

    public boolean isRootElement()
    {
        Document document = getDocument();
        return document != null && document.getRootElement() == this;
    }

    public boolean isTextOnly()
    {
        Object obj = contentList();
        if (obj != null && !((List) (obj)).isEmpty()) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        obj = ((List) (obj)).iterator();
        Object obj1;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            obj1 = ((Iterator) (obj)).next();
        } while ((obj1 instanceof CharacterData) || (obj1 instanceof String));
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public Node node(int i)
    {
        if (i >= 0)
        {
            Object obj = contentList();
            if (i >= ((List) (obj)).size())
            {
                return null;
            }
            obj = ((List) (obj)).get(i);
            if (obj != null)
            {
                if (obj instanceof Node)
                {
                    return (Node)obj;
                } else
                {
                    return getDocumentFactory().createText(obj.toString());
                }
            }
        }
        return null;
    }

    public int nodeCount()
    {
        return contentList().size();
    }

    public Iterator nodeIterator()
    {
        return contentList().iterator();
    }

    public void normalize()
    {
        List list = contentList();
        Object obj = null;
        for (int i = 0; i < list.size();)
        {
            Object obj1 = (Node)list.get(i);
            if (obj1 instanceof Text)
            {
                obj1 = (Text)obj1;
                if (obj != null)
                {
                    ((Text) (obj)).appendText(((Text) (obj1)).getText());
                    remove(((Text) (obj1)));
                } else
                {
                    String s = ((Text) (obj1)).getText();
                    if (s == null || s.length() <= 0)
                    {
                        remove(((Text) (obj1)));
                    } else
                    {
                        obj = obj1;
                        i++;
                    }
                }
            } else
            {
                if (obj1 instanceof Element)
                {
                    ((Element)obj1).normalize();
                }
                obj = null;
                i++;
            }
        }

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
                backedlist.addLocal(obj);
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
                backedlist.addLocal(obj);
            }
        }

        return backedlist;
    }

    public boolean remove(Attribute attribute1)
    {
        List list = attributeList();
        boolean flag = list.remove(attribute1);
        if (flag)
        {
            childRemoved(attribute1);
        } else
        {
            attribute1 = attribute(attribute1.getQName());
            if (attribute1 != null)
            {
                list.remove(attribute1);
                return true;
            }
        }
        return flag;
    }

    public boolean remove(CDATA cdata)
    {
        return removeNode(cdata);
    }

    public boolean remove(Comment comment)
    {
        return removeNode(comment);
    }

    public boolean remove(Element element1)
    {
        return removeNode(element1);
    }

    public boolean remove(Entity entity)
    {
        return removeNode(entity);
    }

    public boolean remove(Namespace namespace)
    {
        return removeNode(namespace);
    }

    public boolean remove(Node node1)
    {
        switch (node1.getNodeType())
        {
        case 6: // '\006'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
        case 12: // '\f'
        default:
            return false;

        case 1: // '\001'
            return remove((Element)node1);

        case 2: // '\002'
            return remove((Attribute)node1);

        case 3: // '\003'
            return remove((Text)node1);

        case 4: // '\004'
            return remove((CDATA)node1);

        case 5: // '\005'
            return remove((Entity)node1);

        case 7: // '\007'
            return remove((ProcessingInstruction)node1);

        case 8: // '\b'
            return remove((Comment)node1);

        case 13: // '\r'
            return remove((Namespace)node1);
        }
    }

    public boolean remove(ProcessingInstruction processinginstruction)
    {
        return removeNode(processinginstruction);
    }

    public boolean remove(Text text)
    {
        return removeNode(text);
    }

    protected boolean removeNode(Node node1)
    {
        boolean flag = contentList().remove(node1);
        if (flag)
        {
            childRemoved(node1);
        }
        return flag;
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

    public void setAttributeValue(String s, String s1)
    {
        addAttribute(s, s1);
    }

    public void setAttributeValue(QName qname, String s)
    {
        addAttribute(qname, s);
    }

    public void setAttributes(Attributes attributes1, NamespaceStack namespacestack, boolean flag)
    {
        int j = attributes1.getLength();
        if (j > 0)
        {
            DocumentFactory documentfactory = getDocumentFactory();
            if (j == 1)
            {
                String s = attributes1.getQName(0);
                if (flag || !s.startsWith("xmlns"))
                {
                    String s1 = attributes1.getURI(0);
                    String s2 = attributes1.getLocalName(0);
                    attributes1 = attributes1.getValue(0);
                    add(documentfactory.createAttribute(this, namespacestack.getAttributeQName(s1, s2, s), attributes1));
                }
            } else
            {
                List list = attributeList(j);
                list.clear();
                int i = 0;
                while (i < j) 
                {
                    Object obj = attributes1.getQName(i);
                    if (flag || !((String) (obj)).startsWith("xmlns"))
                    {
                        String s3 = attributes1.getURI(i);
                        String s4 = attributes1.getLocalName(i);
                        String s5 = attributes1.getValue(i);
                        obj = documentfactory.createAttribute(this, namespacestack.getAttributeQName(s3, s4, ((String) (obj))), s5);
                        list.add(obj);
                        childAdded(((Node) (obj)));
                    }
                    i++;
                }
            }
        }
    }

    public void setData(Object obj)
    {
    }

    public void setName(String s)
    {
        setQName(getDocumentFactory().createQName(s));
    }

    public void setNamespace(Namespace namespace)
    {
        setQName(getDocumentFactory().createQName(getName(), namespace));
    }

    public void setText(String s)
    {
        Object obj = contentList();
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = ((List) (obj)).iterator();
_L4:
        if (((Iterator) (obj)).hasNext())
        {
            switch (((Node)((Iterator) (obj)).next()).getNodeType())
            {
            case 3: // '\003'
            case 4: // '\004'
            case 5: // '\005'
                ((Iterator) (obj)).remove();
                break;
            }
            continue; /* Loop/switch isn't completed */
        }
_L2:
        addText(s);
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String toString()
    {
        String s = getNamespaceURI();
        if (s != null && s.length() > 0)
        {
            return super.toString() + " [Element: <" + getQualifiedName() + " uri: " + s + " attributes: " + attributeList() + "/>]";
        } else
        {
            return super.toString() + " [Element: <" + getQualifiedName() + " attributes: " + attributeList() + "/>]";
        }
    }

    public void write(Writer writer)
        throws IOException
    {
        (new XMLWriter(writer, new OutputFormat())).write(this);
    }

    static 
    {
        EMPTY_LIST = Collections.EMPTY_LIST;
        EMPTY_ITERATOR = EMPTY_LIST.iterator();
    }
}
