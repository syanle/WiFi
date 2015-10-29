// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import u.aly.aa;
import u.aly.ak;
import u.aly.bq;
import u.aly.s;

public class ReportPolicy
{
    public static class a extends g
    {

        private ak a;
        private aa b;

        public boolean a()
        {
            return a.c();
        }

        public boolean a(boolean flag)
        {
            long l = System.currentTimeMillis();
            long l1 = a.a();
            return l - b.c >= l1;
        }

        public a(aa aa1, ak ak1)
        {
            b = aa1;
            a = ak1;
        }
    }

    public static class b extends g
    {

        private long a;
        private long b;

        public boolean a()
        {
            return System.currentTimeMillis() - b < a;
        }

        public boolean a(boolean flag)
        {
            return System.currentTimeMillis() - b >= a;
        }

        public b(int i)
        {
            b = 0L;
            a = i;
            b = System.currentTimeMillis();
        }
    }

    public static class c extends g
    {

        public boolean a(boolean flag)
        {
            return flag;
        }

        public c()
        {
        }
    }

    public static class d extends g
    {

        private long a;
        private long b;
        private aa c;

        public boolean a(boolean flag)
        {
            return System.currentTimeMillis() - c.c >= b;
        }

        public long b()
        {
            return b;
        }

        public d(aa aa1, long l)
        {
            a = 0x15f90L;
            c = aa1;
            long l1 = l;
            if (l < a)
            {
                l1 = a;
            }
            b = l1;
        }
    }

    public static class e extends g
    {

        private final int a;
        private s b;

        public boolean a(boolean flag)
        {
            return b.b() > a;
        }

        public e(s s1, int i)
        {
            a = i;
            b = s1;
        }
    }

    public static class f extends g
    {

        private long a;
        private aa b;

        public boolean a(boolean flag)
        {
            return System.currentTimeMillis() - b.c >= a;
        }

        public f(aa aa1)
        {
            a = 0x5265c00L;
            b = aa1;
        }
    }

    public static class g
    {

        public boolean a()
        {
            return true;
        }

        public boolean a(boolean flag)
        {
            return true;
        }

        public g()
        {
        }
    }

    public static class h extends g
    {

        private Context a;

        public boolean a(boolean flag)
        {
            return bq.k(a);
        }

        public h(Context context)
        {
            a = null;
            a = context;
        }
    }


    public static final int BATCH_AT_LAUNCH = 1;
    public static final int BATCH_BY_INTERVAL = 6;
    public static final int BATCH_BY_SIZE = 7;
    public static final int DAILY = 4;
    public static final int REALTIME = 0;
    public static final int WIFIONLY = 5;
    static final int a = 2;
    static final int b = 3;

    public ReportPolicy()
    {
    }
}
