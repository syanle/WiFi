// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.CharacterData;
import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            AbstractNode

public abstract class AbstractCharacterData extends AbstractNode
    implements CharacterData
{

    public AbstractCharacterData()
    {
    }

    public void appendText(String s)
    {
        setText(getText() + s);
    }

    public String getPath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getPath(element) + "/text()";
        } else
        {
            return "text()";
        }
    }

    public String getUniquePath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getUniquePath(element) + "/text()";
        } else
        {
            return "text()";
        }
    }
}
