// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import java.util.HashMap;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package cn.sharesdk.framework.utils:
//            g

private static class a extends DefaultHandler
{

    private HashMap a;
    private HashMap b;

    public HashMap a()
    {
        return a;
    }

    public void characters(char ac[], int i, int j)
    {
        for (ac = String.valueOf(ac, i, j).trim(); TextUtils.isEmpty(ac) || b == null;)
        {
            return;
        }

        b.put("value", ac);
    }

    public void endElement(String s, String s1, String s2)
    {
        b = null;
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
    {
        int j;
        if (b != null)
        {
            s = new HashMap();
            b.put(s1, s);
            b = s;
        } else
        {
            b = new HashMap();
            a.put(s1, b);
        }
        j = attributes.getLength();
        for (int i = 0; i < j; i++)
        {
            b.put(attributes.getLocalName(i), attributes.getValue(i));
        }

    }

    public er()
    {
        a = new HashMap();
    }
}
