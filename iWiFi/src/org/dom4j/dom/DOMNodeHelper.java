// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import java.io.PrintStream;
import java.util.List;
import org.dom4j.Branch;
import org.dom4j.CharacterData;
import org.dom4j.Element;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class DOMNodeHelper
{
    public static class EmptyNodeList
        implements NodeList
    {

        public int getLength()
        {
            return 0;
        }

        public Node item(int i)
        {
            return null;
        }

        public EmptyNodeList()
        {
        }
    }


    public static final NodeList EMPTY_NODE_LIST = new EmptyNodeList();

    protected DOMNodeHelper()
    {
    }

    public static Node appendChild(org.dom4j.Node node, Node node1)
        throws DOMException
    {
        if (node instanceof Branch)
        {
            node = (Branch)node;
            Node node2 = node1.getParentNode();
            if (node2 != null)
            {
                node2.removeChild(node1);
            }
            node.add((org.dom4j.Node)node1);
            return node1;
        } else
        {
            throw new DOMException((short)3, "Children not allowed for this node: " + node);
        }
    }

    public static void appendData(CharacterData characterdata, String s)
        throws DOMException
    {
        if (characterdata.isReadOnly())
        {
            throw new DOMException((short)7, "CharacterData node is read only: " + characterdata);
        }
        String s1 = characterdata.getText();
        if (s1 == null)
        {
            characterdata.setText(s1);
            return;
        } else
        {
            characterdata.setText(s1 + s);
            return;
        }
    }

    public static void appendElementsByTagName(List list, Branch branch, String s)
    {
        boolean flag = "*".equals(s);
        int i = 0;
        for (int j = branch.nodeCount(); i < j; i++)
        {
            Object obj = branch.node(i);
            if (!(obj instanceof Element))
            {
                continue;
            }
            obj = (Element)obj;
            if (flag || s.equals(((Element) (obj)).getName()))
            {
                list.add(obj);
            }
            appendElementsByTagName(list, ((Branch) (obj)), s);
        }

    }

    public static void appendElementsByTagNameNS(List list, Branch branch, String s, String s1)
    {
        boolean flag = "*".equals(s);
        boolean flag1 = "*".equals(s1);
        int i = 0;
        for (int j = branch.nodeCount(); i < j; i++)
        {
            Object obj = branch.node(i);
            if (!(obj instanceof Element))
            {
                continue;
            }
            obj = (Element)obj;
            if ((flag || (s == null || s.length() == 0) && (((Element) (obj)).getNamespaceURI() == null || ((Element) (obj)).getNamespaceURI().length() == 0) || s != null && s.equals(((Element) (obj)).getNamespaceURI())) && (flag1 || s1.equals(((Element) (obj)).getName())))
            {
                list.add(obj);
            }
            appendElementsByTagNameNS(list, ((Branch) (obj)), s, s1);
        }

    }

    public static Attr asDOMAttr(org.dom4j.Node node)
    {
        if (node == null)
        {
            return null;
        }
        if (node instanceof Attr)
        {
            return (Attr)node;
        } else
        {
            notSupported();
            return null;
        }
    }

    public static Document asDOMDocument(org.dom4j.Document document)
    {
        if (document == null)
        {
            return null;
        }
        if (document instanceof Document)
        {
            return (Document)document;
        } else
        {
            notSupported();
            return null;
        }
    }

    public static DocumentType asDOMDocumentType(org.dom4j.DocumentType documenttype)
    {
        if (documenttype == null)
        {
            return null;
        }
        if (documenttype instanceof DocumentType)
        {
            return (DocumentType)documenttype;
        } else
        {
            notSupported();
            return null;
        }
    }

    public static org.w3c.dom.Element asDOMElement(org.dom4j.Node node)
    {
        if (node == null)
        {
            return null;
        }
        if (node instanceof org.w3c.dom.Element)
        {
            return (org.w3c.dom.Element)node;
        } else
        {
            notSupported();
            return null;
        }
    }

    public static Node asDOMNode(org.dom4j.Node node)
    {
        if (node == null)
        {
            return null;
        }
        if (node instanceof Node)
        {
            return (Node)node;
        } else
        {
            System.out.println("Cannot convert: " + node + " into a W3C DOM Node");
            notSupported();
            return null;
        }
    }

    public static Text asDOMText(CharacterData characterdata)
    {
        if (characterdata == null)
        {
            return null;
        }
        if (characterdata instanceof Text)
        {
            return (Text)characterdata;
        } else
        {
            notSupported();
            return null;
        }
    }

    public static Node cloneNode(org.dom4j.Node node, boolean flag)
    {
        return asDOMNode((org.dom4j.Node)node.clone());
    }

    public static NodeList createNodeList(final List list)
    {
        return new _cls1();
    }

    public static void deleteData(CharacterData characterdata, int i, int j)
        throws DOMException
    {
        if (characterdata.isReadOnly())
        {
            throw new DOMException((short)7, "CharacterData node is read only: " + characterdata);
        }
        if (j < 0)
        {
            throw new DOMException((short)1, "Illegal value for count: " + j);
        }
        Object obj = characterdata.getText();
        if (obj != null)
        {
            int k = ((String) (obj)).length();
            if (i < 0 || i >= k)
            {
                throw new DOMException((short)1, "No text at offset: " + i);
            }
            obj = new StringBuffer(((String) (obj)));
            ((StringBuffer) (obj)).delete(i, i + j);
            characterdata.setText(((StringBuffer) (obj)).toString());
        }
    }

    public static NamedNodeMap getAttributes(org.dom4j.Node node)
    {
        return null;
    }

    public static NodeList getChildNodes(org.dom4j.Node node)
    {
        return EMPTY_NODE_LIST;
    }

    public static String getData(CharacterData characterdata)
        throws DOMException
    {
        return characterdata.getText();
    }

    public static Node getFirstChild(org.dom4j.Node node)
    {
        return null;
    }

    public static Node getLastChild(org.dom4j.Node node)
    {
        return null;
    }

    public static int getLength(CharacterData characterdata)
    {
        characterdata = characterdata.getText();
        if (characterdata != null)
        {
            return characterdata.length();
        } else
        {
            return 0;
        }
    }

    public static String getLocalName(org.dom4j.Node node)
    {
        return null;
    }

    public static String getNamespaceURI(org.dom4j.Node node)
    {
        return null;
    }

    public static Node getNextSibling(org.dom4j.Node node)
    {
        Element element = node.getParent();
        if (element != null)
        {
            int i = element.indexOf(node);
            if (i >= 0)
            {
                i++;
                if (i < element.nodeCount())
                {
                    return asDOMNode(element.node(i));
                }
            }
        }
        return null;
    }

    public static String getNodeValue(org.dom4j.Node node)
        throws DOMException
    {
        return node.getText();
    }

    public static Document getOwnerDocument(org.dom4j.Node node)
    {
        return asDOMDocument(node.getDocument());
    }

    public static Node getParentNode(org.dom4j.Node node)
    {
        return asDOMNode(node.getParent());
    }

    public static String getPrefix(org.dom4j.Node node)
    {
        return null;
    }

    public static Node getPreviousSibling(org.dom4j.Node node)
    {
        Element element = node.getParent();
        if (element != null)
        {
            int i = element.indexOf(node);
            if (i > 0)
            {
                return asDOMNode(element.node(i - 1));
            }
        }
        return null;
    }

    public static boolean hasAttributes(org.dom4j.Node node)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (node != null)
        {
            flag = flag1;
            if (node instanceof Element)
            {
                flag = flag1;
                if (((Element)node).attributeCount() > 0)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public static boolean hasChildNodes(org.dom4j.Node node)
    {
        return false;
    }

    public static Node insertBefore(org.dom4j.Node node, Node node1, Node node2)
        throws DOMException
    {
        if (node instanceof Branch)
        {
            node = (Branch)node;
            List list = node.content();
            int i = list.indexOf(node2);
            if (i < 0)
            {
                node.add((org.dom4j.Node)node1);
                return node1;
            } else
            {
                list.add(i, node1);
                return node1;
            }
        } else
        {
            throw new DOMException((short)3, "Children not allowed for this node: " + node);
        }
    }

    public static void insertData(CharacterData characterdata, int i, String s)
        throws DOMException
    {
        if (characterdata.isReadOnly())
        {
            throw new DOMException((short)7, "CharacterData node is read only: " + characterdata);
        }
        Object obj = characterdata.getText();
        if (obj == null)
        {
            characterdata.setText(s);
            return;
        }
        int j = ((String) (obj)).length();
        if (i < 0 || i > j)
        {
            throw new DOMException((short)1, "No text at offset: " + i);
        } else
        {
            obj = new StringBuffer(((String) (obj)));
            ((StringBuffer) (obj)).insert(i, s);
            characterdata.setText(((StringBuffer) (obj)).toString());
            return;
        }
    }

    public static boolean isSupported(org.dom4j.Node node, String s, String s1)
    {
        return false;
    }

    public static void normalize(org.dom4j.Node node)
    {
        notSupported();
    }

    public static void notSupported()
    {
        throw new DOMException((short)9, "Not supported yet");
    }

    public static Node removeChild(org.dom4j.Node node, Node node1)
        throws DOMException
    {
        if (node instanceof Branch)
        {
            ((Branch)node).remove((org.dom4j.Node)node1);
            return node1;
        } else
        {
            throw new DOMException((short)3, "Children not allowed for this node: " + node);
        }
    }

    public static Node replaceChild(org.dom4j.Node node, Node node1, Node node2)
        throws DOMException
    {
        if (node instanceof Branch)
        {
            List list = ((Branch)node).content();
            int i = list.indexOf(node2);
            if (i < 0)
            {
                throw new DOMException((short)8, "Tried to replace a non existing child for node: " + node);
            } else
            {
                list.set(i, node1);
                return node2;
            }
        } else
        {
            throw new DOMException((short)3, "Children not allowed for this node: " + node);
        }
    }

    public static void replaceData(CharacterData characterdata, int i, int j, String s)
        throws DOMException
    {
        if (characterdata.isReadOnly())
        {
            throw new DOMException((short)7, "CharacterData node is read only: " + characterdata);
        }
        if (j < 0)
        {
            throw new DOMException((short)1, "Illegal value for count: " + j);
        }
        Object obj = characterdata.getText();
        if (obj != null)
        {
            int k = ((String) (obj)).length();
            if (i < 0 || i >= k)
            {
                throw new DOMException((short)1, "No text at offset: " + i);
            }
            obj = new StringBuffer(((String) (obj)));
            ((StringBuffer) (obj)).replace(i, i + j, s);
            characterdata.setText(((StringBuffer) (obj)).toString());
        }
    }

    public static void setData(CharacterData characterdata, String s)
        throws DOMException
    {
        characterdata.setText(s);
    }

    public static void setNodeValue(org.dom4j.Node node, String s)
        throws DOMException
    {
        node.setText(s);
    }

    public static void setPrefix(org.dom4j.Node node, String s)
        throws DOMException
    {
        notSupported();
    }

    public static String substringData(CharacterData characterdata, int i, int j)
        throws DOMException
    {
        if (j < 0)
        {
            throw new DOMException((short)1, "Illegal value for count: " + j);
        }
        characterdata = characterdata.getText();
        int k;
        if (characterdata != null)
        {
            k = characterdata.length();
        } else
        {
            k = 0;
        }
        if (i < 0 || i >= k)
        {
            throw new DOMException((short)1, "No text at offset: " + i);
        }
        if (i + j > k)
        {
            return characterdata.substring(i);
        } else
        {
            return characterdata.substring(i, i + j);
        }
    }

    public static boolean supports(org.dom4j.Node node, String s, String s1)
    {
        return false;
    }


    private class _cls1
        implements NodeList
    {

        private final List val$list;

        public int getLength()
        {
            return list.size();
        }

        public Node item(int i)
        {
            if (i >= getLength())
            {
                return null;
            } else
            {
                return DOMNodeHelper.asDOMNode((org.dom4j.Node)list.get(i));
            }
        }

        _cls1()
        {
            list = list1;
        }
    }

}
