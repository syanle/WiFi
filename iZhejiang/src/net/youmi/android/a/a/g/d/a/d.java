// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import net.youmi.android.a.b.b.e;

public class d
{

    public long a;
    public String b;
    public int c;
    public long d;
    public long e;
    public String f;
    public long g;
    public String h;

    public d()
    {
        e = 0L;
        f = null;
        g = 0L;
        h = null;
    }

    public d(long l, String s, int i, long l1)
    {
        e = 0L;
        f = null;
        g = 0L;
        h = null;
        a = l;
        b = s;
        c = i;
        d = l1;
    }

    boolean a()
    {
        return !net.youmi.android.a.b.b.e.a(b) && c > -1 && a != 0L && d != 0L && d > a;
    }

    public String toString()
    {
        return (new StringBuilder()).append("EffRecordObject [mGenerateTime=").append(a).append(", mUrl=").append(b).append(", mActionType=").append(c).append(", mDeadline=").append(d).append(", mFinishTime=").append(e).append(", mPreUrl=").append(f).append(", mIntervalTime_ms=").append(g).append(", mPackageName=").append(h).append("]").toString();
    }
}
