// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.util.List;
import java.util.Map;
import org.jaxen.FunctionContext;
import org.jaxen.NamespaceContext;
import org.jaxen.VariableContext;

// Referenced classes of package org.dom4j:
//            NodeFilter, Node

public interface XPath
    extends NodeFilter
{

    public abstract boolean booleanValueOf(Object obj);

    public abstract Object evaluate(Object obj);

    public abstract FunctionContext getFunctionContext();

    public abstract NamespaceContext getNamespaceContext();

    public abstract String getText();

    public abstract VariableContext getVariableContext();

    public abstract boolean matches(Node node);

    public abstract Number numberValueOf(Object obj);

    public abstract List selectNodes(Object obj);

    public abstract List selectNodes(Object obj, XPath xpath);

    public abstract List selectNodes(Object obj, XPath xpath, boolean flag);

    public abstract Object selectObject(Object obj);

    public abstract Node selectSingleNode(Object obj);

    public abstract void setFunctionContext(FunctionContext functioncontext);

    public abstract void setNamespaceContext(NamespaceContext namespacecontext);

    public abstract void setNamespaceURIs(Map map);

    public abstract void setVariableContext(VariableContext variablecontext);

    public abstract void sort(List list);

    public abstract void sort(List list, boolean flag);

    public abstract String valueOf(Object obj);
}
