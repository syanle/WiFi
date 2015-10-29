// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.g;


// Referenced classes of package net.youmi.android.a.a.e.g:
//            b

public class a
{

    private net.youmi.android.a.a.a.a.a a;
    private int b;
    private String c;
    private String d;
    private String e;
    private long f;
    private String g;
    private boolean h;
    private boolean i;
    private b j;

    public a()
    {
        i = true;
    }

    public long a()
    {
        return f;
    }

    public void a(int k)
    {
        b = k;
    }

    public void a(long l)
    {
        f = l;
    }

    public void a(String s)
    {
        c = s;
    }

    public void a(net.youmi.android.a.a.a.a.a a1)
    {
        a = a1;
    }

    public void a(b b1)
    {
        j = b1;
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    public String b()
    {
        return c;
    }

    public void b(String s)
    {
        d = s;
    }

    public void b(boolean flag)
    {
        i = flag;
    }

    public String c()
    {
        return d;
    }

    public void c(String s)
    {
        e = s;
    }

    public String d()
    {
        return e;
    }

    public void d(String s)
    {
        g = s;
    }

    public boolean e()
    {
        return h;
    }

    public net.youmi.android.a.a.a.a.a f()
    {
        return a;
    }

    public b g()
    {
        return j;
    }

    public boolean h()
    {
        return i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("JsModel_AppItem [\n  mAppInfo=");
        stringbuilder.append(a);
        stringbuilder.append(" \n  mSourceProductID=");
        stringbuilder.append(b);
        stringbuilder.append(" \n  mStartUriAfterInstall=");
        stringbuilder.append(c);
        stringbuilder.append(" \n  mAlertTipsAfterInstall_BeforeStart=");
        stringbuilder.append(d);
        stringbuilder.append(" \n  mAlertTipsBeforeInstall=");
        stringbuilder.append(e);
        stringbuilder.append(" \n  mRequiredExperienceTime_ms=");
        stringbuilder.append(f);
        stringbuilder.append(" \n  mParams=");
        stringbuilder.append(g);
        stringbuilder.append(h);
        stringbuilder.append(" \n  mIsCreateShortCut_AfterInstall=");
        stringbuilder.append(i);
        stringbuilder.append(" \n  mGwParam=");
        stringbuilder.append(j);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
