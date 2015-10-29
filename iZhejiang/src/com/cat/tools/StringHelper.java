// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

public class StringHelper
{

    public StringHelper()
    {
    }

    public static String getHeadChar(String s)
    {
        char c = s.charAt(0);
        s = PinyinHelper.toHanyuPinyinStringArray(c);
        if (s != null)
        {
            s = (new StringBuilder(String.valueOf(""))).append(s[0].charAt(0)).toString();
        } else
        {
            s = (new StringBuilder(String.valueOf(""))).append(c).toString();
        }
        return s.toUpperCase();
    }

    public static String getPinYinHeadChar(String s)
    {
        String s1 = "";
        int i = 0;
        do
        {
            if (i >= s.length())
            {
                return s1.toUpperCase();
            }
            char c = s.charAt(i);
            String as[] = PinyinHelper.toHanyuPinyinStringArray(c);
            if (as != null)
            {
                s1 = (new StringBuilder(String.valueOf(s1))).append(as[0].charAt(0)).toString();
            } else
            {
                s1 = (new StringBuilder(String.valueOf(s1))).append(c).toString();
            }
            i++;
        } while (true);
    }

    public static String getPingYin(String s)
    {
        char ac[];
        HanyuPinyinOutputFormat hanyupinyinoutputformat;
        int i;
        int j;
        ac = s.toCharArray();
        s = new String[ac.length];
        hanyupinyinoutputformat = new HanyuPinyinOutputFormat();
        hanyupinyinoutputformat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        hanyupinyinoutputformat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        hanyupinyinoutputformat.setVCharType(HanyuPinyinVCharType.WITH_V);
        s = "";
        j = ac.length;
        i = 0;
_L2:
        if (i >= j)
        {
            return s;
        }
        String s1;
        if (!Character.toString(ac[i]).matches("[\\u4E00-\\u9FA5]+"))
        {
            break MISSING_BLOCK_LABEL_109;
        }
        String as[] = PinyinHelper.toHanyuPinyinStringArray(ac[i], hanyupinyinoutputformat);
        s1 = (new StringBuilder(String.valueOf(s))).append(as[0]).toString();
        s = s1;
        break MISSING_BLOCK_LABEL_146;
        String s2;
        try
        {
            s2 = (new StringBuilder(String.valueOf(s))).append(Character.toString(ac[i])).toString();
        }
        catch (BadHanyuPinyinOutputFormatCombination badhanyupinyinoutputformatcombination)
        {
            badhanyupinyinoutputformatcombination.printStackTrace();
            return s;
        }
        s = s2;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
