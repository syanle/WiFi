// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b.a;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class a
{

    public static boolean a(long l, long l1)
    {
        boolean flag;
        try
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            flag = simpledateformat.format(new Date(l)).equals(simpledateformat.format(new Date(l1)));
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return flag;
    }
}
