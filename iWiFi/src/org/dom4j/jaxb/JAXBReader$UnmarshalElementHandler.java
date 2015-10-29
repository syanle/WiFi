// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

// Referenced classes of package org.dom4j.jaxb:
//            JAXBReader, JAXBObjectHandler, JAXBRuntimeException

private class handler
    implements ElementHandler
{

    private JAXBObjectHandler handler;
    private JAXBReader jaxbReader;
    private final JAXBReader this$0;

    public void onEnd(ElementPath elementpath)
    {
        try
        {
            elementpath = elementpath.getCurrent();
            javax.xml.bind.Element element = jaxbReader.unmarshal(elementpath);
            if (jaxbReader.isPruneElements())
            {
                elementpath.detach();
            }
            handler.handleObject(element);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ElementPath elementpath)
        {
            throw new JAXBRuntimeException(elementpath);
        }
    }

    public void onStart(ElementPath elementpath)
    {
    }

    public (JAXBReader jaxbreader1, JAXBObjectHandler jaxbobjecthandler)
    {
        this$0 = JAXBReader.this;
        jaxbReader = jaxbreader1;
        handler = jaxbobjecthandler;
    }
}
