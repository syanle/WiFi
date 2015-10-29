// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

// Referenced classes of package org.jsoup.select:
//            Evaluator, Elements

public static final class  extends Evaluator
{

    public boolean matches(Element element, Element element1)
    {
        element = element1.parent();
        return element != null && !(element instanceof Document) && element1.elementSiblingIndex().intValue() == element.children().size() - 1;
    }

    public String toString()
    {
        return ":last-child";
    }

    public ()
    {
    }
}
