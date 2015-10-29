// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

// Referenced classes of package org.jsoup.select:
//            Evaluator

public static abstract class b extends Evaluator
{

    protected final int a;
    protected final int b;

    protected abstract int calculatePosition(Element element, Element element1);

    protected abstract String getPseudoClass();

    public boolean matches(Element element, Element element1)
    {
        Element element2;
        boolean flag;
        flag = true;
        element2 = element1.parent();
        if (element2 != null && !(element2 instanceof Document)) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        int i;
        i = calculatePosition(element, element1);
        if (a != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i == b) goto _L4; else goto _L3
_L3:
        return false;
        if ((i - b) * a >= 0 && (i - b) % a == 0) goto _L4; else goto _L5
_L5:
        return false;
    }

    public String toString()
    {
        if (a == 0)
        {
            return String.format(":%s(%d)", new Object[] {
                getPseudoClass(), Integer.valueOf(b)
            });
        }
        if (b == 0)
        {
            return String.format(":%s(%dn)", new Object[] {
                getPseudoClass(), Integer.valueOf(a)
            });
        } else
        {
            return String.format(":%s(%dn%+d)", new Object[] {
                getPseudoClass(), Integer.valueOf(a), Integer.valueOf(b)
            });
        }
    }

    public (int i)
    {
        this(0, i);
    }

    public <init>(int i, int j)
    {
        a = i;
        b = j;
    }
}
