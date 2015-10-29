// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

public final class Options
{

    private static Map table;

    private Options()
    {
    }

    public static boolean check(String s)
    {
        while (table == null || table.get(s.toLowerCase()) == null) 
        {
            return false;
        }
        return true;
    }

    public static void clear()
    {
        table = null;
    }

    public static int intValue(String s)
    {
        s = value(s);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        int i = Integer.parseInt(s);
        if (i > 0)
        {
            return i;
        }
        break MISSING_BLOCK_LABEL_21;
        s;
        return -1;
    }

    public static void refresh()
    {
        Object obj = System.getProperty("dnsjava.options");
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = new StringTokenizer(((String) (obj)), ",");
_L5:
        if (((StringTokenizer) (obj)).hasMoreTokens()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        String s = ((StringTokenizer) (obj)).nextToken();
        int i = s.indexOf('=');
        if (i == -1)
        {
            set(s);
        } else
        {
            set(s.substring(0, i), s.substring(i + 1));
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static void set(String s)
    {
        if (table == null)
        {
            table = new HashMap();
        }
        table.put(s.toLowerCase(), "true");
    }

    public static void set(String s, String s1)
    {
        if (table == null)
        {
            table = new HashMap();
        }
        table.put(s.toLowerCase(), s1.toLowerCase());
    }

    public static void unset(String s)
    {
        if (table == null)
        {
            return;
        } else
        {
            table.remove(s.toLowerCase());
            return;
        }
    }

    public static String value(String s)
    {
        if (table == null)
        {
            return null;
        } else
        {
            return (String)table.get(s.toLowerCase());
        }
    }

    static 
    {
        try
        {
            refresh();
        }
        catch (SecurityException securityexception) { }
    }
}
