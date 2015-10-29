// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d;

import android.content.Context;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import net.youmi.android.a.a.c;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.d.j;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.b.k.f;
import net.youmi.android.a.b.k.l;
import net.youmi.android.a.b.k.n;
import net.youmi.android.a.c.c.b;

// Referenced classes of package net.youmi.android.a.a.g.d:
//            b

public class a
{

    public static String a(Context context)
    {
        byte byte0;
        byte0 = 3;
        if (context == null)
        {
            return null;
        }
        if (!net.youmi.android.a.c.c.a.d(context))
        {
            return null;
        }
        String s;
        Object obj;
        String s1;
        Object obj1;
        b b1;
        boolean flag;
        try
        {
            b1 = new b(context);
            obj = net.youmi.android.a.c.c.a.a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        s = "";
        if (obj == null) goto _L2; else goto _L1
_L1:
        flag = ((String) (obj)).equals("");
        if (flag) goto _L2; else goto _L3
_L3:
        obj = (new StringBuilder()).append(((String) (obj)).substring(0, 1)).append(net.youmi.android.a.b.d.b.a(((String) (obj)).substring(1))).toString();
        s = ((String) (obj));
_L4:
        obj1 = c.b();
        if (obj1 == null)
        {
            return null;
        }
        s1 = net.youmi.android.a.b.d.b.a(4);
        obj = new StringBuffer(512);
        ((StringBuffer) (obj)).append(((String) (obj1)));
        ((StringBuffer) (obj)).append("?s=");
        ((StringBuffer) (obj)).append("00000");
        ((StringBuffer) (obj)).append(3);
        ((StringBuffer) (obj)).append(s);
        ((StringBuffer) (obj)).append(s1);
        obj1 = new ByteArrayOutputStream(512);
        net.youmi.android.a.a.g.d.b.a("22", ((ByteArrayOutputStream) (obj1)));
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.a(context), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable15) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.f(context), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable14) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.a(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable13) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.b(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable12) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.d(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable11) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.b(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable10) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.d(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable9) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.c(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable8) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.c(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable7) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Locale.getDefault().getCountry(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable6) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Locale.getDefault().getLanguage(), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable5) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(String.valueOf(f.a(context).b()), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable4) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(String.valueOf(f.a(context).c()), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable3) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(String.valueOf(f.a(context).d()), ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable2) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        if (n.a(context))
        {
            s = "1";
        } else
        {
            s = "0";
        }
        Throwable throwable;
        try
        {
            net.youmi.android.a.a.g.d.b.a(s, ((ByteArrayOutputStream) (obj1)));
        }
        catch (Throwable throwable1) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        Throwable throwable16;
        if (!l.a(context))
        {
            byte0 = 0;
        }
        break MISSING_BLOCK_LABEL_738;
        int i = byte0;
        if (false)
        {
            i = byte0 | 4;
        }
        try
        {
            if (!k.c(context).equals("wifi"));
            net.youmi.android.a.a.g.d.b.a(Integer.toString(0), ((ByteArrayOutputStream) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        s = net.youmi.android.a.c.c.a.c(context);
        if (s != null)
        {
            try
            {
                net.youmi.android.a.a.g.d.b.a(s, ((ByteArrayOutputStream) (obj1)));
            }
            // Misplaced declaration of an exception variable
            catch (Throwable throwable) { }
        }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Build.BOARD, ((ByteArrayOutputStream) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Build.BRAND, ((ByteArrayOutputStream) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Build.DEVICE, ((ByteArrayOutputStream) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        ((ByteArrayOutputStream) (obj1)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(String.valueOf(System.currentTimeMillis() / 1000L), ((ByteArrayOutputStream) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        context = g.a((new StringBuilder()).append("ef45N92f053P36cd").append(net.youmi.android.a.c.c.a.b(context)).append(s1).toString());
        try
        {
            ((StringBuffer) (obj)).append(net.youmi.android.a.b.d.b.a(((ByteArrayOutputStream) (obj1)).toByteArray(), context, 0xc5939));
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = ((StringBuffer) (obj)).toString();
        return context;
        throwable16;
        if (true) goto _L4; else goto _L2
_L2:
        return null;
    }

    public static String a(Context context, String s)
    {
        if (context == null || s == null)
        {
            return null;
        }
        try
        {
            net.youmi.android.a.b.i.c c1 = new net.youmi.android.a.b.i.c();
            c1.a(s);
            context = new net.youmi.android.a.c.d.b(context, c1);
            context.b();
            context = context.e();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    public static String a(Context context, String s, String s1, int i)
    {
        return a(context, s, s1, i, null);
    }

    public static String a(Context context, String s, String s1, int i, String s2)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (!net.youmi.android.a.c.c.a.d(context)) goto _L1; else goto _L3
_L3:
        Object obj = s2;
        if (net.youmi.android.a.b.b.e.a(s2))
        {
            obj = "00000";
        }
        String s3;
        f f1;
        b b1;
        long l1;
        try
        {
            s2 = new StringBuilder(512);
            l1 = System.currentTimeMillis() / 1000L;
            s3 = net.youmi.android.a.b.d.b.a(4);
            b1 = new b(context);
            f1 = f.a(context);
            s2.append(s).append("?s=");
            s2.append(((String) (obj)));
            s2.append(3);
            s2.append(net.youmi.android.a.c.c.a.a(context));
            s2.append(s3);
            obj = new ByteArrayOutputStream(512);
            net.youmi.android.a.a.g.d.b.a("33", ((ByteArrayOutputStream) (obj)));
            ((ByteArrayOutputStream) (obj)).write(38);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.d(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.c(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.b(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.a(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.a(context), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.f(context), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.d(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.b(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.c(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Build.BOARD, ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Build.BRAND, ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Build.DEVICE, ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        if (b1.e())
        {
            s = "1";
        } else
        {
            s = "0";
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a(s, ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(f1.g()), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(f1.h()), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(f1.e()), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(i), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(context.getPackageName(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(net.youmi.android.a.c.c.a.e(context), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(net.youmi.android.a.c.c.a.f(context)), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(net.youmi.android.a.c.c.a.g(context)), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        s = net.youmi.android.a.c.c.a.c(context);
        if (s != null)
        {
            try
            {
                net.youmi.android.a.a.g.d.b.a(s, ((ByteArrayOutputStream) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(k.c(context), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.h(context), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        ((ByteArrayOutputStream) (obj)).write(38);
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(net.youmi.android.a.a.f.a.a(context), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        if (n.a(context))
        {
            s = "1";
        } else
        {
            s = "0";
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a(s, ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Long.toString(l1), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Locale.getDefault().getCountry(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Locale.getDefault().getLanguage(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        if (net.youmi.android.a.c.c.a.b())
        {
            s = "1";
        } else
        {
            s = "0";
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a(s, ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        ((ByteArrayOutputStream) (obj)).write(38);
        s = s1;
        if (net.youmi.android.a.b.b.e.a(s1))
        {
            s = "";
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a((new StringBuilder()).append(s).append(b(context)).toString(), ((ByteArrayOutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        context = g.a((new StringBuilder()).append("ef45N92f053P36cd").append(net.youmi.android.a.c.c.a.b(context)).append(s3).toString());
        try
        {
            s2.append(net.youmi.android.a.b.d.b.a(((ByteArrayOutputStream) (obj)).toByteArray(), context, 0xc5939));
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = s2.toString();
        return context;
    }

    public static String a(Context context, net.youmi.android.a.a.e.g.b b1)
    {
        if (b1 != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (!b1.e() || !net.youmi.android.a.c.c.a.d(context)) goto _L1; else goto _L3
_L3:
        StringBuilder stringbuilder;
        ByteArrayOutputStream bytearrayoutputstream;
        long l1;
        stringbuilder = new StringBuilder(512);
        l1 = System.currentTimeMillis() / 1000L;
        stringbuilder.append(b1.a()).append("?s=");
        stringbuilder.append("00000");
        stringbuilder.append(3);
        stringbuilder.append(net.youmi.android.a.c.c.a.a(context));
        stringbuilder.append(b1.b());
        bytearrayoutputstream = new ByteArrayOutputStream(512);
        net.youmi.android.a.a.g.d.b.a("2", bytearrayoutputstream);
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(Long.toString(l1), bytearrayoutputstream);
        }
        catch (Throwable throwable1) { }
        try
        {
            bytearrayoutputstream.write(38);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a((new StringBuilder()).append(b1.d()).append(b(context)).toString(), bytearrayoutputstream);
        }
        catch (Throwable throwable) { }
        context = g.a((new StringBuilder()).append("ef45N92f053P36cd").append(net.youmi.android.a.c.c.a.b(context)).append(b1.b()).toString());
        try
        {
            stringbuilder.append(net.youmi.android.a.b.d.b.a(bytearrayoutputstream.toByteArray(), context, 0xc5939));
            stringbuilder.append(',');
            stringbuilder.append(b1.c());
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = stringbuilder.toString();
        return context;
    }

    public static String a(Context context, net.youmi.android.a.a.e.g.b b1, int i)
    {
        if (b1 != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (!b1.e() || !net.youmi.android.a.c.c.a.d(context)) goto _L1; else goto _L3
_L3:
        StringBuilder stringbuilder;
        ByteArrayOutputStream bytearrayoutputstream;
        long l1;
        stringbuilder = new StringBuilder(512);
        l1 = System.currentTimeMillis() / 1000L;
        stringbuilder.append(b1.a()).append("?s=");
        stringbuilder.append("00000");
        stringbuilder.append(3);
        stringbuilder.append(net.youmi.android.a.c.c.a.a(context));
        stringbuilder.append(b1.b());
        bytearrayoutputstream = new ByteArrayOutputStream(512);
        net.youmi.android.a.a.g.d.b.a("3", bytearrayoutputstream);
        bytearrayoutputstream.write(38);
        Throwable throwable;
        try
        {
            net.youmi.android.a.a.g.d.b.a(Long.toString(l1), bytearrayoutputstream);
        }
        catch (Throwable throwable2) { }
        try
        {
            bytearrayoutputstream.write(38);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a(Integer.toString(i), bytearrayoutputstream);
        }
        catch (Throwable throwable1) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a((new StringBuilder()).append(b1.d()).append(b(context)).toString(), bytearrayoutputstream);
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        context = g.a((new StringBuilder()).append("ef45N92f053P36cd").append(net.youmi.android.a.c.c.a.b(context)).append(b1.b()).toString());
        try
        {
            stringbuilder.append(net.youmi.android.a.b.d.b.a(bytearrayoutputstream.toByteArray(), context, 0xc5939));
            stringbuilder.append(',');
            stringbuilder.append(b1.c());
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = stringbuilder.toString();
        return context;
    }

    private static String b(Context context)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            stringbuilder.append((new StringBuilder()).append("&first_ei=").append(e.c(context)).toString());
            stringbuilder.append((new StringBuilder()).append("&first_si=").append(e.e(context)).toString());
            stringbuilder.append((new StringBuilder()).append("&ntype=").append(e.j(context)).toString());
            stringbuilder.append((new StringBuilder()).append("&advid=").append(e.k(context)).toString());
            stringbuilder.append((new StringBuilder()).append("&bssid=").append(e.g(context)).toString());
            context = j.a(stringbuilder.toString());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "";
        }
        return context;
    }
}
