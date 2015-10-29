// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.helper;

import java.util.Collection;
import java.util.Iterator;

public final class StringUtil
{

    private static final String padding[] = {
        "", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", 
        "          "
    };

    public StringUtil()
    {
    }

    public static void appendNormalisedWhitespace(StringBuilder stringbuilder, String s, boolean flag)
    {
        int i;
        boolean flag2;
        boolean flag3;
        int j;
        flag3 = false;
        flag2 = false;
        j = s.length();
        i = 0;
_L7:
        if (i >= j) goto _L2; else goto _L1
_L1:
        int k = s.codePointAt(i);
        if (!isWhitespace(k)) goto _L4; else goto _L3
_L3:
        boolean flag1;
        boolean flag4;
label0:
        {
            if (flag)
            {
                flag1 = flag3;
                flag4 = flag2;
                if (!flag2)
                {
                    break label0;
                }
            }
            if (flag3)
            {
                flag4 = flag2;
                flag1 = flag3;
            } else
            {
                stringbuilder.append(' ');
                flag1 = true;
                flag4 = flag2;
            }
        }
_L5:
        i += Character.charCount(k);
        flag3 = flag1;
        flag2 = flag4;
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.appendCodePoint(k);
        flag1 = false;
        flag4 = true;
        if (true) goto _L5; else goto _L2
_L2:
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static transient boolean in(String s, String as[])
    {
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            if (as[i].equals(s))
            {
                return true;
            }
        }

        return false;
    }

    public static boolean isBlank(String s)
    {
        if (s != null && s.length() != 0)
        {
            int j = s.length();
            int i = 0;
            while (i < j) 
            {
                if (!isWhitespace(s.codePointAt(i)))
                {
                    return false;
                }
                i++;
            }
        }
        return true;
    }

    public static boolean isNumeric(String s)
    {
        if (s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int j = s.length();
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
                if (!Character.isDigit(s.codePointAt(i)))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isWhitespace(int i)
    {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String join(Collection collection, String s)
    {
        return join(collection.iterator(), s);
    }

    public static String join(Iterator iterator, String s)
    {
        String s1;
        if (!iterator.hasNext())
        {
            s1 = "";
        } else
        {
            String s2 = iterator.next().toString();
            s1 = s2;
            if (iterator.hasNext())
            {
                StringBuilder stringbuilder = (new StringBuilder(64)).append(s2);
                for (; iterator.hasNext(); stringbuilder.append(iterator.next()))
                {
                    stringbuilder.append(s);
                }

                return stringbuilder.toString();
            }
        }
        return s1;
    }

    public static String normaliseWhitespace(String s)
    {
        StringBuilder stringbuilder = new StringBuilder(s.length());
        appendNormalisedWhitespace(stringbuilder, s, false);
        return stringbuilder.toString();
    }

    public static String padding(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("width must be > 0");
        }
        if (i < padding.length)
        {
            return padding[i];
        }
        char ac[] = new char[i];
        for (int j = 0; j < i; j++)
        {
            ac[j] = ' ';
        }

        return String.valueOf(ac);
    }

}
