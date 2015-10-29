// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.util.Base64;
import com.mob.tools.network.KVPair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package cn.sharesdk.framework.utils:
//            b

public class cn.sharesdk.framework.utils.a
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(cn/sharesdk/framework/utils/a$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("HMAC_SHA1", 0);
            b = new a("PLAINTEXT", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }

    public static class b
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public String e;

        public b()
        {
        }
    }


    private b a;
    private cn.sharesdk.framework.utils.b b;

    public cn.sharesdk.framework.utils.a()
    {
        a = new b();
        b = new cn.sharesdk.framework.utils.b("-._~", false);
    }

    private ArrayList a(long l, String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("oauth_consumer_key", a.a));
        arraylist.add(new KVPair("oauth_signature_method", s));
        arraylist.add(new KVPair("oauth_timestamp", String.valueOf(l / 1000L)));
        arraylist.add(new KVPair("oauth_nonce", String.valueOf(l)));
        arraylist.add(new KVPair("oauth_version", "1.0"));
        s = a.c;
        if (s != null && s.length() > 0)
        {
            arraylist.add(new KVPair("oauth_token", s));
        }
        return arraylist;
    }

    private ArrayList a(long l, ArrayList arraylist, String s)
    {
        boolean flag = false;
        HashMap hashmap = new HashMap();
        if (arraylist != null)
        {
            KVPair kvpair;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); hashmap.put(a(kvpair.name), a((String)kvpair.value)))
            {
                kvpair = (KVPair)arraylist.next();
            }

        }
        arraylist = a(l, s);
        if (arraylist != null)
        {
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); hashmap.put(a(((KVPair) (s)).name), a((String)((KVPair) (s)).value)))
            {
                s = (KVPair)arraylist.next();
            }

        }
        arraylist = new String[hashmap.size()];
        s = hashmap.entrySet().iterator();
        for (int i = 0; s.hasNext(); i++)
        {
            arraylist[i] = (String)((java.util.Map.Entry)s.next()).getKey();
        }

        Arrays.sort(arraylist);
        s = new ArrayList();
        int k = arraylist.length;
        for (int j = ((flag) ? 1 : 0); j < k; j++)
        {
            String s1 = arraylist[j];
            s.add(new KVPair(s1, hashmap.get(s1)));
        }

        return s;
    }

    private ArrayList a(String s, String s1, ArrayList arraylist, a a1)
    {
        Object obj;
        long l;
        obj = null;
        l = System.currentTimeMillis();
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[a.values().length];
                try
                {
                    a[a.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[a1.ordinal()];
        JVM INSTR tableswitch 1 2: default 40
    //                   1 70
    //                   2 235;
           goto _L1 _L2 _L3
_L1:
        s1 = null;
        s = obj;
_L5:
        s = a(l, s);
        s.add(new KVPair("oauth_signature", s1));
        return s;
_L2:
        a1 = "HMAC-SHA1";
        SecretKeySpec secretkeyspec = new SecretKeySpec((new StringBuilder()).append(a(a.b)).append('&').append(a(a.d)).toString().getBytes("utf-8"), "HMAC-SHA1");
        Mac mac = Mac.getInstance("HMAC-SHA1");
        mac.init(secretkeyspec);
        arraylist = b(a(l, arraylist, "HMAC-SHA1"));
        s1 = (new String(Base64.encode(mac.doFinal((new StringBuilder()).append(s1).append('&').append(a(s.toLowerCase())).append('&').append(a(((String) (arraylist)))).toString().getBytes("utf-8")), 0))).trim();
        s = a1;
        continue; /* Loop/switch isn't completed */
_L3:
        s = "PLAINTEXT";
        s1 = (new StringBuilder()).append(a(a.b)).append('&').append(a(a.d)).toString();
        if (true) goto _L5; else goto _L4
_L4:
    }

    private String b(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.size() <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        arraylist = arraylist.iterator();
        for (int i = 0; arraylist.hasNext(); i++)
        {
            KVPair kvpair = (KVPair)arraylist.next();
            if (i > 0)
            {
                stringbuilder.append('&');
            }
            stringbuilder.append(kvpair.name).append('=').append((String)kvpair.value);
        }

        return stringbuilder.toString();
    }

    public b a()
    {
        return a;
    }

    public String a(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            return b.escape(s);
        }
    }

    public ArrayList a(String s, ArrayList arraylist)
    {
        return a(s, arraylist, a.a);
    }

    public ArrayList a(String s, ArrayList arraylist, a a1)
    {
        return a(s, "POST", arraylist, a1);
    }

    public ArrayList a(ArrayList arraylist)
    {
        StringBuilder stringbuilder = new StringBuilder("OAuth ");
        arraylist = arraylist.iterator();
        for (int i = 0; arraylist.hasNext(); i++)
        {
            KVPair kvpair = (KVPair)arraylist.next();
            if (i > 0)
            {
                stringbuilder.append(',');
            }
            String s = a((String)kvpair.value);
            stringbuilder.append(kvpair.name).append("=\"").append(s).append("\"");
        }

        arraylist = new ArrayList();
        arraylist.add(new KVPair("Authorization", stringbuilder.toString()));
        arraylist.add(new KVPair("Content-Type", "application/x-www-form-urlencoded"));
        return arraylist;
    }

    public void a(String s, String s1)
    {
        a.c = s;
        a.d = s1;
    }

    public void a(String s, String s1, String s2)
    {
        a.a = s;
        a.b = s1;
        a.e = s2;
    }

    public ArrayList b(String s, ArrayList arraylist)
    {
        return b(s, arraylist, a.a);
    }

    public ArrayList b(String s, ArrayList arraylist, a a1)
    {
        return a(s, "GET", arraylist, a1);
    }

    public ArrayList c(String s, ArrayList arraylist, a a1)
    {
        return a(s, "PUT", arraylist, a1);
    }
}
