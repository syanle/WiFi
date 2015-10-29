// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


// Referenced classes of package org.dom4j:
//            ElementPath

public interface ElementHandler
{

    public abstract void onEnd(ElementPath elementpath);

    public abstract void onStart(ElementPath elementpath);
}
