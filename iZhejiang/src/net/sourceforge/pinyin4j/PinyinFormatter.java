// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

class PinyinFormatter
{

    PinyinFormatter()
    {
    }

    private static String convertToneNumber2ToneMark(String s)
    {
        String s1;
        s1 = s.toLowerCase();
        s = s1;
        if (!s1.matches("[a-z]*[1-5]?")) goto _L2; else goto _L1
_L1:
        if (!s1.matches("[a-z]*[1-5]")) goto _L4; else goto _L3
_L3:
        int i;
        int j;
        int k;
        int l;
        l = Character.getNumericValue(s1.charAt(s1.length() - 1));
        i = s1.indexOf('a');
        k = s1.indexOf('e');
        j = s1.indexOf("ou");
        if (-1 == i) goto _L6; else goto _L5
_L5:
        j = 97;
_L8:
        s = s1;
        if (36 != j)
        {
            s = s1;
            if (-1 != i)
            {
                char c = "\u0101\341\u0103\340a\u0113\351\u0115\350e\u012B\355\u012D\354i\u014D\363\u014F\362o\u016B\372\u016D\371u\u01D6\u01D8\u01DA\u01DC\374".charAt("aeiouv".indexOf(j) * 5 + (l - 1));
                s = new StringBuffer();
                s.append(s1.substring(0, i).replaceAll("v", "\374"));
                s.append(c);
                s.append(s1.substring(i + 1, s1.length() - 1).replaceAll("v", "\374"));
                s = s.toString();
            }
        }
_L2:
        return s;
_L6:
        if (-1 != k)
        {
            i = k;
            j = 101;
            continue; /* Loop/switch isn't completed */
        }
        if (-1 != j)
        {
            char c1 = "ou".charAt(0);
            i = j;
            j = c1;
            continue; /* Loop/switch isn't completed */
        }
        i = s1.length() - 1;
        do
        {
            if (i < 0)
            {
                break;
            }
            if (String.valueOf(s1.charAt(i)).matches("[aeiouv]"))
            {
                j = s1.charAt(i);
                continue; /* Loop/switch isn't completed */
            }
            i--;
        } while (true);
        i = -1;
        j = 36;
        continue; /* Loop/switch isn't completed */
_L4:
        return s1.replaceAll("v", "\374");
        if (true) goto _L8; else goto _L7
_L7:
    }

    static String formatHanyuPinyin(String s, HanyuPinyinOutputFormat hanyupinyinoutputformat)
        throws BadHanyuPinyinOutputFormatCombination
    {
        if (HanyuPinyinToneType.WITH_TONE_MARK == hanyupinyinoutputformat.getToneType() && (HanyuPinyinVCharType.WITH_V == hanyupinyinoutputformat.getVCharType() || HanyuPinyinVCharType.WITH_U_AND_COLON == hanyupinyinoutputformat.getVCharType()))
        {
            throw new BadHanyuPinyinOutputFormatCombination("tone marks cannot be added to v or u:");
        }
        String s1;
        if (HanyuPinyinToneType.WITHOUT_TONE == hanyupinyinoutputformat.getToneType())
        {
            s1 = s.replaceAll("[1-5]", "");
        } else
        {
            s1 = s;
            if (HanyuPinyinToneType.WITH_TONE_MARK == hanyupinyinoutputformat.getToneType())
            {
                s1 = convertToneNumber2ToneMark(s.replaceAll("u:", "v"));
            }
        }
        if (HanyuPinyinVCharType.WITH_V == hanyupinyinoutputformat.getVCharType())
        {
            s = s1.replaceAll("u:", "v");
        } else
        {
            s = s1;
            if (HanyuPinyinVCharType.WITH_U_UNICODE == hanyupinyinoutputformat.getVCharType())
            {
                s = s1.replaceAll("u:", "\374");
            }
        }
        s1 = s;
        if (HanyuPinyinCaseType.UPPERCASE == hanyupinyinoutputformat.getCaseType())
        {
            s1 = s.toUpperCase();
        }
        return s1;
    }
}
