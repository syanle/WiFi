// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net.a;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socialize.net.utils.a;
import com.umeng.socom.net.s;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.net.a:
//            c, d

public abstract class com.umeng.socialize.net.a.b extends s
{
    protected static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s1)
        {
            return (a)Enum.valueOf(com/umeng/socialize/net/a/b$a, s1);
        }

        public static a[] values()
        {
            a aa[] = c;
            int l = aa.length;
            a aa1[] = new a[l];
            System.arraycopy(aa, 0, aa1, 0, l);
            return aa1;
        }

        static 
        {
            a = new a("IMAGE", 0);
            b = new a("VEDIO", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s1, int l)
        {
            super(s1, l);
        }
    }

    protected static class b extends Enum
    {

        public static final b a;
        public static final b b;
        private static final b c[];

        public static b valueOf(String s1)
        {
            return (b)Enum.valueOf(com/umeng/socialize/net/a/b$b, s1);
        }

        public static b[] values()
        {
            b ab[] = c;
            int l = ab.length;
            b ab1[] = new b[l];
            System.arraycopy(ab, 0, ab1, 0, l);
            return ab1;
        }

        static 
        {
            a = new c("GET", 0);
            b = new d("POST", 1);
            c = (new b[] {
                a, b
            });
        }

        private b(String s1, int l)
        {
            super(s1, l);
        }

        b(String s1, int l, b b1)
        {
            this(s1, l);
        }
    }


    protected static String b = com/umeng/socialize/net/a/b.getName();
    private static int k[];
    private b a;
    protected Class c;
    protected int d;
    protected Context e;
    protected SocializeEntity f;
    private Map j;

    public com.umeng.socialize.net.a.b(Context context, String s1, Class class1, SocializeEntity socializeentity, int l, b b1)
    {
        super("");
        j = new HashMap();
        c = class1;
        d = l;
        e = context;
        a = b1;
        f = socializeentity;
        b = getClass().getName();
    }

    static String g()
    {
        return h;
    }

    static String h()
    {
        return g;
    }

    static int[] i()
    {
        int ai[] = k;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[b.values().length];
        try
        {
            ai[com.umeng.socialize.net.a.b.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[b.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        k = ai;
        return ai;
    }

    protected abstract String a();

    protected Map a(String s1, String s2)
    {
        HashMap hashmap = new HashMap();
        try
        {
            s2 = com.umeng.socom.util.b.c(s2, "UTF-8");
            if (a == b.b)
            {
                hashmap.put("ud_post", s2);
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s2)
        {
            Log.d(s1, (new StringBuilder(String.valueOf(s1))).append("\u6570\u636E\u52A0\u5BC6\u5931\u8D25").toString());
            s2.printStackTrace();
            return hashmap;
        }
        return hashmap;
    }

    protected abstract Map a(Map map);

    protected JSONObject a(JSONObject jsonobject, Map map)
    {
        if (map != null && jsonobject != null && map.size() != 0) goto _L2; else goto _L1
_L1:
        return jsonobject;
_L2:
        map = map.entrySet().iterator();
        try
        {
            while (map.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
                jsonobject.put((String)entry.getKey(), entry.getValue());
            }
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            map.printStackTrace();
            return jsonobject;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void a(UMediaObject umediaobject, Map map)
    {
        if (umediaobject == null) goto _L2; else goto _L1
_L1:
        if (!umediaobject.isUrlMedia()) goto _L4; else goto _L3
_L3:
        map.putAll(umediaobject.toUrlExtraParams());
_L6:
        if (umediaobject instanceof BaseMediaObject)
        {
            Object obj = (BaseMediaObject)umediaobject;
            umediaobject = ((BaseMediaObject) (obj)).getTitle();
            obj = ((BaseMediaObject) (obj)).getThumb();
            if (!TextUtils.isEmpty(umediaobject) || !TextUtils.isEmpty(((CharSequence) (obj))))
            {
                JSONObject jsonobject = new JSONObject();
                jsonobject.put(com.umeng.socialize.net.utils.a.A, umediaobject);
                jsonobject.put(com.umeng.socialize.net.utils.a.B, obj);
                map.put("ext", jsonobject);
            }
        }
_L2:
        return;
_L4:
        byte abyte0[] = umediaobject.toByte();
        if (abyte0 != null)
        {
            a(abyte0, com.umeng.socialize.net.a.a.a, null);
        }
        if (true) goto _L6; else goto _L5
_L5:
        umediaobject;
        Log.e(b, "can`t add qzone title & thumb.", umediaobject);
        return;
    }

    public void a(String s1)
    {
        try
        {
            s1 = (new URL(new URL(s1), a())).toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new SocializeException((new StringBuilder("Can not generate correct url in SocializeRequest [")).append(j()).append("]").toString(), s1);
        }
        super.a(s1);
    }

    public boolean a(byte abyte0[], a a1, String s1)
    {
        if (com.umeng.socialize.net.a.a.a == a1)
        {
            String s2 = com.umeng.socialize.common.a.a(abyte0);
            a1 = s2;
            if (TextUtils.isEmpty(s2))
            {
                a1 = "png";
            }
            s2 = s1;
            if (TextUtils.isEmpty(s1))
            {
                s2 = (new StringBuilder(String.valueOf(System.currentTimeMillis()))).toString();
            }
            abyte0 = new com.umeng.socom.net.s.a((new StringBuilder(String.valueOf(s2))).append(".").append(a1).toString(), abyte0);
            j.put(com.umeng.socialize.net.utils.a.v, abyte0);
            return true;
        } else
        {
            return false;
        }
    }

    public Map b()
    {
        return j;
    }

    public Map c()
    {
        return a(SocializeNetUtils.getBaseQuery(e, f, d));
    }

    public JSONObject d()
    {
        return null;
    }

    public String e()
    {
        Map map = a(SocializeNetUtils.getBaseQuery(e, f, d));
        return SocializeNetUtils.generateGetURL(j(), map);
    }

    protected String f()
    {
        switch (i()[a.ordinal()])
        {
        default:
            return h;

        case 2: // '\002'
            return g;
        }
    }

}
