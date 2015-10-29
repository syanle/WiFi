// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

// Referenced classes of package net.sourceforge.pinyin4j:
//            GwoyeuRomatzyhTranslator, PinyinRomanizationType, PinyinRomanizationTranslator, PinyinFormatter, 
//            ChineseToPinyinResource

public class PinyinHelper
{

    private PinyinHelper()
    {
    }

    private static String[] convertToGwoyeuRomatzyhStringArray(char c)
    {
        String as[] = getUnformattedHanyuPinyinStringArray(c);
        if (as != null)
        {
            String as1[] = new String[as.length];
            for (int i = 0; i < as.length; i++)
            {
                as1[i] = GwoyeuRomatzyhTranslator.convertHanyuPinyinToGwoyeuRomatzyh(as[i]);
            }

            return as1;
        } else
        {
            return null;
        }
    }

    private static String[] convertToTargetPinyinStringArray(char c, PinyinRomanizationType pinyinromanizationtype)
    {
        String as[] = getUnformattedHanyuPinyinStringArray(c);
        if (as != null)
        {
            String as1[] = new String[as.length];
            for (int i = 0; i < as.length; i++)
            {
                as1[i] = PinyinRomanizationTranslator.convertRomanizationSystem(as[i], PinyinRomanizationType.HANYU_PINYIN, pinyinromanizationtype);
            }

            return as1;
        } else
        {
            return null;
        }
    }

    private static String getFirstHanyuPinyinString(char c, HanyuPinyinOutputFormat hanyupinyinoutputformat)
        throws BadHanyuPinyinOutputFormatCombination
    {
        hanyupinyinoutputformat = getFormattedHanyuPinyinStringArray(c, hanyupinyinoutputformat);
        if (hanyupinyinoutputformat != null && hanyupinyinoutputformat.length > 0)
        {
            return hanyupinyinoutputformat[0];
        } else
        {
            return null;
        }
    }

    private static String[] getFormattedHanyuPinyinStringArray(char c, HanyuPinyinOutputFormat hanyupinyinoutputformat)
        throws BadHanyuPinyinOutputFormatCombination
    {
        String as[] = getUnformattedHanyuPinyinStringArray(c);
        if (as != null)
        {
            for (int i = 0; i < as.length; i++)
            {
                as[i] = PinyinFormatter.formatHanyuPinyin(as[i], hanyupinyinoutputformat);
            }

            return as;
        } else
        {
            return null;
        }
    }

    private static String[] getUnformattedHanyuPinyinStringArray(char c)
    {
        return ChineseToPinyinResource.getInstance().getHanyuPinyinStringArray(c);
    }

    public static String[] toGwoyeuRomatzyhStringArray(char c)
    {
        return convertToGwoyeuRomatzyhStringArray(c);
    }

    public static String toHanyuPinyinString(String s, HanyuPinyinOutputFormat hanyupinyinoutputformat, String s1)
        throws BadHanyuPinyinOutputFormatCombination
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        while (i < s.length()) 
        {
            String s2 = getFirstHanyuPinyinString(s.charAt(i), hanyupinyinoutputformat);
            if (s2 != null)
            {
                stringbuffer.append(s2);
                if (i != s.length() - 1)
                {
                    stringbuffer.append(s1);
                }
            } else
            {
                stringbuffer.append(s.charAt(i));
            }
            i++;
        }
        return stringbuffer.toString();
    }

    public static String[] toHanyuPinyinStringArray(char c)
    {
        return getUnformattedHanyuPinyinStringArray(c);
    }

    public static String[] toHanyuPinyinStringArray(char c, HanyuPinyinOutputFormat hanyupinyinoutputformat)
        throws BadHanyuPinyinOutputFormatCombination
    {
        return getFormattedHanyuPinyinStringArray(c, hanyupinyinoutputformat);
    }

    public static String[] toMPS2PinyinStringArray(char c)
    {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.MPS2_PINYIN);
    }

    public static String[] toTongyongPinyinStringArray(char c)
    {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.TONGYONG_PINYIN);
    }

    public static String[] toWadeGilesPinyinStringArray(char c)
    {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.WADEGILES_PINYIN);
    }

    public static String[] toYalePinyinStringArray(char c)
    {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.YALE_PINYIN);
    }
}
