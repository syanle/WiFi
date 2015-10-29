// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

// Referenced classes of package org.dom4j.io:
//            DispatchHandler

class ElementStack
    implements ElementPath
{

    private DispatchHandler handler;
    protected int lastElementIndex;
    protected Element stack[];

    public ElementStack()
    {
        this(50);
    }

    public ElementStack(int i)
    {
        lastElementIndex = -1;
        handler = null;
        stack = new Element[i];
    }

    private String getHandlerPath(String s)
    {
        if (handler == null)
        {
            setDispatchHandler(new DispatchHandler());
        }
        if (s.startsWith("/"))
        {
            return s;
        }
        if (getPath().equals("/"))
        {
            return getPath() + s;
        } else
        {
            return getPath() + "/" + s;
        }
    }

    public void addHandler(String s, ElementHandler elementhandler)
    {
        handler.addHandler(getHandlerPath(s), elementhandler);
    }

    public void clear()
    {
        lastElementIndex = -1;
    }

    public boolean containsHandler(String s)
    {
        return handler.containsHandler(s);
    }

    public Element getCurrent()
    {
        return peekElement();
    }

    public DispatchHandler getDispatchHandler()
    {
        return handler;
    }

    public Element getElement(int i)
    {
        Element element;
        try
        {
            element = stack[i];
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
        {
            return null;
        }
        return element;
    }

    public String getPath()
    {
        if (handler == null)
        {
            setDispatchHandler(new DispatchHandler());
        }
        return handler.getPath();
    }

    public Element peekElement()
    {
        if (lastElementIndex < 0)
        {
            return null;
        } else
        {
            return stack[lastElementIndex];
        }
    }

    public Element popElement()
    {
        if (lastElementIndex < 0)
        {
            return null;
        } else
        {
            Element aelement[] = stack;
            int i = lastElementIndex;
            lastElementIndex = i - 1;
            return aelement[i];
        }
    }

    public void pushElement(Element element)
    {
        int i = stack.length;
        int j = lastElementIndex + 1;
        lastElementIndex = j;
        if (j >= i)
        {
            reallocate(i * 2);
        }
        stack[lastElementIndex] = element;
    }

    protected void reallocate(int i)
    {
        Element aelement[] = stack;
        stack = new Element[i];
        System.arraycopy(aelement, 0, stack, 0, aelement.length);
    }

    public void removeHandler(String s)
    {
        handler.removeHandler(getHandlerPath(s));
    }

    public void setDispatchHandler(DispatchHandler dispatchhandler)
    {
        handler = dispatchhandler;
    }

    public int size()
    {
        return lastElementIndex + 1;
    }
}
