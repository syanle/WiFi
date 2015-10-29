// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class SemiXml
{

    public static final String MAGIC_HEAD = "~SEMI_XML~";

    public SemiXml()
    {
    }

    public static Map decode(String s)
    {
        if (s != null && s.startsWith("~SEMI_XML~")) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        HashMap hashmap;
        String s1;
        int i;
        int j;
        s1 = s.substring(10);
        hashmap = new HashMap();
        i = 0;
        j = s1.length();
_L5:
        s = hashmap;
        if (i >= j - 4) goto _L4; else goto _L3
_L3:
        int k = i + 1;
        char c;
        try
        {
            c = s1.charAt(i);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return hashmap;
        }
        i = k + 1;
        k = (c << 16) + s1.charAt(k) + i;
        s = s1.substring(i, k);
        i = k + 1;
        c = s1.charAt(k);
        k = i + 1;
        i = (c << 16) + s1.charAt(i) + k;
        hashmap.put(s, s1.substring(k, i));
          goto _L5
    }

    public static String encode(Map map)
    {
        if (map == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("~SEMI_XML~");
        map = map.entrySet().iterator();
        do
        {
            if (!map.hasNext())
            {
                break;
            }
            Object obj = (java.util.Map.Entry)map.next();
            String s = (String)((java.util.Map.Entry) (obj)).getKey();
            obj = (String)((java.util.Map.Entry) (obj)).getValue();
            if (obj != null)
            {
                int i = s.length();
                int j = ((String) (obj)).length();
                stringbuilder.append((char)(i >> 16)).append((char)i).append(s);
                stringbuilder.append((char)(j >> 16)).append((char)j).append(((String) (obj)));
            }
        } while (true);
        return stringbuilder.toString();
    }
}
