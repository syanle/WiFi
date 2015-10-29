// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import net.youmi.android.a.a.c;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.c.c.a;
import net.youmi.android.a.c.c.b;

class j
{

    private Context a;
    private String b;

    public j(Context context, String s)
    {
        a = context;
        b = s;
    }

    private String b()
    {
        StringBuilder stringbuilder;
        ByteArrayOutputStream bytearrayoutputstream;
        String s1;
        b b1;
        b1 = new b(a);
        stringbuilder = new StringBuilder(512);
        s1 = net.youmi.android.a.b.d.b.a(4);
        stringbuilder.append(c.c()).append("?s=");
        stringbuilder.append("00000");
        stringbuilder.append(3);
        stringbuilder.append(net.youmi.android.a.c.c.a.a(a));
        stringbuilder.append(s1);
        bytearrayoutputstream = new ByteArrayOutputStream(512);
        net.youmi.android.a.a.g.d.b.a("9", bytearrayoutputstream);
        bytearrayoutputstream.write(38);
        String s;
        if (b1.e())
        {
            s = "1";
        } else
        {
            s = "0";
        }
        try
        {
            net.youmi.android.a.a.g.d.b.a(s, bytearrayoutputstream);
        }
        catch (Throwable throwable9) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.d(), bytearrayoutputstream);
        }
        catch (Throwable throwable8) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.c(), bytearrayoutputstream);
        }
        catch (Throwable throwable7) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.b(), bytearrayoutputstream);
        }
        catch (Throwable throwable6) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(b1.a(), bytearrayoutputstream);
        }
        catch (Throwable throwable5) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.a(a), bytearrayoutputstream);
        }
        catch (Throwable throwable4) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.f(a), bytearrayoutputstream);
        }
        catch (Throwable throwable3) { }
        bytearrayoutputstream.write(38);
        try
        {
            net.youmi.android.a.a.g.d.b.a(e.g(a), bytearrayoutputstream);
        }
        catch (Throwable throwable2) { }
        bytearrayoutputstream.write(38);
        try
        {
            if (b == null)
            {
                b = "";
            }
            net.youmi.android.a.a.g.d.b.a(b, bytearrayoutputstream);
        }
        catch (Throwable throwable1) { }
        s = g.a((new StringBuilder()).append("ef45N92f053P36cd").append(net.youmi.android.a.c.c.a.b(a)).append(s1).toString());
        try
        {
            stringbuilder.append(net.youmi.android.a.b.d.b.a(bytearrayoutputstream.toByteArray(), s, 0xc5939));
        }
        catch (Throwable throwable) { }
        return stringbuilder.toString();
    }

    void a()
    {
        try
        {
            net.youmi.android.a.b.i.a.b b1 = new net.youmi.android.a.b.i.a.b();
            b1.b("a_sdk_prt_5");
            b1.a(net.youmi.android.a.c.b.a());
            String s = b();
            net.youmi.android.a.c.d.c.a(a, s, b1);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
