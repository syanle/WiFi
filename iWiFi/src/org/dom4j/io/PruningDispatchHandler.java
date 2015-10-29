// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import org.dom4j.Element;
import org.dom4j.ElementPath;

// Referenced classes of package org.dom4j.io:
//            DispatchHandler

class PruningDispatchHandler extends DispatchHandler
{

    PruningDispatchHandler()
    {
    }

    public void onEnd(ElementPath elementpath)
    {
        super.onEnd(elementpath);
        if (getActiveHandlerCount() == 0)
        {
            elementpath.getCurrent().detach();
        }
    }
}
