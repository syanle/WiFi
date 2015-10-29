// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class StatisticsDataUtils
{

    private static final String a = "StatisticsDataUtils";
    private static boolean b = false;
    private static Map c;
    private static Map d = new HashMap();
    private static Map e = new HashMap();

    public StatisticsDataUtils()
    {
    }

    private static String a(StringBuilder stringbuilder)
    {
        if (stringbuilder == null || stringbuilder.length() <= 0)
        {
            return "0";
        } else
        {
            stringbuilder = stringbuilder.toString();
            stringbuilder = stringbuilder.substring(0, stringbuilder.lastIndexOf("("));
            return stringbuilder.substring(stringbuilder.lastIndexOf("+") + 1, stringbuilder.length());
        }
    }

    private static void a(Context context, boolean flag)
    {
        Object obj;
        if (flag)
        {
            obj = "umeng_social_oauth";
        } else
        {
            obj = "umeng_social_method";
        }
        context = context.getSharedPreferences(((String) (obj)), 0).edit();
        if (!flag) goto _L2; else goto _L1
_L1:
        obj = d.keySet().iterator();
_L5:
        if (((Iterator) (obj)).hasNext()) goto _L4; else goto _L3
_L3:
        obj = context;
_L7:
        ((android.content.SharedPreferences.Editor) (obj)).commit();
        return;
_L4:
        String s = (String)((Iterator) (obj)).next();
        context.putInt(s, ((Integer)d.get(s)).intValue());
          goto _L5
_L2:
        Iterator iterator = c.keySet().iterator();
_L8:
        obj = context;
        if (!iterator.hasNext()) goto _L7; else goto _L6
_L6:
        SHARE_MEDIA share_media = (SHARE_MEDIA)iterator.next();
        StringBuilder stringbuilder = (StringBuilder)c.get(share_media);
        if (stringbuilder != null && stringbuilder.length() > 0)
        {
            context = context.putString(share_media.toString(), stringbuilder.toString());
        }
          goto _L8
    }

    private static void a(SHARE_MEDIA share_media, Map map)
    {
        StringBuilder stringbuilder = (StringBuilder)map.get(share_media);
        if (!TextUtils.isEmpty(stringbuilder.toString()))
        {
            if (a(stringbuilder, 1))
            {
                increaseNum(stringbuilder, 1);
            }
        } else
        {
            map.put(share_media, new StringBuilder("1(0-1)+"));
        }
        map.put(SHARE_MEDIA.GENERIC, new StringBuilder());
    }

    private static boolean a(StringBuilder stringbuilder, int i)
    {
        while (stringbuilder == null || TextUtils.isEmpty(stringbuilder.toString()) || !(new StringBuilder("+")).append(stringbuilder.toString()).toString().contains((new StringBuilder("+")).append(i).append("(").toString())) 
        {
            return false;
        }
        return true;
    }

    public static void addOauthData(Context context, SHARE_MEDIA share_media, int i)
    {
        int j;
        getStatisticsData(context, share_media, true);
        j = SHARE_MEDIA.getPlatformOperation(share_media);
        if (i != 1) goto _L2; else goto _L1
_L1:
        share_media = (new StringBuilder(String.valueOf(j))).append("-3-s").toString();
        i = ((Integer)d.get(share_media)).intValue();
        d.put(share_media, Integer.valueOf(i + 1));
_L4:
        a(context, true);
        return;
_L2:
        if (i == 0)
        {
            share_media = (new StringBuilder(String.valueOf(j))).append("-3-f").toString();
            i = ((Integer)d.get(share_media)).intValue();
            d.put(share_media, Integer.valueOf(i + 1));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void addStatisticsData(Context context, SHARE_MEDIA share_media, int i)
    {
        if (i < 1 || i > 24)
        {
            return;
        }
        getStatisticsData(context, share_media, false);
        if (b && share_media != SHARE_MEDIA.GENERIC)
        {
            a(share_media, c);
            b = false;
        }
        if (share_media == SHARE_MEDIA.GENERIC)
        {
            b = true;
        }
        share_media = (StringBuilder)c.get(share_media);
        String s = a(share_media);
        if (share_media.length() <= 0)
        {
            share_media.append(String.valueOf(i)).append("(0-1)+");
        } else
        if (a(share_media, i))
        {
            increaseNum(share_media, i);
        } else
        {
            share_media.append(String.valueOf(i)).append("(").append(String.valueOf(s)).append("-").append("1").append(")").append("+");
        }
        a(context, false);
    }

    public static void cleanStatisticsData(Context context, boolean flag)
    {
        context.getSharedPreferences("umeng_social_oauth", 0).edit().clear().commit();
        d.clear();
        if (flag)
        {
            context.getSharedPreferences("umeng_social_method", 0).edit().clear().commit();
            c.clear();
            context.getSharedPreferences("umeng_social_shake", 0).edit().clear().commit();
            e.clear();
        }
    }

    public static Map convertStatisticsData(String s, String s1, Map map)
    {
        int i = 0;
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        return map;
_L2:
        String as[];
        String s2;
        String s3;
        int j;
        int k;
        int l;
        try
        {
            as = s1.split("\\+");
            l = as.length;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return map;
        }
_L4:
        if (i >= l) goto _L1; else goto _L3
_L3:
        s2 = as[i];
        s1 = s2.substring(0, s2.indexOf("("));
        s3 = s2.substring(s2.indexOf("(") + 1, s2.indexOf("-"));
        s2 = s2.substring(s2.indexOf("-") + 1, s2.indexOf(")"));
        s3 = (new StringBuilder(String.valueOf(s))).append("-").append(s3).append("-").append(s1).toString();
        if (map.get(s3) == null)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        s1 = map.get(s3).toString();
_L5:
        k = Integer.parseInt(s2);
        j = k;
        if (!TextUtils.isEmpty(s1))
        {
            j = k + Integer.parseInt(s1);
        }
        map.put(s3, String.valueOf(j));
        i++;
          goto _L4
        s1 = "";
          goto _L5
    }

    public static Map getOauthStatisticsData()
    {
        return d;
    }

    public static Map getSharkStatisticsData(Context context)
    {
        int i = context.getSharedPreferences("umeng_social_shake", 0).getInt("shake", 0);
        e.put("shake", Integer.valueOf(i));
        return e;
    }

    public static Map getStatisticsData()
    {
        return c;
    }

    public static void getStatisticsData(Context context)
    {
        context = context.getSharedPreferences("umeng_social_oauth", 0);
        SHARE_MEDIA ashare_media[] = SHARE_MEDIA.values();
        int j = ashare_media.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            int k = SHARE_MEDIA.getPlatformOperation(ashare_media[i]);
            if (k != -1)
            {
                int l = context.getInt((new StringBuilder(String.valueOf(k))).append("-3-s").toString(), 0);
                int i1 = context.getInt((new StringBuilder(String.valueOf(k))).append("-3-f").toString(), 0);
                d.put((new StringBuilder(String.valueOf(k))).append("-3-s").toString(), Integer.valueOf(l));
                d.put((new StringBuilder(String.valueOf(k))).append("-3-f").toString(), Integer.valueOf(i1));
            }
            i++;
        } while (true);
    }

    public static void getStatisticsData(Context context, SHARE_MEDIA share_media, boolean flag)
    {
        String s;
        if (flag)
        {
            s = "umeng_social_oauth";
        } else
        {
            s = "umeng_social_method";
        }
        context = context.getSharedPreferences(s, 0);
        if (flag)
        {
            int i = SHARE_MEDIA.getPlatformOperation(share_media);
            int k = context.getInt((new StringBuilder(String.valueOf(i))).append("-3-s").toString(), 0);
            int i1 = context.getInt((new StringBuilder(String.valueOf(i))).append("-3-f").toString(), 0);
            d.put((new StringBuilder(String.valueOf(i))).append("-3-s").toString(), Integer.valueOf(k));
            d.put((new StringBuilder(String.valueOf(i))).append("-3-f").toString(), Integer.valueOf(i1));
        } else
        {
            share_media = SHARE_MEDIA.values();
            int l = share_media.length;
            int j = 0;
            while (j < l) 
            {
                SHARE_MEDIA share_media1 = share_media[j];
                StringBuilder stringbuilder = new StringBuilder(context.getString(share_media1.toString(), ""));
                c.remove(share_media1.toString());
                c.put(share_media1, stringbuilder);
                j++;
            }
        }
    }

    public static void increaseNum(StringBuilder stringbuilder, int i)
    {
        String s = stringbuilder.toString();
        i = s.indexOf((new StringBuilder(String.valueOf(i))).append("(").toString());
        s = s.substring(i);
        if (s.contains("+"))
        {
            s = s.substring(0, s.indexOf("+"));
            if (s.contains("-") && s.contains(")"))
            {
                int j = s.indexOf("-");
                int k = s.lastIndexOf(")");
                s = s.substring(j + 1, k);
                if (!TextUtils.isEmpty(s))
                {
                    int l = Integer.valueOf(s).intValue();
                    stringbuilder.delete(i + j + 1, k + i);
                    stringbuilder.insert(i + j + 1, String.valueOf(l + 1));
                }
            }
        }
    }

    public static void saveSharkStatisticsData(Context context)
    {
        getSharkStatisticsData(context);
        if (!e.containsKey("shake"))
        {
            e.put("shake", Integer.valueOf(0));
        }
        context = context.getSharedPreferences("umeng_social_shake", 0).edit();
        context.putInt("shake", ((Integer)e.get("shake")).intValue() + 1);
        context.commit();
    }

    static 
    {
        int i = 0;
        c = new HashMap();
        SHARE_MEDIA ashare_media[] = SHARE_MEDIA.values();
        int j = ashare_media.length;
        do
        {
            if (i >= j)
            {
                return;
            }
            SHARE_MEDIA share_media = ashare_media[i];
            c.put(share_media, new StringBuilder());
            i++;
        } while (true);
    }
}
