// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;

// Referenced classes of package org.dom4j.io:
//            ElementStack

class PruningElementStack extends ElementStack
{

    private ElementHandler elementHandler;
    private int matchingElementIndex;
    private String path[];

    public PruningElementStack(String as[], ElementHandler elementhandler)
    {
        path = as;
        elementHandler = elementhandler;
        checkPath();
    }

    public PruningElementStack(String as[], ElementHandler elementhandler, int i)
    {
        super(i);
        path = as;
        elementHandler = elementhandler;
        checkPath();
    }

    private void checkPath()
    {
        if (path.length < 2)
        {
            throw new RuntimeException("Invalid path of length: " + path.length + " it must be greater than 2");
        } else
        {
            matchingElementIndex = path.length - 2;
            return;
        }
    }

    protected void pathMatches(Element element, Element element1)
    {
        elementHandler.onEnd(this);
        element.remove(element1);
    }

    public Element popElement()
    {
        Element element1 = super.popElement();
        if (lastElementIndex != matchingElementIndex || lastElementIndex < 0 || !validElement(element1, lastElementIndex + 1)) goto _L2; else goto _L1
_L1:
        Element element;
        int i;
        element = null;
        i = 0;
_L8:
        if (i > lastElementIndex) goto _L4; else goto _L3
_L3:
        element = stack[i];
        if (validElement(element, i)) goto _L6; else goto _L5
_L5:
        element = null;
_L4:
        if (element != null)
        {
            pathMatches(element, element1);
        }
_L2:
        return element1;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected boolean validElement(Element element, int i)
    {
        String s = path[i];
        element = element.getName();
        if (s == element)
        {
            return true;
        }
        if (s != null && element != null)
        {
            return s.equals(element);
        } else
        {
            return false;
        }
    }
}
