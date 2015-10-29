// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import java.util.Comparator;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;

public class NodeComparator
    implements Comparator
{

    public NodeComparator()
    {
    }

    public int compare(Object obj, Object obj1)
    {
        byte byte0 = -1;
        int i;
        if (obj == obj1)
        {
            i = 0;
        } else
        {
            i = byte0;
            if (obj != null)
            {
                if (obj1 == null)
                {
                    return 1;
                }
                if (obj instanceof Node)
                {
                    if (obj1 instanceof Node)
                    {
                        return compare((Node)obj, (Node)obj1);
                    } else
                    {
                        return 1;
                    }
                }
                i = byte0;
                if (!(obj1 instanceof Node))
                {
                    if (obj instanceof Comparable)
                    {
                        return ((Comparable)obj).compareTo(obj1);
                    } else
                    {
                        return obj.getClass().getName().compareTo(obj1.getClass().getName());
                    }
                }
            }
        }
        return i;
    }

    public int compare(String s, String s1)
    {
        if (s == s1)
        {
            return 0;
        }
        if (s == null)
        {
            return -1;
        }
        if (s1 == null)
        {
            return 1;
        } else
        {
            return s.compareTo(s1);
        }
    }

    public int compare(Attribute attribute, Attribute attribute1)
    {
        int j = compare(attribute.getQName(), attribute1.getQName());
        int i = j;
        if (j == 0)
        {
            i = compare(attribute.getValue(), attribute1.getValue());
        }
        return i;
    }

    public int compare(CharacterData characterdata, CharacterData characterdata1)
    {
        return compare(characterdata.getText(), characterdata1.getText());
    }

    public int compare(Document document, Document document1)
    {
        int j = compare(document.getDocType(), document1.getDocType());
        int i = j;
        if (j == 0)
        {
            i = compareContent(document, document1);
        }
        return i;
    }

    public int compare(DocumentType documenttype, DocumentType documenttype1)
    {
        int i;
        if (documenttype == documenttype1)
        {
            i = 0;
        } else
        {
            if (documenttype == null)
            {
                return -1;
            }
            if (documenttype1 == null)
            {
                return 1;
            }
            int j = compare(documenttype.getPublicID(), documenttype1.getPublicID());
            i = j;
            if (j == 0)
            {
                int k = compare(documenttype.getSystemID(), documenttype1.getSystemID());
                i = k;
                if (k == 0)
                {
                    return compare(documenttype.getName(), documenttype1.getName());
                }
            }
        }
        return i;
    }

    public int compare(Element element, Element element1)
    {
        int j = compare(element.getQName(), element1.getQName());
        int i = j;
        if (j == 0)
        {
            int i1 = element.attributeCount();
            int k = i1 - element1.attributeCount();
            i = k;
            if (k == 0)
            {
                for (i = 0; i < i1; i++)
                {
                    Attribute attribute = element.attribute(i);
                    int l = compare(attribute, element1.attribute(attribute.getQName()));
                    if (l != 0)
                    {
                        return l;
                    }
                }

                i = compareContent(element, element1);
            }
        }
        return i;
    }

    public int compare(Entity entity, Entity entity1)
    {
        int j = compare(entity.getName(), entity1.getName());
        int i = j;
        if (j == 0)
        {
            i = compare(entity.getText(), entity1.getText());
        }
        return i;
    }

    public int compare(Namespace namespace, Namespace namespace1)
    {
        int j = compare(namespace.getURI(), namespace1.getURI());
        int i = j;
        if (j == 0)
        {
            i = compare(namespace.getPrefix(), namespace1.getPrefix());
        }
        return i;
    }

    public int compare(Node node, Node node1)
    {
        short word0 = node.getNodeType();
        int i = word0 - node1.getNodeType();
        if (i != 0)
        {
            return i;
        }
        switch (word0)
        {
        case 6: // '\006'
        case 11: // '\013'
        case 12: // '\f'
        default:
            throw new RuntimeException("Invalid node types. node1: " + node + " and node2: " + node1);

        case 1: // '\001'
            return compare((Element)node, (Element)node1);

        case 9: // '\t'
            return compare((Document)node, (Document)node1);

        case 2: // '\002'
            return compare((Attribute)node, (Attribute)node1);

        case 3: // '\003'
            return compare(((CharacterData) ((Text)node)), ((CharacterData) ((Text)node1)));

        case 4: // '\004'
            return compare(((CharacterData) ((CDATA)node)), ((CharacterData) ((CDATA)node1)));

        case 5: // '\005'
            return compare((Entity)node, (Entity)node1);

        case 7: // '\007'
            return compare((ProcessingInstruction)node, (ProcessingInstruction)node1);

        case 8: // '\b'
            return compare(((CharacterData) ((Comment)node)), ((CharacterData) ((Comment)node1)));

        case 10: // '\n'
            return compare((DocumentType)node, (DocumentType)node1);

        case 13: // '\r'
            return compare((Namespace)node, (Namespace)node1);
        }
    }

    public int compare(ProcessingInstruction processinginstruction, ProcessingInstruction processinginstruction1)
    {
        int j = compare(processinginstruction.getTarget(), processinginstruction1.getTarget());
        int i = j;
        if (j == 0)
        {
            i = compare(processinginstruction.getText(), processinginstruction1.getText());
        }
        return i;
    }

    public int compare(QName qname, QName qname1)
    {
        int j = compare(qname.getNamespaceURI(), qname1.getNamespaceURI());
        int i = j;
        if (j == 0)
        {
            i = compare(qname.getQualifiedName(), qname1.getQualifiedName());
        }
        return i;
    }

    public int compareContent(Branch branch, Branch branch1)
    {
        int i;
        int k;
        int l;
        l = branch.nodeCount();
        k = l - branch1.nodeCount();
        i = k;
        if (k != 0) goto _L2; else goto _L1
_L1:
        int j;
        j = 0;
        i = k;
_L6:
        if (j >= l) goto _L2; else goto _L3
_L3:
        i = compare(branch.node(j), branch1.node(j));
        if (i == 0) goto _L4; else goto _L2
_L2:
        return i;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
