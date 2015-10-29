// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.xpath;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.InvalidXPathException;
import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.XPath;
import org.dom4j.XPathException;
import org.jaxen.FunctionContext;
import org.jaxen.JaxenException;
import org.jaxen.NamespaceContext;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.VariableContext;
import org.jaxen.dom4j.Dom4jXPath;

// Referenced classes of package org.dom4j.xpath:
//            DefaultNamespaceContext

public class DefaultXPath
    implements XPath, NodeFilter, Serializable
{

    private NamespaceContext namespaceContext;
    private String text;
    private org.jaxen.XPath xpath;

    public DefaultXPath(String s)
        throws InvalidXPathException
    {
        text = s;
        xpath = parse(s);
    }

    protected static org.jaxen.XPath parse(String s)
    {
        Dom4jXPath dom4jxpath;
        try
        {
            dom4jxpath = new Dom4jXPath(s);
        }
        catch (JaxenException jaxenexception)
        {
            throw new InvalidXPathException(s, jaxenexception.getMessage());
        }
        catch (Throwable throwable)
        {
            throw new InvalidXPathException(s, throwable);
        }
        return dom4jxpath;
    }

    public boolean booleanValueOf(Object obj)
    {
        boolean flag;
        try
        {
            setNSContext(obj);
            flag = xpath.booleanValueOf(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleJaxenException(((JaxenException) (obj)));
            return false;
        }
        return flag;
    }

    public Object evaluate(Object obj)
    {
        List list;
        try
        {
            setNSContext(obj);
            list = xpath.selectNodes(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleJaxenException(((JaxenException) (obj)));
            return null;
        }
        obj = list;
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        obj = list;
        if (list.size() == 1)
        {
            obj = list.get(0);
        }
        return obj;
    }

    protected Object getCompareValue(Node node)
    {
        return valueOf(node);
    }

    public FunctionContext getFunctionContext()
    {
        return xpath.getFunctionContext();
    }

    public NamespaceContext getNamespaceContext()
    {
        return namespaceContext;
    }

    public String getText()
    {
        return text;
    }

    public VariableContext getVariableContext()
    {
        return xpath.getVariableContext();
    }

    protected void handleJaxenException(JaxenException jaxenexception)
        throws XPathException
    {
        throw new XPathException(text, jaxenexception);
    }

    public boolean matches(Node node)
    {
        List list;
        setNSContext(node);
        list = xpath.selectNodes(node);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        boolean flag;
        if (list.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        Object obj = list.get(0);
        if (obj instanceof Boolean)
        {
            return ((Boolean)obj).booleanValue();
        }
        flag = list.contains(node);
        return flag;
        node;
        handleJaxenException(node);
        return false;
    }

    public Number numberValueOf(Object obj)
    {
        try
        {
            setNSContext(obj);
            obj = xpath.numberValueOf(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleJaxenException(((JaxenException) (obj)));
            return null;
        }
        return ((Number) (obj));
    }

    protected void removeDuplicates(List list, Map map)
    {
        HashSet hashset = new HashSet();
        for (list = list.iterator(); list.hasNext();)
        {
            Object obj = map.get(list.next());
            if (hashset.contains(obj))
            {
                list.remove();
            } else
            {
                hashset.add(obj);
            }
        }

    }

    public List selectNodes(Object obj)
    {
        try
        {
            setNSContext(obj);
            obj = xpath.selectNodes(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleJaxenException(((JaxenException) (obj)));
            return Collections.EMPTY_LIST;
        }
        return ((List) (obj));
    }

    public List selectNodes(Object obj, XPath xpath1)
    {
        obj = selectNodes(obj);
        xpath1.sort(((List) (obj)));
        return ((List) (obj));
    }

    public List selectNodes(Object obj, XPath xpath1, boolean flag)
    {
        obj = selectNodes(obj);
        xpath1.sort(((List) (obj)), flag);
        return ((List) (obj));
    }

    public Object selectObject(Object obj)
    {
        return evaluate(obj);
    }

    public Node selectSingleNode(Object obj)
    {
        setNSContext(obj);
        obj = xpath.selectSingleNode(obj);
        if (obj instanceof Node)
        {
            return (Node)obj;
        }
        break MISSING_BLOCK_LABEL_78;
_L1:
        throw new XPathException("The result of the XPath expression is not a Node. It was: " + obj + " of type: " + obj.getClass().getName());
        obj;
        handleJaxenException(((JaxenException) (obj)));
        return null;
        if (obj == null)
        {
            return null;
        }
          goto _L1
    }

    public void setFunctionContext(FunctionContext functioncontext)
    {
        xpath.setFunctionContext(functioncontext);
    }

    protected void setNSContext(Object obj)
    {
        if (namespaceContext == null)
        {
            xpath.setNamespaceContext(DefaultNamespaceContext.create(obj));
        }
    }

    public void setNamespaceContext(NamespaceContext namespacecontext)
    {
        namespaceContext = namespacecontext;
        xpath.setNamespaceContext(namespacecontext);
    }

    public void setNamespaceURIs(Map map)
    {
        setNamespaceContext(new SimpleNamespaceContext(map));
    }

    public void setVariableContext(VariableContext variablecontext)
    {
        xpath.setVariableContext(variablecontext);
    }

    public void sort(List list)
    {
        sort(list, false);
    }

    protected void sort(List list, final Map sortValues)
    {
        Collections.sort(list, new _cls1());
    }

    public void sort(List list, boolean flag)
    {
        if (list != null && !list.isEmpty())
        {
            int j = list.size();
            HashMap hashmap = new HashMap(j);
            for (int i = 0; i < j; i++)
            {
                Object obj = list.get(i);
                if (obj instanceof Node)
                {
                    obj = (Node)obj;
                    hashmap.put(obj, getCompareValue(((Node) (obj))));
                }
            }

            sort(list, ((Map) (hashmap)));
            if (flag)
            {
                removeDuplicates(list, hashmap);
            }
        }
    }

    public String toString()
    {
        return "[XPath: " + xpath + "]";
    }

    public String valueOf(Object obj)
    {
        try
        {
            setNSContext(obj);
            obj = xpath.stringValueOf(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleJaxenException(((JaxenException) (obj)));
            return "";
        }
        return ((String) (obj));
    }

    private class _cls1
        implements Comparator
    {

        private final DefaultXPath this$0;
        private final Map val$sortValues;

        public int compare(Object obj, Object obj1)
        {
            obj = sortValues.get(obj);
            obj1 = sortValues.get(obj1);
            if (obj != obj1)
            {
                if (obj instanceof Comparable)
                {
                    return ((Comparable)obj).compareTo(obj1);
                }
                if (obj == null)
                {
                    return 1;
                }
                if (obj1 == null)
                {
                    return -1;
                }
                if (!obj.equals(obj1))
                {
                    return -1;
                }
            }
            return 0;
        }

        _cls1()
        {
            this$0 = DefaultXPath.this;
            sortValues = map;
        }
    }

}
