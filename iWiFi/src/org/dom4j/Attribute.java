// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


// Referenced classes of package org.dom4j:
//            Node, Namespace, QName

public interface Attribute
    extends Node
{

    public abstract Object getData();

    public abstract Namespace getNamespace();

    public abstract String getNamespacePrefix();

    public abstract String getNamespaceURI();

    public abstract QName getQName();

    public abstract String getQualifiedName();

    public abstract String getValue();

    public abstract void setData(Object obj);

    public abstract void setNamespace(Namespace namespace);

    public abstract void setValue(String s);
}
