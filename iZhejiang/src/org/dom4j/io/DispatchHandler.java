// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.util.ArrayList;
import java.util.HashMap;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

class DispatchHandler
    implements ElementHandler
{

    private boolean atRoot;
    private ElementHandler defaultHandler;
    private ArrayList handlerStack;
    private HashMap handlers;
    private String path;
    private ArrayList pathStack;

    public DispatchHandler()
    {
        atRoot = true;
        path = "/";
        pathStack = new ArrayList();
        handlerStack = new ArrayList();
        handlers = new HashMap();
    }

    public void addHandler(String s, ElementHandler elementhandler)
    {
        handlers.put(s, elementhandler);
    }

    public boolean containsHandler(String s)
    {
        return handlers.containsKey(s);
    }

    public int getActiveHandlerCount()
    {
        return handlerStack.size();
    }

    public ElementHandler getHandler(String s)
    {
        return (ElementHandler)handlers.get(s);
    }

    public String getPath()
    {
        return path;
    }

    public void onEnd(ElementPath elementpath)
    {
        if (handlers == null || !handlers.containsKey(path)) goto _L2; else goto _L1
_L1:
        ElementHandler elementhandler = (ElementHandler)handlers.get(path);
        handlerStack.remove(handlerStack.size() - 1);
        elementhandler.onEnd(elementpath);
_L4:
        path = (String)pathStack.remove(pathStack.size() - 1);
        if (pathStack.size() == 0)
        {
            atRoot = true;
        }
        return;
_L2:
        if (handlerStack.isEmpty() && defaultHandler != null)
        {
            defaultHandler.onEnd(elementpath);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onStart(ElementPath elementpath)
    {
        Object obj = elementpath.getCurrent();
        pathStack.add(path);
        if (atRoot)
        {
            path = path + ((Element) (obj)).getName();
            atRoot = false;
        } else
        {
            path = path + "/" + ((Element) (obj)).getName();
        }
        if (handlers != null && handlers.containsKey(path))
        {
            obj = (ElementHandler)handlers.get(path);
            handlerStack.add(obj);
            ((ElementHandler) (obj)).onStart(elementpath);
        } else
        if (handlerStack.isEmpty() && defaultHandler != null)
        {
            defaultHandler.onStart(elementpath);
            return;
        }
    }

    public ElementHandler removeHandler(String s)
    {
        return (ElementHandler)handlers.remove(s);
    }

    public void resetHandlers()
    {
        atRoot = true;
        path = "/";
        pathStack.clear();
        handlerStack.clear();
        handlers.clear();
        defaultHandler = null;
    }

    public void setDefaultHandler(ElementHandler elementhandler)
    {
        defaultHandler = elementhandler;
    }
}
