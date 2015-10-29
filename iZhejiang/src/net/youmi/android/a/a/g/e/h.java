// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import net.youmi.android.a.a.a;
import net.youmi.android.a.a.c;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.d.k;
import net.youmi.android.a.b.d.l;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.c.c.b;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            i, c

class h
{

    private static final String a = net.youmi.android.a.a.a.a();
    private String b;
    private JSONObject c;
    private int d;
    private Context e;

    h(Context context, String s, int j)
    {
        e = context;
        b = (new StringBuilder()).append(System.currentTimeMillis()).append("").toString();
        d = j;
        a(s, j);
    }

    private Header a(String s, String s1)
    {
        return new i(this, s1, s);
    }

    private void a(String s, int j)
    {
        b b1;
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        c = new JSONObject();
        b1 = new b(e);
        JSONObject jsonobject = c;
        String s1;
        if (b1.e())
        {
            s1 = "1";
        } else
        {
            s1 = "0";
        }
        try
        {
            jsonobject.put("ie", s1);
            c.put("ei", b1.d());
            c.put("si", b1.c());
            c.put("bd", b1.b());
            c.put("andid", net.youmi.android.a.b.h.e.a(e));
            c.put("mac", net.youmi.android.a.b.h.e.f(e));
            c.put("sv", String.format("w%s,s%s", new Object[] {
                "500", "500"
            }));
            c.put("lv", "2014120501");
            c.put("aat", j);
            c.put("pns", s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
    }

    private HashMap b()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("rt", b);
        return hashmap;
    }

    private String c()
    {
        Object obj;
        try
        {
            obj = new StringBuilder();
            java.util.Map.Entry entry;
            for (Iterator iterator = (new TreeMap(b())).entrySet().iterator(); iterator.hasNext(); ((StringBuilder) (obj)).append((String)entry.getKey()).append((String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return "";
        }
        obj = ((StringBuilder) (obj)).toString();
        return ((String) (obj));
    }

    void a()
    {
        byte abyte0[];
        Object obj;
        Object obj1;
        try
        {
            if (c == null)
            {
                return;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append(net.youmi.android.a.c.c.a.b(e)).append("/v1/android/packages");
        ((StringBuilder) (obj)).append(c());
        abyte0 = k.a(l.a(c.toString().getBytes()), a.getBytes());
        ((StringBuilder) (obj)).append(g.a(abyte0));
        obj = g.a(((StringBuilder) (obj)).toString());
        obj1 = new StringBuilder(512);
        ((StringBuilder) (obj1)).append(net.youmi.android.a.a.c.d());
        ((StringBuilder) (obj1)).append("?rt=").append(b);
        ((StringBuilder) (obj1)).append("&sign=").append(((String) (obj)));
        obj = ((StringBuilder) (obj1)).toString();
        obj1 = new net.youmi.android.a.b.i.a.b();
        if (d != 1) goto _L2; else goto _L1
_L1:
        ((net.youmi.android.a.b.i.a.b) (obj1)).b("a_sdk_prt_i");
_L4:
        ((net.youmi.android.a.b.i.a.b) (obj1)).a(net.youmi.android.a.c.b.a());
        Header header = a("X-YM-APP", net.youmi.android.a.c.c.a.b(e));
        Header header1 = a("Content-Type", "application/octet-stream");
        Header header2 = a("X-YM-SESSION", net.youmi.android.a.b.h.e.a(e));
        Header header3 = a("X-YM-SESSION", net.youmi.android.a.b.h.e.a(e));
        Header header4 = a("X-YM-Encoding", "deflate,enc4");
        String s = net.youmi.android.a.c.d.c.a(e, ((String) (obj)), abyte0, new Header[] {
            header, header1, header2, header3, header4
        }, ((net.youmi.android.a.b.i.a.b) (obj1)));
        if (!net.youmi.android.a.b.b.e.a(s) && net.youmi.android.a.b.b.b.a(new JSONObject(s), "c", -1) == 1)
        {
            net.youmi.android.a.a.g.e.c.a(e);
            return;
        }
        break MISSING_BLOCK_LABEL_317;
_L2:
        if (d == 2)
        {
            ((net.youmi.android.a.b.i.a.b) (obj1)).b("a_sdk_prt_u");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
