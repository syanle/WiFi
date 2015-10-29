// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;

import android.util.Log;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.ta.common:
//            MobileFormat

public class TAStringUtils
{

    private static final String _BR = "<br/>";
    private static final ThreadLocal dateFormater = new ThreadLocal() {

        protected volatile Object initialValue()
        {
            return initialValue();
        }

        protected SimpleDateFormat initialValue()
        {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }

    };
    private static final ThreadLocal dateFormater2 = new ThreadLocal() {

        protected volatile Object initialValue()
        {
            return initialValue();
        }

        protected SimpleDateFormat initialValue()
        {
            return new SimpleDateFormat("yyyy-MM-dd");
        }

    };
    private static final Pattern emailer = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");

    public TAStringUtils()
    {
    }

    private static String bytesToHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuilder.toString();
            }
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() == 1)
            {
                stringbuilder.append('0');
            }
            stringbuilder.append(s);
            i++;
        } while (true);
    }

    public static long calculateWeiboLength(CharSequence charsequence)
    {
        double d = 0.0D;
        int i = 0;
        do
        {
            if (i >= charsequence.length())
            {
                return Math.round(d);
            }
            char c = charsequence.charAt(i);
            if (c > 0 && c < '\177')
            {
                d += 0.5D;
            } else
            {
                d++;
            }
            i++;
        } while (true);
    }

    public static boolean checkEmail(String s)
    {
        return Pattern.compile("^\\w+([-.]\\w+)*@\\w+([-]\\w+)*\\.(\\w+([-]\\w+)*\\.)*[a-z]{2,3}$").matcher(s).matches();
    }

    public static String delHTMLTag(String s)
    {
        Log.v("htmlStr", s);
        String s1 = s;
        try
        {
            s = Pattern.compile("<script[^>]*?>[\\s\\S]*?<\\/script>", 2).matcher(s).replaceAll("");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return s1;
        }
        s1 = s;
        s = Pattern.compile("<style[^>]*?>[\\s\\S]*?<\\/style>", 2).matcher(s).replaceAll("");
        s1 = s;
        s = Pattern.compile("<[^>]+>", 2).matcher(s).replaceAll("");
        return s;
    }

    public static String delSpace(String s)
    {
        String s1 = s;
        if (s != null)
        {
            s1 = s.replaceAll("\r", "").replaceAll("\n", "").replace(" ", "");
        }
        return s1;
    }

    public static String friendly_time(String s)
    {
        Date date = toDate(s);
        if (date == null)
        {
            s = "Unknown";
        } else
        {
            s = "";
            Calendar calendar = Calendar.getInstance();
            if (((SimpleDateFormat)dateFormater2.get()).format(calendar.getTime()).equals(((SimpleDateFormat)dateFormater2.get()).format(date)))
            {
                int i = (int)((calendar.getTimeInMillis() - date.getTime()) / 0x36ee80L);
                if (i == 0)
                {
                    return (new StringBuilder(String.valueOf(Math.max((calendar.getTimeInMillis() - date.getTime()) / 60000L, 1L)))).append("\u5206\u949F\u524D").toString();
                } else
                {
                    return (new StringBuilder(String.valueOf(i))).append("\u5C0F\u65F6\u524D").toString();
                }
            }
            long l = date.getTime() / 0x5265c00L;
            int j = (int)(calendar.getTimeInMillis() / 0x5265c00L - l);
            if (j == 0)
            {
                j = (int)((calendar.getTimeInMillis() - date.getTime()) / 0x36ee80L);
                if (j == 0)
                {
                    return (new StringBuilder(String.valueOf(Math.max((calendar.getTimeInMillis() - date.getTime()) / 60000L, 1L)))).append("\u5206\u949F\u524D").toString();
                } else
                {
                    return (new StringBuilder(String.valueOf(j))).append("\u5C0F\u65F6\u524D").toString();
                }
            }
            if (j == 1)
            {
                return "\u6628\u5929";
            }
            if (j == 2)
            {
                return "\u524D\u5929";
            }
            if (j > 2 && j <= 10)
            {
                return (new StringBuilder(String.valueOf(j))).append("\u5929\u524D").toString();
            }
            if (j > 10)
            {
                return ((SimpleDateFormat)dateFormater2.get()).format(date);
            }
        }
        return s;
    }

    public static String getFileNameFromUrl(String s)
    {
        int i = s.lastIndexOf('?');
        String s1;
        if (i > 1)
        {
            s1 = s.substring(s.lastIndexOf('.') + 1, i);
        } else
        {
            s1 = s.substring(s.lastIndexOf('.') + 1);
        }
        return (new StringBuilder(String.valueOf(hashKeyForDisk(s)))).append(".").append(s1).toString();
    }

    public static String getUrlFileName(String s)
    {
        s = s.substring(s.lastIndexOf("/"));
        String s1 = s.substring(1, s.length());
        s = s1;
        if (s1.equalsIgnoreCase(""))
        {
            s = Calendar.getInstance();
            s = (new StringBuilder(String.valueOf(s.get(1)))).append(s.get(2)).append(s.get(5)).append(s.get(12)).toString();
        }
        return s;
    }

    public static String hashKeyForDisk(String s)
    {
        Object obj;
        try
        {
            obj = MessageDigest.getInstance("MD5");
            ((MessageDigest) (obj)).update(s.getBytes());
            obj = bytesToHexString(((MessageDigest) (obj)).digest());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return String.valueOf(s.hashCode());
        }
        return ((String) (obj));
    }

    public static String htmldecode(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return replace("&quot;", "\"", replace("&lt;", "<", s));
        }
    }

    public static String htmlencode(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return replace("\"", "&quot;", replace("<", "&lt;", s));
        }
    }

    public static String htmlshow(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return replace("\t", "&nbsp;&nbsp;&nbsp;&nbsp;", replace("\n", "<br/>", replace("\r\n", "<br/>", replace(" ", "&nbsp;", replace("<", "&lt;", s)))));
        }
    }

    public static boolean isBlank(String s)
    {
        return s == null || s.trim().length() == 0;
    }

    public static boolean isChinese(String s)
    {
        return Pattern.compile("[\u0391-\uFFE5]+$").matcher(s).matches();
    }

    public static boolean isDouble(String s)
    {
        return Pattern.compile("^[-\\+]?[.\\d]*$").matcher(s).matches();
    }

    public static boolean isEmail(String s)
    {
        if (s == null || s.trim().length() == 0)
        {
            return false;
        } else
        {
            return emailer.matcher(s).matches();
        }
    }

    public static boolean isEmpty(String s)
    {
        if (s != null && !"".equals(s))
        {
            int i = 0;
            while (i < s.length()) 
            {
                char c = s.charAt(i);
                if (c != ' ' && c != '\t' && c != '\r' && c != '\n')
                {
                    return false;
                }
                i++;
            }
        }
        return true;
    }

    public static boolean isHandset(String s)
    {
        if (!s.substring(0, 1).equals("1"))
        {
            return false;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        boolean flag;
        if (s.length() != 11)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        flag = Pattern.compile("^[0123456789]+$").matcher(s).matches();
        if (flag)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_51;
        s;
        return false;
    }

    public static boolean isInteger(String s)
    {
        return Pattern.compile("^[-\\+]?[\\d]*$").matcher(s).matches();
    }

    public static boolean isLenghtStrLentht(String s, int i)
    {
        return s.length() <= i;
    }

    public static boolean isNotNull(String s)
    {
        return s != null && !"".equalsIgnoreCase(s.trim());
    }

    public static boolean isNumeric(String s)
    {
        return Pattern.compile("[0-9]*").matcher(s).matches();
    }

    public static boolean isPhoneNumberValid(String s)
    {
        return (new MobileFormat(trimmy(s))).isLawful();
    }

    public static boolean isSMSStrLentht(String s)
    {
        return s.length() <= 70;
    }

    public static boolean isShareStrLentht(String s, int i)
    {
        return s.length() <= 120;
    }

    public static boolean isToday(String s)
    {
        boolean flag1 = false;
        s = toDate(s);
        Date date = new Date();
        boolean flag = flag1;
        if (s != null)
        {
            flag = flag1;
            if (((SimpleDateFormat)dateFormater2.get()).format(date).equals(((SimpleDateFormat)dateFormater2.get()).format(s)))
            {
                flag = true;
            }
        }
        return flag;
    }

    public static String replace(String s, String s1, String s2)
    {
        if (s2 == null || s == null || s1 == null)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer("");
        do
        {
            int i = s2.indexOf(s);
            if (i == -1)
            {
                stringbuffer.append(s2);
                return stringbuffer.toString();
            }
            stringbuffer.append((new StringBuilder(String.valueOf(s2.substring(0, i)))).append(s1).toString());
            s2 = s2.substring(s.length() + i);
            s2.indexOf(s);
        } while (true);
    }

    public static String replaceBlank(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s1 = Pattern.compile("\r").matcher(s).replaceAll("");
        }
        return s1;
    }

    public static String replaceSomeString(String s)
    {
        String s1 = "";
        if (s != null)
        {
            try
            {
                s1 = s.replaceAll("\r", "").replaceAll("&gt;", ">").replaceAll("&ldquo;", "\u201C").replaceAll("&rdquo;", "\u201D").replaceAll("&#39;", "'").replaceAll("&nbsp;", "").replaceAll("<br\\s*/>", "\n").replaceAll("&quot;", "\"").replaceAll("&lt;", "<").replaceAll("&lsquo;", "\u300A").replaceAll("&rsquo;", "\u300B").replaceAll("&middot;", "\267").replace("&mdash;", "\u2014").replace("&hellip;", "\u2026").replace("&amp;", "\327").replaceAll("\\s*", "").trim().replaceAll("<p>", "\n      ").replaceAll("</p>", "").replaceAll("<div.*?>", "\n      ").replaceAll("</div>", "");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return "";
            }
        }
        return s1;
    }

    public static String[] split(String s, String s1)
    {
        if (s == null || s1 == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        do
        {
            int i = s.indexOf(s1);
            if (i == -1)
            {
                arraylist.add(s);
                return (String[])arraylist.toArray(new String[0]);
            }
            arraylist.add(s.substring(0, i));
            s = s.substring(s1.length() + i);
        } while (true);
    }

    public static String subString(String s, int i)
        throws Exception
    {
        s = s.getBytes("Unicode");
        int l = 0;
        int j = 2;
        do
        {
            if (j >= s.length || l >= i)
            {
                i = j;
                int k;
                if (j % 2 == 1)
                {
                    if (s[j - 1] != 0)
                    {
                        i = j - 1;
                    } else
                    {
                        i = j + 1;
                    }
                }
                return new String(s, 0, i, "Unicode");
            }
            if (j % 2 == 1)
            {
                k = l + 1;
            } else
            {
                k = l;
                if (s[j] != 0)
                {
                    k = l + 1;
                }
            }
            j++;
            l = k;
        } while (true);
    }

    public static boolean toBool(String s)
    {
        boolean flag;
        try
        {
            flag = Boolean.parseBoolean(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }

    public static String toDBC(String s)
    {
        int i;
        s = s.toCharArray();
        i = 0;
_L2:
        if (i >= s.length)
        {
            return new String(s);
        }
        if (s[i] != '\u3000')
        {
            break; /* Loop/switch isn't completed */
        }
        s[i] = ' ';
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (s[i] <= '\uFF00' || s[i] >= '\uFF5F') goto _L4; else goto _L3
_L3:
        s[i] = (char)(s[i] - 65248);
          goto _L4
    }

    public static Date toDate(String s)
    {
        try
        {
            s = ((SimpleDateFormat)dateFormater.get()).parse(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static int toInt(Object obj)
    {
        if (obj == null)
        {
            return 0;
        } else
        {
            return toInt(obj.toString(), 0);
        }
    }

    public static int toInt(String s, int i)
    {
        int j;
        try
        {
            j = Integer.parseInt(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return i;
        }
        return j;
    }

    public static String toLength(String s, int i)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        return s1;
_L2:
        if (i <= 0)
        {
            return "";
        }
        int j = s.getBytes("GBK").length;
        s1 = s;
        if (j <= i) goto _L4; else goto _L3
_L3:
        StringBuffer stringbuffer = new StringBuffer();
        int k = 0;
        i -= 3;
        do
        {
            if (i <= 0)
            {
                stringbuffer.append("...");
                return stringbuffer.toString();
            }
            char c = s.charAt(k);
            if (c < '\200')
            {
                i--;
            } else
            {
                i = i - 1 - 1;
            }
            stringbuffer.append(c);
            k++;
        } while (true);
        Exception exception;
        exception;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public static long toLong(String s)
    {
        long l;
        try
        {
            l = Long.parseLong(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return 0L;
        }
        return l;
    }

    public static String trimmy(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s1 = s.replaceAll("-", "").replaceAll("\\+", "");
        }
        return s1;
    }

}
