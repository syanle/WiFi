// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.xpath;

import java.util.Comparator;
import java.util.Map;

// Referenced classes of package org.dom4j.xpath:
//            DefaultXPath

class val.sortValues
    implements Comparator
{

    private final DefaultXPath this$0;
    private final Map val$sortValues;

    public int compare(Object obj, Object obj1)
    {
        obj = val$sortValues.get(obj);
        obj1 = val$sortValues.get(obj1);
        if (obj != obj1)
        {
            if (obj instanceof Comparable)
            {
                return ((Comparable)obj).compareTo(obj1);
            }
            if (obj == null)
            {
                return 1;
            }
            if (obj1 == null)
            {
                return -1;
            }
            if (!obj.equals(obj1))
            {
                return -1;
            }
        }
        return 0;
    }

    ()
    {
        this$0 = final_defaultxpath;
        val$sortValues = Map.this;
    }
}
