// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import com.hp.hpl.sparta.xpath.AllElementTest;
import com.hp.hpl.sparta.xpath.AttrCompareExpr;
import com.hp.hpl.sparta.xpath.AttrEqualsExpr;
import com.hp.hpl.sparta.xpath.AttrExistsExpr;
import com.hp.hpl.sparta.xpath.AttrExpr;
import com.hp.hpl.sparta.xpath.AttrGreaterExpr;
import com.hp.hpl.sparta.xpath.AttrLessExpr;
import com.hp.hpl.sparta.xpath.AttrNotEqualsExpr;
import com.hp.hpl.sparta.xpath.AttrRelationalExpr;
import com.hp.hpl.sparta.xpath.AttrTest;
import com.hp.hpl.sparta.xpath.BooleanExpr;
import com.hp.hpl.sparta.xpath.ElementTest;
import com.hp.hpl.sparta.xpath.NodeTest;
import com.hp.hpl.sparta.xpath.ParentNodeTest;
import com.hp.hpl.sparta.xpath.PositionEqualsExpr;
import com.hp.hpl.sparta.xpath.Step;
import com.hp.hpl.sparta.xpath.TextCompareExpr;
import com.hp.hpl.sparta.xpath.TextEqualsExpr;
import com.hp.hpl.sparta.xpath.TextExistsExpr;
import com.hp.hpl.sparta.xpath.TextNotEqualsExpr;
import com.hp.hpl.sparta.xpath.TextTest;
import com.hp.hpl.sparta.xpath.ThisNodeTest;
import com.hp.hpl.sparta.xpath.TrueExpr;
import com.hp.hpl.sparta.xpath.Visitor;
import com.hp.hpl.sparta.xpath.XPath;
import com.hp.hpl.sparta.xpath.XPathException;
import java.util.Enumeration;
import java.util.Vector;

// Referenced classes of package com.hp.hpl.sparta:
//            NodeListWithPosition, Document, Element, Node, 
//            Text

class XPathVisitor
    implements Visitor
{
    private static class BooleanStack
    {

        private Item top_;

        Boolean pop()
        {
            Boolean boolean1 = top_.bool;
            top_ = top_.prev;
            return boolean1;
        }

        void push(Boolean boolean1)
        {
            top_ = new Item(boolean1, top_);
        }

        private BooleanStack()
        {
            top_ = null;
        }

    }

    private static class BooleanStack.Item
    {

        final Boolean bool;
        final BooleanStack.Item prev;

        BooleanStack.Item(Boolean boolean1, BooleanStack.Item item)
        {
            bool = boolean1;
            prev = item;
        }
    }


    private static final Boolean FALSE = new Boolean(false);
    private static final Boolean TRUE = new Boolean(true);
    private Node contextNode_;
    private final BooleanStack exprStack_;
    private boolean multiLevel_;
    private Object node_;
    private Vector nodelistFiltered_;
    private final NodeListWithPosition nodelistRaw_;
    private Enumeration nodesetIterator_;
    private XPath xpath_;

    public XPathVisitor(Document document, XPath xpath)
        throws XPathException
    {
        this(xpath, ((Node) (document)));
    }

    public XPathVisitor(Element element, XPath xpath)
        throws XPathException
    {
        this(xpath, ((Node) (element)));
        if (xpath.isAbsolute())
        {
            throw new XPathException(xpath, "Cannot use element as context node for absolute xpath");
        } else
        {
            return;
        }
    }

    private XPathVisitor(XPath xpath, Node node)
        throws XPathException
    {
        nodelistRaw_ = new NodeListWithPosition();
        nodelistFiltered_ = new Vector();
        nodesetIterator_ = null;
        node_ = null;
        exprStack_ = new BooleanStack();
        xpath_ = xpath;
        contextNode_ = node;
        nodelistFiltered_ = new Vector(1);
        nodelistFiltered_.addElement(contextNode_);
        xpath = xpath.getSteps();
        do
        {
            if (!xpath.hasMoreElements())
            {
                return;
            }
            node = (Step)xpath.nextElement();
            multiLevel_ = node.isMultiLevel();
            nodesetIterator_ = null;
            node.getNodeTest().accept(this);
            nodesetIterator_ = nodelistRaw_.iterator();
            nodelistFiltered_.removeAllElements();
            node = node.getPredicate();
            while (nodesetIterator_.hasMoreElements()) 
            {
                node_ = nodesetIterator_.nextElement();
                node.accept(this);
                if (exprStack_.pop().booleanValue())
                {
                    nodelistFiltered_.addElement(node_);
                }
            }
        } while (true);
    }

    private void accumulateElements(Document document)
    {
        document = document.getDocumentElement();
        nodelistRaw_.add(document, 1);
        if (multiLevel_)
        {
            accumulateElements(((Element) (document)));
        }
    }

    private void accumulateElements(Element element)
    {
        int i = 0;
        element = element.getFirstChild();
        do
        {
            if (element == null)
            {
                return;
            }
            int j = i;
            if (element instanceof Element)
            {
                NodeListWithPosition nodelistwithposition = nodelistRaw_;
                j = i + 1;
                nodelistwithposition.add(element, j);
                if (multiLevel_)
                {
                    accumulateElements((Element)element);
                }
            }
            element = element.getNextSibling();
            i = j;
        } while (true);
    }

    private void accumulateMatchingElements(Document document, String s)
    {
        document = document.getDocumentElement();
        if (document != null)
        {
            if (document.getTagName() == s)
            {
                nodelistRaw_.add(document, 1);
            }
            if (multiLevel_)
            {
                accumulateMatchingElements(((Element) (document)), s);
                return;
            }
        }
    }

    private void accumulateMatchingElements(Element element, String s)
    {
        int i = 0;
        element = element.getFirstChild();
        do
        {
            if (element == null)
            {
                return;
            }
            int k = i;
            if (element instanceof Element)
            {
                Element element1 = (Element)element;
                int j = i;
                if (element1.getTagName() == s)
                {
                    NodeListWithPosition nodelistwithposition = nodelistRaw_;
                    j = i + 1;
                    nodelistwithposition.add(element1, j);
                }
                k = j;
                if (multiLevel_)
                {
                    accumulateMatchingElements(element1, s);
                    k = j;
                }
            }
            element = element.getNextSibling();
            i = k;
        } while (true);
    }

    public Element getFirstResultElement()
    {
        if (nodelistFiltered_.size() == 0)
        {
            return null;
        } else
        {
            return (Element)nodelistFiltered_.elementAt(0);
        }
    }

    public String getFirstResultString()
    {
        if (nodelistFiltered_.size() == 0)
        {
            return null;
        } else
        {
            return nodelistFiltered_.elementAt(0).toString();
        }
    }

    public Enumeration getResultEnumeration()
    {
        return nodelistFiltered_.elements();
    }

    public void visit(AllElementTest allelementtest)
    {
        allelementtest = nodelistFiltered_;
        nodelistRaw_.removeAllElements();
        allelementtest = allelementtest.elements();
        do
        {
            if (!allelementtest.hasMoreElements())
            {
                return;
            }
            Object obj = allelementtest.nextElement();
            if (obj instanceof Element)
            {
                accumulateElements((Element)obj);
            } else
            if (obj instanceof Document)
            {
                accumulateElements((Document)obj);
            }
        } while (true);
    }

    public void visit(AttrEqualsExpr attrequalsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        Object obj = ((Element)node_).getAttribute(attrequalsexpr.getAttrName());
        boolean flag = attrequalsexpr.getAttrValue().equals(obj);
        obj = exprStack_;
        if (flag)
        {
            attrequalsexpr = TRUE;
        } else
        {
            attrequalsexpr = FALSE;
        }
        ((BooleanStack) (obj)).push(attrequalsexpr);
    }

    public void visit(AttrExistsExpr attrexistsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        attrexistsexpr = ((Element)node_).getAttribute(attrexistsexpr.getAttrName());
        BooleanStack booleanstack;
        boolean flag;
        if (attrexistsexpr != null && attrexistsexpr.length() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        booleanstack = exprStack_;
        if (flag)
        {
            attrexistsexpr = TRUE;
        } else
        {
            attrexistsexpr = FALSE;
        }
        booleanstack.push(attrexistsexpr);
    }

    public void visit(AttrGreaterExpr attrgreaterexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        BooleanStack booleanstack;
        boolean flag;
        if ((double)Long.parseLong(((Element)node_).getAttribute(attrgreaterexpr.getAttrName())) > attrgreaterexpr.getAttrValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        booleanstack = exprStack_;
        if (flag)
        {
            attrgreaterexpr = TRUE;
        } else
        {
            attrgreaterexpr = FALSE;
        }
        booleanstack.push(attrgreaterexpr);
    }

    public void visit(AttrLessExpr attrlessexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        BooleanStack booleanstack;
        boolean flag;
        if ((double)Long.parseLong(((Element)node_).getAttribute(attrlessexpr.getAttrName())) < attrlessexpr.getAttrValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        booleanstack = exprStack_;
        if (flag)
        {
            attrlessexpr = TRUE;
        } else
        {
            attrlessexpr = FALSE;
        }
        booleanstack.push(attrlessexpr);
    }

    public void visit(AttrNotEqualsExpr attrnotequalsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        Object obj = ((Element)node_).getAttribute(attrnotequalsexpr.getAttrName());
        boolean flag;
        if (!attrnotequalsexpr.getAttrValue().equals(obj))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = exprStack_;
        if (flag)
        {
            attrnotequalsexpr = TRUE;
        } else
        {
            attrnotequalsexpr = FALSE;
        }
        ((BooleanStack) (obj)).push(attrnotequalsexpr);
    }

    public void visit(AttrTest attrtest)
    {
        Object obj = nodelistFiltered_;
        nodelistRaw_.removeAllElements();
        obj = ((Vector) (obj)).elements();
        do
        {
            Object obj1;
            do
            {
                do
                {
                    if (!((Enumeration) (obj)).hasMoreElements())
                    {
                        return;
                    }
                    obj1 = (Node)((Enumeration) (obj)).nextElement();
                } while (!(obj1 instanceof Element));
                obj1 = ((Element)obj1).getAttribute(attrtest.getAttrName());
            } while (obj1 == null);
            nodelistRaw_.add(((String) (obj1)));
        } while (true);
    }

    public void visit(ElementTest elementtest)
    {
        Vector vector;
        int i;
        int j;
        elementtest = elementtest.getTagName();
        vector = nodelistFiltered_;
        j = vector.size();
        nodelistRaw_.removeAllElements();
        i = 0;
_L2:
        Object obj;
        if (i >= j)
        {
            return;
        }
        obj = vector.elementAt(i);
        if (!(obj instanceof Element))
        {
            break; /* Loop/switch isn't completed */
        }
        accumulateMatchingElements((Element)obj, elementtest);
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (!(obj instanceof Document)) goto _L4; else goto _L3
_L3:
        accumulateMatchingElements((Document)obj, elementtest);
          goto _L4
    }

    public void visit(ParentNodeTest parentnodetest)
        throws XPathException
    {
        nodelistRaw_.removeAllElements();
        parentnodetest = contextNode_.getParentNode();
        if (parentnodetest == null)
        {
            throw new XPathException(xpath_, "Illegal attempt to apply \"..\" to node with no parent.");
        } else
        {
            nodelistRaw_.add(parentnodetest, 1);
            return;
        }
    }

    public void visit(PositionEqualsExpr positionequalsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test position of document");
        }
        Object obj = (Element)node_;
        boolean flag;
        if (nodelistRaw_.position(((Node) (obj))) == positionequalsexpr.getPosition())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = exprStack_;
        if (flag)
        {
            positionequalsexpr = TRUE;
        } else
        {
            positionequalsexpr = FALSE;
        }
        ((BooleanStack) (obj)).push(positionequalsexpr);
    }

    public void visit(TextEqualsExpr textequalsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        Node node = ((Element)node_).getFirstChild();
        do
        {
            if (node == null)
            {
                exprStack_.push(FALSE);
                return;
            }
            if ((node instanceof Text) && ((Text)node).getData().equals(textequalsexpr.getValue()))
            {
                exprStack_.push(TRUE);
                return;
            }
            node = node.getNextSibling();
        } while (true);
    }

    public void visit(TextExistsExpr textexistsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        textexistsexpr = ((Element)node_).getFirstChild();
        do
        {
            if (textexistsexpr == null)
            {
                exprStack_.push(FALSE);
                return;
            }
            if (textexistsexpr instanceof Text)
            {
                exprStack_.push(TRUE);
                return;
            }
            textexistsexpr = textexistsexpr.getNextSibling();
        } while (true);
    }

    public void visit(TextNotEqualsExpr textnotequalsexpr)
        throws XPathException
    {
        if (!(node_ instanceof Element))
        {
            throw new XPathException(xpath_, "Cannot test attribute of document");
        }
        Node node = ((Element)node_).getFirstChild();
        do
        {
            if (node == null)
            {
                exprStack_.push(FALSE);
                return;
            }
            if ((node instanceof Text) && !((Text)node).getData().equals(textnotequalsexpr.getValue()))
            {
                exprStack_.push(TRUE);
                return;
            }
            node = node.getNextSibling();
        } while (true);
    }

    public void visit(TextTest texttest)
    {
        texttest = nodelistFiltered_;
        nodelistRaw_.removeAllElements();
        Enumeration enumeration = texttest.elements();
        do
        {
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    return;
                }
                texttest = ((TextTest) (enumeration.nextElement()));
            } while (!(texttest instanceof Element));
            texttest = ((Element)texttest).getFirstChild();
            while (texttest != null) 
            {
                if (texttest instanceof Text)
                {
                    nodelistRaw_.add(((Text)texttest).getData());
                }
                texttest = texttest.getNextSibling();
            }
        } while (true);
    }

    public void visit(ThisNodeTest thisnodetest)
    {
        nodelistRaw_.removeAllElements();
        nodelistRaw_.add(contextNode_, 1);
    }

    public void visit(TrueExpr trueexpr)
    {
        exprStack_.push(TRUE);
    }

}
