// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;

import android.text.TextUtils;
import android.util.Base64;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            c

public class b extends c
{

    private static int n;
    private static long o;
    public int a;
    public String b;
    public String c;
    public String d;

    public b()
    {
    }

    protected String a()
    {
        return "[AUT]";
    }

    protected void a(long l)
    {
        o = l;
    }

    protected int b()
    {
        return 5000;
    }

    protected int c()
    {
        return 5;
    }

    protected long d()
    {
        return (long)n;
    }

    protected long e()
    {
        return o;
    }

    protected void f()
    {
        n++;
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder(super.toString());
        stringbuilder.append('|').append(a);
        stringbuilder.append('|').append(b);
        stringbuilder.append('|');
        if (TextUtils.isEmpty(d))
        {
            break MISSING_BLOCK_LABEL_114;
        }
        String s1 = Base64.encodeToString(Data.AES128Encode(f.substring(0, 16), d), 0);
        String s = s1;
        if (TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_108;
        }
        s = s1;
        if (s1.contains("\n"))
        {
            s = s1.replace("\n", "");
        }
        stringbuilder.append(s);
_L2:
        stringbuilder.append('|');
        if (!TextUtils.isEmpty(m))
        {
            stringbuilder.append(m);
        }
        stringbuilder.append('|');
        if (!TextUtils.isEmpty(c))
        {
            stringbuilder.append(c);
        }
        return stringbuilder.toString();
        Throwable throwable;
        throwable;
        Ln.e(throwable);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
