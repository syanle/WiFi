// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.util.List;

// Referenced classes of package org.dom4j:
//            Node

public interface DocumentType
    extends Node
{

    public abstract String getElementName();

    public abstract List getExternalDeclarations();

    public abstract List getInternalDeclarations();

    public abstract String getPublicID();

    public abstract String getSystemID();

    public abstract void setElementName(String s);

    public abstract void setExternalDeclarations(List list);

    public abstract void setInternalDeclarations(List list);

    public abstract void setPublicID(String s);

    public abstract void setSystemID(String s);
}
