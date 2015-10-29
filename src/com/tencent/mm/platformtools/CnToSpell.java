// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.platformtools;


// Referenced classes of package com.tencent.mm.platformtools:
//            SpellMap

public class CnToSpell
{

    public CnToSpell()
    {
    }

    public static String getFullSpell(String s)
    {
        if (s == null || "".equals(s.trim()))
        {
            return s;
        }
        s = s.toCharArray();
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        for (int j = s.length; i < j; i++)
        {
            String s1 = SpellMap.getSpell(s[i]);
            if (s1 != null)
            {
                stringbuffer.append(s1);
            }
        }

        return stringbuffer.toString();
    }

    public static String getInitial(String s)
    {
        if (s == null || "".equals(s.trim()))
        {
            return s;
        }
        s = s.toCharArray();
        StringBuffer stringbuffer = new StringBuffer();
        int j = s.length;
        for (int i = 0; i < j; i++)
        {
            if (Character.isSpace(s[i]))
            {
                continue;
            }
            String s1 = SpellMap.getSpell(s[i]);
            if (s1 != null && s1.length() > 0)
            {
                stringbuffer.append(s1.charAt(0));
            }
        }

        return stringbuffer.toString().toUpperCase();
    }
}
