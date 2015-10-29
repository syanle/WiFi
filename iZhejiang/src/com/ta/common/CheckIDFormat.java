// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;

import java.io.PrintStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Hashtable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CheckIDFormat
{

    public CheckIDFormat()
    {
    }

    private Hashtable GetAreaCode()
    {
        Hashtable hashtable = new Hashtable();
        hashtable.put("11", "\u5317\u4EAC");
        hashtable.put("12", "\u5929\u6D25");
        hashtable.put("13", "\u6CB3\u5317");
        hashtable.put("14", "\u5C71\u897F");
        hashtable.put("15", "\u5185\u8499\u53E4");
        hashtable.put("21", "\u8FBD\u5B81");
        hashtable.put("22", "\u5409\u6797");
        hashtable.put("23", "\u9ED1\u9F99\u6C5F");
        hashtable.put("31", "\u4E0A\u6D77");
        hashtable.put("32", "\u6C5F\u82CF");
        hashtable.put("33", "\u6D59\u6C5F");
        hashtable.put("34", "\u5B89\u5FBD");
        hashtable.put("35", "\u798F\u5EFA");
        hashtable.put("36", "\u6C5F\u897F");
        hashtable.put("37", "\u5C71\u4E1C");
        hashtable.put("41", "\u6CB3\u5357");
        hashtable.put("42", "\u6E56\u5317");
        hashtable.put("43", "\u6E56\u5357");
        hashtable.put("44", "\u5E7F\u4E1C");
        hashtable.put("45", "\u5E7F\u897F");
        hashtable.put("46", "\u6D77\u5357");
        hashtable.put("50", "\u91CD\u5E86");
        hashtable.put("51", "\u56DB\u5DDD");
        hashtable.put("52", "\u8D35\u5DDE");
        hashtable.put("53", "\u4E91\u5357");
        hashtable.put("54", "\u897F\u85CF");
        hashtable.put("61", "\u9655\u897F");
        hashtable.put("62", "\u7518\u8083");
        hashtable.put("63", "\u9752\u6D77");
        hashtable.put("64", "\u5B81\u590F");
        hashtable.put("65", "\u65B0\u7586");
        hashtable.put("71", "\u53F0\u6E7E");
        hashtable.put("81", "\u9999\u6E2F");
        hashtable.put("82", "\u6FB3\u95E8");
        hashtable.put("91", "\u56FD\u5916");
        return hashtable;
    }

    private boolean isNumeric(String s)
    {
        return Pattern.compile("[0-9]*").matcher(s).matches();
    }

    public String GetArea(String s)
    {
        return (String)GetAreaCode().get(s.substring(0, 2));
    }

    public String GetBirthday(String s)
    {
        String s1 = "";
        if (s.length() != 18) goto _L2; else goto _L1
_L1:
        s1 = s.substring(0, 17);
_L4:
        s = s1.substring(6, 10);
        String s2 = s1.substring(10, 12);
        s1 = s1.substring(12, 14);
        return (new StringBuilder(String.valueOf(s))).append("-").append(s2).append("-").append(s1).toString();
_L2:
        if (s.length() == 15)
        {
            s1 = (new StringBuilder(String.valueOf(s.substring(0, 6)))).append("19").append(s.substring(6, 15)).toString();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String GetSex(String s)
    {
        String s1 = "";
        if (s.length() == 15)
        {
            s1 = s.substring(s.length() - 3, s.length());
        }
        if (s.length() == 18)
        {
            s1 = s.substring(s.length() - 4, s.length() - 1);
        }
        System.out.println(s1);
        if (Integer.parseInt(s1) % 2 == 0)
        {
            return "\u5973";
        } else
        {
            return "\u7537";
        }
    }

    public boolean IDCardValidate(String s)
        throws ParseException
    {
        String s1;
        s1 = "";
        if (s.length() != 15 && s.length() != 18)
        {
            System.out.println("\u53F7\u7801\u957F\u5EA6\u5E94\u8BE5\u4E3A15\u4F4D\u621618\u4F4D\u3002");
            return false;
        }
        if (s.length() != 18) goto _L2; else goto _L1
_L1:
        s1 = s.substring(0, 17);
_L4:
        if (!isNumeric(s1))
        {
            System.out.println("15\u4F4D\u53F7\u7801\u90FD\u5E94\u4E3A\u6570\u5B57 ; 18\u4F4D\u53F7\u7801\u9664\u6700\u540E\u4E00\u4F4D\u5916\uFF0C\u90FD\u5E94\u4E3A\u6570\u5B57\u3002");
            return false;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (s.length() == 15)
        {
            s1 = (new StringBuilder(String.valueOf(s.substring(0, 6)))).append("19").append(s.substring(6, 15)).toString();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Object obj = s1.substring(6, 10);
        String s2 = s1.substring(10, 12);
        String s4 = s1.substring(12, 14);
        if (!isDate((new StringBuilder(String.valueOf(obj))).append("-").append(s2).append("-").append(s4).toString()))
        {
            System.out.println("\u751F\u65E5\u65E0\u6548\u3002");
            return false;
        }
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        if (gregoriancalendar.get(1) - Integer.parseInt(((String) (obj))) > 150 || gregoriancalendar.getTime().getTime() - simpledateformat.parse((new StringBuilder(String.valueOf(obj))).append("-").append(s2).append("-").append(s4).toString()).getTime() < 0L)
        {
            System.out.println("\u751F\u65E5\u4E0D\u5728\u6709\u6548\u8303\u56F4\u3002");
            return false;
        }
        if (Integer.parseInt(s2) > 12 || Integer.parseInt(s2) == 0)
        {
            System.out.println("\u6708\u4EFD\u65E0\u6548");
            return false;
        }
        if (Integer.parseInt(s4) > 31 || Integer.parseInt(s4) == 0)
        {
            System.out.println("\u65E5\u671F\u65E0\u6548");
            return false;
        }
        obj = GetAreaCode();
        if (((Hashtable) (obj)).get(s1.substring(0, 2)) == null)
        {
            System.out.println("\u5730\u533A\u7F16\u7801\u9519\u8BEF\u3002");
            return false;
        }
        int j = 0;
        int i = 0;
        do
        {
            if (i >= 17)
            {
                String s3 = (new String[] {
                    "1", "0", "x", "9", "8", "7", "6", "5", "4", "3", 
                    "2"
                })[j % 11];
                s1 = (new StringBuilder(String.valueOf(s1))).append(s3).toString();
                if (s.length() == 18)
                {
                    if (!s1.equals(s))
                    {
                        System.out.println("\u8EAB\u4EFD\u8BC1\u65E0\u6548\uFF0C\u6700\u540E\u4E00\u4F4D\u5B57\u6BCD\u9519\u8BEF");
                        return false;
                    } else
                    {
                        System.out.println((new StringBuilder("\u6240\u5728\u5730\u533A:")).append((String)((Hashtable) (obj)).get(s1.substring(0, 2).toString())).toString());
                        return true;
                    }
                } else
                {
                    System.out.println((new StringBuilder("\u6240\u5728\u5730\u533A:")).append((String)((Hashtable) (obj)).get(s1.substring(0, 2).toString())).toString());
                    System.out.println((new StringBuilder("\u65B0\u8EAB\u4EFD\u8BC1\u53F7:")).append(s1).toString());
                    return true;
                }
            }
            j += Integer.parseInt(String.valueOf(s1.charAt(i))) * Integer.parseInt((new String[] {
                "7", "9", "10", "5", "8", "4", "2", "1", "6", "3", 
                "7", "9", "10", "5", "8", "4", "2"
            })[i]);
            i++;
        } while (true);
    }

    public boolean isDate(String s)
    {
        return Pattern.compile("^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\\s(((0?[0-9])|([1-2][0-3]))\\:([0-5]?[0-9])((\\s)|(\\:([0-5]?[0-9])))))?$").matcher(s).matches();
    }
}
