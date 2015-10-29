// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

// Referenced classes of package org.dom4j.jaxb:
//            JAXBReader

private class this._cls0
    implements ElementHandler
{

    private final JAXBReader this$0;

    public void onEnd(ElementPath elementpath)
    {
        elementpath.getCurrent().detach();
    }

    public void onStart(ElementPath elementpath)
    {
    }

    public ()
    {
        this$0 = JAXBReader.this;
    }
}
