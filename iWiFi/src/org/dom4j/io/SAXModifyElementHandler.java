// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.util.List;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.io:
//            ElementModifier, ElementStack, SAXModifyException

class SAXModifyElementHandler
    implements ElementHandler
{

    private ElementModifier elemModifier;
    private Element modifiedElement;

    public SAXModifyElementHandler(ElementModifier elementmodifier)
    {
        elemModifier = elementmodifier;
    }

    protected Element getModifiedElement()
    {
        return modifiedElement;
    }

    public void onEnd(ElementPath elementpath)
    {
        Element element;
        Element element1;
        try
        {
            element = elementpath.getCurrent();
            element1 = element.getParent();
        }
        // Misplaced declaration of an exception variable
        catch (ElementPath elementpath)
        {
            throw new SAXModifyException(elementpath);
        }
        if (element1 == null) goto _L2; else goto _L1
_L1:
        Element element3 = (Element)element.clone();
        modifiedElement = elemModifier.modifyElement(element3);
        if (modifiedElement != null)
        {
            modifiedElement.setParent(element.getParent());
            modifiedElement.setDocument(element.getDocument());
            int i = element1.indexOf(element);
            element1.content().set(i, modifiedElement);
        }
        element.detach();
_L4:
        if (elementpath instanceof ElementStack)
        {
            elementpath = (ElementStack)elementpath;
            elementpath.popElement();
            elementpath.pushElement(modifiedElement);
            return;
        }
        break MISSING_BLOCK_LABEL_231;
_L2:
        if (element.isRootElement())
        {
            Element element2 = (Element)element.clone();
            modifiedElement = elemModifier.modifyElement(element2);
            if (modifiedElement != null)
            {
                modifiedElement.setDocument(element.getDocument());
                element.getDocument().setRootElement(modifiedElement);
            }
            element.detach();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onStart(ElementPath elementpath)
    {
        modifiedElement = elementpath.getCurrent();
    }
}
