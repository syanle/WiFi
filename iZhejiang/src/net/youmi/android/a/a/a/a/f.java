// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import net.youmi.android.a.b.k.j;

public class f
{

    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private int g;
    private long h;

    public f()
    {
        a = false;
        b = false;
        c = false;
        d = false;
        e = false;
        f = false;
        g = -1;
    }

    public void a(long l)
    {
        h = l;
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean a()
    {
        return c;
    }

    public boolean a(Context context, String s)
    {
        try
        {
            context = j.c(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        b = true;
        g = ((PackageInfo) (context)).versionCode;
_L1:
        a = true;
        return true;
        b = false;
        g = -1;
          goto _L1
    }

    public void b(boolean flag)
    {
        d = flag;
    }

    public boolean b()
    {
        return d;
    }

    public void c(boolean flag)
    {
        f = flag;
    }

    public boolean c()
    {
        return f;
    }

    public void d(boolean flag)
    {
        e = flag;
    }

    public boolean d()
    {
        return e;
    }

    public boolean e()
    {
        return b;
    }

    public int f()
    {
        return g;
    }

    public long g()
    {
        return h;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Model_App_Status [\n  mIsCheckInstallStatus=");
        stringbuilder.append(a);
        stringbuilder.append("\n  mIsInstalledInDevice=");
        stringbuilder.append(b);
        stringbuilder.append("\n  mIsServerHadInstallRecorded=");
        stringbuilder.append(c);
        stringbuilder.append("\n  mIsServerHadExperienceRecorded=");
        stringbuilder.append(d);
        stringbuilder.append("\n  mIsLocalHadAt3Record=");
        stringbuilder.append(e);
        stringbuilder.append("\n  mIsLocalHadExperienceRecord=");
        stringbuilder.append(f);
        stringbuilder.append("\n  mInstalledVersionCode=");
        stringbuilder.append(g);
        stringbuilder.append("\n  mUpdateTime_ms=");
        stringbuilder.append(h);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
