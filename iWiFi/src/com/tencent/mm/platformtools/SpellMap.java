// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.platformtools;

import java.io.UnsupportedEncodingException;

public class SpellMap
{

    public SpellMap()
    {
    }

    private static int a(char c)
    {
        if (c <= '\200')
        {
            return c;
        }
        Object obj;
        try
        {
            obj = String.valueOf(c).getBytes("GBK");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return 0;
        }
        if (obj == null || obj.length > 2 || obj.length <= 0)
        {
            return 0;
        }
        if (obj.length == 1)
        {
            return obj[0];
        }
        if (obj.length == 2)
        {
            return (obj[0] + 256 << 16) + (obj[1] + 256);
        } else
        {
            return 0;
        }
    }

    public static String getSpell(char c)
    {
        String s1 = null;
        int j = a(c);
        if (j < 0x10000)
        {
            s1 = String.valueOf(c);
        } else
        {
            int i = j >> 16;
            j &= 0xff;
            String s;
            if (i < 129 || i > 253)
            {
                s = null;
            } else
            if (j < 63 || j > 254)
            {
                s = null;
            } else
            {
                s = spellGetJni(i - 129, j - 63);
            }
            if (s != null)
            {
                String as[] = s.split(",");
                if (as == null || as.length < 2)
                {
                    return s;
                } else
                {
                    return as[0];
                }
            }
        }
        return s1;
    }

    public static native String spellGetJni(int i, int j);
}
