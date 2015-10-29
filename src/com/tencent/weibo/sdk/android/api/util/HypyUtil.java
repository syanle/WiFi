// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;


public class HypyUtil
{

    private static int BEGIN = 45217;
    private static int END;
    private static char chartable[] = {
        '\u554A', '\u82AD', '\u64E6', '\u642D', '\u86FE', '\u53D1', '\u5676', '\u54C8', '\u54C8', '\u51FB', 
        '\u5580', '\u5783', '\u5988', '\u62FF', '\u54E6', '\u556A', '\u671F', '\u7136', '\u6492', '\u584C', 
        '\u584C', '\u584C', '\u6316', '\u6614', '\u538B', '\u531D'
    };
    private static char initialtable[] = {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'h', 'j', 
        'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
        't', 't', 'w', 'x', 'y', 'z'
    };
    private static int table[];

    public HypyUtil()
    {
    }

    private static char Char2Initial(char c)
    {
        if (c < 'a' || c > 'z') goto _L2; else goto _L1
_L1:
        char c1 = (char)((c - 97) + 65);
_L4:
        return c1;
_L2:
        if (c < 'A')
        {
            break; /* Loop/switch isn't completed */
        }
        c1 = c;
        if (c <= 'Z') goto _L4; else goto _L3
_L3:
        int j = gbValue(c);
        c1 = c;
        if (j >= BEGIN)
        {
            c1 = c;
            if (j <= END)
            {
                do
                {
                    int i;
                    for (i = 0; i >= 26 || j >= table[i] && j < table[i + 1];)
                    {
                        if (j == END)
                        {
                            i = 25;
                        }
                        return initialtable[i];
                    }

                    i++;
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public static String cn2py(String s)
    {
        String s1 = "";
        int j = s.length();
        int i = 0;
        do
        {
            if (i >= j)
            {
                return s1;
            }
            try
            {
                s1 = (new StringBuilder(String.valueOf(s1))).append(Char2Initial(s.charAt(i))).toString();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return "";
            }
            i++;
        } while (true);
    }

    private static int gbValue(char c)
    {
        String s = (new StringBuilder(String.valueOf(new String()))).append(c).toString();
        byte abyte0[] = s.getBytes("GB2312");
        if (abyte0.length < 2)
        {
            return 0;
        } else
        {
            byte byte0 = abyte0[0];
            byte byte1 = abyte0[1];
            return (byte1 & 0xff) + (byte0 << 8 & 0xff00);
        }
        Exception exception;
        exception;
        return 0;
    }

    static 
    {
        END = 63486;
        table = new int[27];
        int i = 0;
        do
        {
            if (i >= 26)
            {
                table[26] = END;
                return;
            }
            table[i] = gbValue(chartable[i]);
            i++;
        } while (true);
    }
}
