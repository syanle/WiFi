// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.a;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import net.youmi.android.a.b.d.b;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.h.e;
import net.youmi.android.offers.OffersManager;

public class a extends net.youmi.android.a.a.g.d.a
{

    public static String b(Context context, String s)
    {
        if (net.youmi.android.a.c.c.a.d(context))
        {
            break MISSING_BLOCK_LABEL_14;
        }
        net.youmi.android.a.c.b.a.b("Error : appid or secret is empty !");
        return null;
        StringBuilder stringbuilder;
        ByteArrayOutputStream bytearrayoutputstream;
        String s1;
        net.youmi.android.a.c.c.b b1;
        long l;
        stringbuilder = new StringBuilder(512);
        l = System.currentTimeMillis() / 1000L;
        s1 = net.youmi.android.a.b.d.b.a(4);
        b1 = new net.youmi.android.a.c.c.b(context);
        stringbuilder.append(net.youmi.android.offers.b.b.i()).append("?s=");
        stringbuilder.append("00000");
        stringbuilder.append(3);
        stringbuilder.append(net.youmi.android.a.c.c.a.a(context));
        stringbuilder.append(s1);
        bytearrayoutputstream = new ByteArrayOutputStream(512);
        net.youmi.android.a.a.g.d.b.a("9", bytearrayoutputstream);
        bytearrayoutputstream.write(38);
        Throwable throwable;
        Throwable throwable2;
        try
        {
            net.youmi.android.a.a.g.d.b.a(Long.toString(l), bytearrayoutputstream);
        }
        catch (Throwable throwable3) { }
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(b1.d(), bytearrayoutputstream);
_L1:
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(b1.c(), bytearrayoutputstream);
_L2:
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(b1.b(), bytearrayoutputstream);
_L3:
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(b1.a(), bytearrayoutputstream);
_L4:
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(e.f(context), bytearrayoutputstream);
_L5:
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(e.a(context), bytearrayoutputstream);
_L6:
        bytearrayoutputstream.write(38);
        net.youmi.android.a.a.g.d.b.a(OffersManager.getInstance(context).getCustomUserId(), bytearrayoutputstream);
_L7:
        bytearrayoutputstream.write(38);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        s = s.trim();
        if (s.length() > 0)
        {
            net.youmi.android.a.a.g.d.b.a(s, bytearrayoutputstream);
        }
_L8:
        context = g.a((new StringBuilder()).append("ef45N92f053P36cd").append(net.youmi.android.a.c.c.a.b(context)).append(s1).toString());
        stringbuilder.append(net.youmi.android.a.b.d.b.a(bytearrayoutputstream.toByteArray(), context, 0xc5939));
_L9:
        Throwable throwable1;
        try
        {
            return stringbuilder.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.b("warn: stat url is null");
        }
        break MISSING_BLOCK_LABEL_323;
        throwable1;
        net.youmi.android.a.c.b.a.a(throwable1);
          goto _L1
        return null;
        throwable2;
        net.youmi.android.a.c.b.a.a(throwable2);
          goto _L2
        throwable2;
        net.youmi.android.a.c.b.a.a(throwable2);
          goto _L3
        throwable;
        net.youmi.android.a.c.b.a.a(throwable);
          goto _L4
        throwable;
        net.youmi.android.a.c.b.a.a(throwable);
          goto _L5
        throwable;
        net.youmi.android.a.c.b.a.a(throwable);
          goto _L6
        throwable;
        net.youmi.android.a.c.b.a.a(throwable);
          goto _L7
        s;
        net.youmi.android.a.c.b.a.a(s);
          goto _L8
        context;
        net.youmi.android.a.c.b.a.a(context);
          goto _L9
    }
}
