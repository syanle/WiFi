// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


// Referenced classes of package org.dom4j:
//            ElementHandler, Element

public interface ElementPath
{

    public abstract void addHandler(String s, ElementHandler elementhandler);

    public abstract Element getCurrent();

    public abstract Element getElement(int i);

    public abstract String getPath();

    public abstract void removeHandler(String s);

    public abstract int size();
}
