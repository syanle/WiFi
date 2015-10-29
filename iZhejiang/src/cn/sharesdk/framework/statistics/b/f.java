// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;

import android.text.TextUtils;
import android.util.Base64;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            c

public class f extends c
{
    public static class a
    {

        public String a;
        public String b;
        public ArrayList c;
        public ArrayList d;
        public ArrayList e;
        public ArrayList f;
        public HashMap g;

        public String toString()
        {
            HashMap hashmap = new HashMap();
            hashmap.put("text", b);
            hashmap.put("url", c);
            if (d != null && d.size() > 0)
            {
                hashmap.put("imgs", d);
            }
            if (g != null)
            {
                hashmap.put("attch", (new Hashon()).fromHashMap(g));
            }
            return (new Hashon()).fromHashMap(hashmap);
        }

        public a()
        {
            a = "";
            c = new ArrayList();
            d = new ArrayList();
            e = new ArrayList();
            f = new ArrayList();
        }
    }


    private static int p;
    private static long q;
    public int a;
    public String b;
    public String c;
    public a d;
    public String n;
    public String o[];

    public f()
    {
        d = new a();
    }

    protected String a()
    {
        return "[SHR]";
    }

    protected void a(long l)
    {
        q = l;
    }

    protected int b()
    {
        return 5000;
    }

    protected int c()
    {
        return 30;
    }

    protected long d()
    {
        return (long)p;
    }

    protected long e()
    {
        return q;
    }

    protected void f()
    {
        p++;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(super.toString());
        stringbuilder.append('|').append(a);
        stringbuilder.append('|').append(b);
        Object obj = stringbuilder.append('|');
        String s;
        if (TextUtils.isEmpty(c))
        {
            s = "";
        } else
        {
            s = c;
        }
        ((StringBuilder) (obj)).append(s);
        obj = "";
        s = ((String) (obj));
        if (o != null)
        {
            s = ((String) (obj));
            if (o.length > 0)
            {
                s = (new StringBuilder()).append("[\"").append(TextUtils.join("\",\"", o)).append("\"]").toString();
            }
        }
        stringbuilder.append('|').append(s);
        stringbuilder.append('|');
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        s = d.toString();
        obj = Base64.encodeToString(Data.AES128Encode(f.substring(0, 16), s), 0);
        s = ((String) (obj));
        try
        {
            if (((String) (obj)).contains("\n"))
            {
                s = ((String) (obj)).replace("\n", "");
            }
            stringbuilder.append(s);
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
        stringbuilder.append('|');
        if (!TextUtils.isEmpty(m))
        {
            stringbuilder.append(m);
        }
        stringbuilder.append('|');
        if (TextUtils.isEmpty(n))
        {
            break MISSING_BLOCK_LABEL_299;
        }
        obj = Base64.encodeToString(Data.AES128Encode(f.substring(0, 16), n), 0);
        s = ((String) (obj));
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            break MISSING_BLOCK_LABEL_293;
        }
        s = ((String) (obj));
        if (((String) (obj)).contains("\n"))
        {
            s = ((String) (obj)).replace("\n", "");
        }
        stringbuilder.append(s);
_L2:
        return stringbuilder.toString();
        Throwable throwable1;
        throwable1;
        Ln.e(throwable1);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
