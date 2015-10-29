// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.util;


public class StringUtil
{

    public StringUtil()
    {
    }

    public static String CR2Blank(String s)
    {
        if (s == null)
        {
            s = "";
        }
        return s.replaceAll("\\n", " ");
    }

    public static boolean isBlank(CharSequence charsequence)
    {
        boolean flag1 = false;
        if (charsequence == null) goto _L2; else goto _L1
_L1:
        int j = charsequence.length();
        if (j != 0) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L5:
        return flag;
_L3:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= j)
                {
                    break label1;
                }
                flag = flag1;
                if (!Character.isWhitespace(charsequence.charAt(i)))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L5; else goto _L4
_L4:
        return true;
    }

    public static boolean isNotBlank(CharSequence charsequence)
    {
        return !isBlank(charsequence);
    }

    public static String substringByByteCount(String s, int i, boolean flag)
    {
        boolean flag1 = false;
        if (s == null)
        {
            return "";
        }
        String s1 = CR2Blank(s);
        s = new StringBuilder();
        char ac[] = s1.toCharArray();
        int j = 0;
        int k = 0;
        do
        {
label0:
            {
                int l = ((flag1) ? 1 : 0);
                if (j < ac.length)
                {
                    if (ac[j] <= '\177')
                    {
                        l = 1;
                    } else
                    {
                        l = 0;
                    }
                    if (l != 0)
                    {
                        l = 1;
                    } else
                    {
                        l = 2;
                    }
                    k += l;
                    if (k <= i)
                    {
                        break label0;
                    }
                    l = 1;
                }
                if (flag && l != 0)
                {
                    s.append("...");
                }
                return s.toString();
            }
            s.append(ac[j]);
            j++;
        } while (true);
    }
}
