// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import java.util.List;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.XmlDeclaration;

// Referenced classes of package org.jsoup.select:
//            Evaluator

public static final class  extends Evaluator
{

    public boolean matches(Element element, Element element1)
    {
        element = element1.childNodes();
        for (int i = 0; i < element.size(); i++)
        {
            element1 = (Node)element.get(i);
            if (!(element1 instanceof Comment) && !(element1 instanceof XmlDeclaration) && !(element1 instanceof DocumentType))
            {
                return false;
            }
        }

        return true;
    }

    public String toString()
    {
        return ":empty";
    }

    public ()
    {
    }
}
