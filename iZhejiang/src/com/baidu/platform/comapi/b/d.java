// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.b;

import android.os.Bundle;
import android.os.Handler;
import com.baidu.platform.comapi.a.c;
import com.baidu.platform.comjni.map.search.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.platform.comapi.b:
//            c, e, a, f, 
//            b

public class d
{

    private static final String a = com/baidu/platform/comapi/b/d.getSimpleName();
    private a b;
    private int c;
    private com.baidu.platform.comapi.b.c d;
    private Handler e;
    private int f;
    private Bundle g;

    public d()
    {
        b = null;
        d = null;
        e = null;
        f = 10;
        g = null;
        b = new a();
        c = b.a();
        d = new com.baidu.platform.comapi.b.c();
        e = new e(this);
        com.baidu.platform.comjni.engine.a.a(2000, e);
        d.a(this);
    }

    static int a(d d1)
    {
        return d1.c;
    }

    private Bundle a(com.baidu.platform.comapi.b.a a1)
    {
        if (a1 == null)
        {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("type", a1.a);
        bundle.putString("uid", a1.d);
        if (a1.b != null)
        {
            bundle.putInt("x", a1.b.a());
            bundle.putInt("y", a1.b.b());
        }
        bundle.putString("keyword", a1.c);
        return bundle;
    }

    private Bundle b()
    {
        if (g == null)
        {
            g = new Bundle();
        } else
        {
            g.clear();
        }
        return g;
    }

    static com.baidu.platform.comapi.b.c b(d d1)
    {
        return d1.d;
    }

    public void a()
    {
        com.baidu.platform.comjni.engine.a.b(2000, e);
        b.b();
        d.a();
        e = null;
        b = null;
        g = null;
        d = null;
        c = 0;
    }

    public void a(int i)
    {
        if (i > 0 && i <= 50)
        {
            f = i;
        }
    }

    public void a(b b1)
    {
        d.a(b1);
    }

    public boolean a(com.baidu.platform.comapi.a.d d1)
    {
        if (d1 == null)
        {
            return false;
        } else
        {
            int i = d1.b();
            int j = d1.a();
            return b.a(j, i);
        }
    }

    public boolean a(com.baidu.platform.comapi.a.d d1, String s, String s1)
    {
        if (d1 == null || s == null || s1 == null)
        {
            return false;
        } else
        {
            return b.a(d1.a(), d1.b(), s, s1);
        }
    }

    public boolean a(com.baidu.platform.comapi.b.a a1, com.baidu.platform.comapi.b.a a2, String s, c c1, int i, int j, Map map)
    {
        if (s != null && !s.equals(""))
        {
            Bundle bundle = b();
            a1 = a(a1);
            a2 = a(a2);
            if (a1 != null && a2 != null)
            {
                bundle.putBundle("start", a1);
                bundle.putBundle("end", a2);
                if (j >= 3 && j <= 6)
                {
                    bundle.putInt("strategy", j);
                    bundle.putString("cityid", s);
                    if (c1 != null && c1.a != null && c1.b != null)
                    {
                        a1 = new Bundle();
                        a1.putInt("level", i);
                        a1.putInt("ll_x", c1.a.a());
                        a1.putInt("ll_y", c1.a.b());
                        a1.putInt("ru_x", c1.b.a());
                        a1.putInt("ru_y", c1.b.b());
                        bundle.putBundle("mapbound", a1);
                    }
                    if (map != null)
                    {
                        a1 = new Bundle();
                        for (a2 = map.keySet().iterator(); a2.hasNext(); a1.putString(s.toString(), c1.toString()))
                        {
                            s = (String)a2.next();
                            c1 = ((c) (map.get(s)));
                        }

                        bundle.putBundle("extparams", a1);
                    }
                    return b.c(bundle);
                }
            }
        }
        return false;
    }

    public boolean a(com.baidu.platform.comapi.b.a a1, com.baidu.platform.comapi.b.a a2, String s, String s1, String s2, c c1, int i, 
            int j, int k, ArrayList arraylist, Map map)
    {
        Bundle bundle;
        if (a1 == null || a2 == null)
        {
            return false;
        }
        if (a1.b == null && (s1 == null || s1.equals("")))
        {
            return false;
        }
        if (a2.b == null && (s2 == null || s2.equals("")))
        {
            return false;
        }
        bundle = b();
        bundle.putInt("starttype", a1.a);
        if (a1.b != null)
        {
            bundle.putInt("startptx", a1.b.a());
            bundle.putInt("startpty", a1.b.b());
        }
        bundle.putString("startkeyword", a1.c);
        bundle.putString("startuid", a1.d);
        bundle.putInt("endtype", a2.a);
        if (a2.b != null)
        {
            bundle.putInt("endptx", a2.b.a());
            bundle.putInt("endpty", a2.b.b());
        }
        bundle.putString("endkeyword", a2.c);
        bundle.putString("enduid", a2.d);
        bundle.putInt("level", i);
        if (c1 != null && c1.a != null && c1.b != null)
        {
            bundle.putInt("ll_x", c1.a.a());
            bundle.putInt("ll_y", c1.a.b());
            bundle.putInt("ru_x", c1.b.a());
            bundle.putInt("ru_y", c1.b.b());
        }
        bundle.putInt("strategy", j);
        bundle.putString("cityid", s);
        bundle.putString("st_cityid", s1);
        bundle.putString("en_cityid", s2);
        bundle.putInt("traffic", k);
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        k = arraylist.size();
        j = 0;
        a1 = "";
        a2 = "";
        i = 0;
_L7:
        if (i >= k) goto _L4; else goto _L3
_L3:
        s1 = new JSONObject();
        if (((f)arraylist.get(i)).a == null) goto _L6; else goto _L5
_L5:
        s1.put("type", 1);
_L8:
        s1.put("keyword", ((f)arraylist.get(i)).b);
        if (((f)arraylist.get(i)).a != null)
        {
            s1.put("xy", (new StringBuilder()).append(String.valueOf(((f)arraylist.get(i)).a.a)).append(",").append(String.valueOf(((f)arraylist.get(i)).a.b)).toString());
        }
        s = (new StringBuilder()).append(a2).append(((f)arraylist.get(i)).c).toString();
        a2 = s;
        s = (new StringBuilder()).append(a1).append(s1.toString()).toString();
        a1 = a2;
        s1 = s;
        if (j == k - 1)
        {
            break MISSING_BLOCK_LABEL_625;
        }
        a1 = s;
        s1 = (new StringBuilder()).append(s).append("|").toString();
        a1 = s1;
        s = (new StringBuilder()).append(a2).append("|").toString();
        a1 = s;
        j++;
        a2 = a1;
_L9:
        i++;
        a1 = s1;
          goto _L7
_L6:
        s1.put("type", 2);
          goto _L8
        s;
_L10:
        s.printStackTrace();
        s1 = a1;
          goto _L9
_L4:
        bundle.putString("wp", a1);
        bundle.putString("wpc", a2);
_L2:
        if (map != null)
        {
            a1 = new Bundle();
            for (a2 = map.keySet().iterator(); a2.hasNext(); a1.putString(s.toString(), s1.toString()))
            {
                s = (String)a2.next();
                s1 = ((String) (map.get(s)));
            }

            bundle.putBundle("extparams", a1);
        }
        return b.d(bundle);
        s;
          goto _L10
        s;
          goto _L10
    }

    public boolean a(com.baidu.platform.comapi.b.a a1, com.baidu.platform.comapi.b.a a2, String s, String s1, String s2, c c1, int i, 
            Map map)
    {
        while (a1 == null || a2 == null || a1.b == null && (s1 == null || s1.equals("")) || a2.b == null && (s2 == null || s2.equals(""))) 
        {
            return false;
        }
        Bundle bundle = b();
        bundle.putInt("starttype", a1.a);
        if (a1.b != null)
        {
            bundle.putInt("startptx", a1.b.a());
            bundle.putInt("startpty", a1.b.b());
        }
        bundle.putString("startkeyword", a1.c);
        bundle.putString("startuid", a1.d);
        bundle.putInt("endtype", a2.a);
        if (a2.b != null)
        {
            bundle.putInt("endptx", a2.b.a());
            bundle.putInt("endpty", a2.b.b());
        }
        bundle.putString("endkeyword", a2.c);
        bundle.putString("enduid", a2.d);
        bundle.putInt("level", i);
        if (c1 != null && c1.a != null && c1.b != null)
        {
            bundle.putInt("ll_x", c1.a.a());
            bundle.putInt("ll_y", c1.a.b());
            bundle.putInt("ru_x", c1.b.a());
            bundle.putInt("ru_y", c1.b.b());
        }
        bundle.putString("cityid", s);
        bundle.putString("st_cityid", s1);
        bundle.putString("en_cityid", s2);
        if (map != null)
        {
            a1 = new Bundle();
            for (a2 = map.keySet().iterator(); a2.hasNext(); a1.putString(s.toString(), s1.toString()))
            {
                s = (String)a2.next();
                s1 = ((String) (map.get(s)));
            }

            bundle.putBundle("extparams", a1);
        }
        return b.e(bundle);
    }

    public boolean a(String s)
    {
        if (s != null)
        {
            if ((s = s.trim()).length() != 0 && s.length() <= 99)
            {
                return b.a(s);
            }
        }
        return false;
    }

    public boolean a(String s, int i, int j, int k, c c1, c c2, Map map)
    {
        String s1;
        if (s != null)
        {
            if ((s1 = s.trim()).length() != 0 && s1.length() <= 99)
            {
                s = b();
                s.putString("keyword", s1);
                s.putInt("pagenum", j);
                s.putInt("count", f);
                s.putInt("cityid", i);
                s.putInt("level", k);
                if (c2 != null)
                {
                    Bundle bundle = new Bundle();
                    bundle.putInt("ll_x", c2.a.a());
                    bundle.putInt("ll_y", c2.a.b());
                    bundle.putInt("ru_x", c2.b.a());
                    bundle.putInt("ru_y", c2.b.b());
                    s.putBundle("mapbound", bundle);
                }
                if (c1 != null)
                {
                    s.putInt("ll_x", c1.a.a());
                    s.putInt("ll_y", c1.a.b());
                    s.putInt("ru_x", c1.b.a());
                    s.putInt("ru_y", c1.b.b());
                    s.putInt("loc_x", (c1.a.a() + c1.b.a()) / 2);
                    s.putInt("loc_y", (c1.a.b() + c1.b.b()) / 2);
                }
                if (map != null)
                {
                    c1 = new Bundle();
                    String s2;
                    Object obj;
                    for (c2 = map.keySet().iterator(); c2.hasNext(); c1.putString(s2.toString(), obj.toString()))
                    {
                        s2 = (String)c2.next();
                        obj = map.get(s2);
                    }

                    s.putBundle("extparams", c1);
                }
                return b.b(s);
            }
        }
        return false;
    }

    public boolean a(String s, int i, int j, c c1, int k, com.baidu.platform.comapi.a.d d1, Map map)
    {
        if (c1 != null && s != null)
        {
            String s1 = s.trim();
            if (s1.length() != 0 && s1.length() <= 99)
            {
                s = b();
                s.putString("keyword", s1);
                s.putInt("pagenum", j);
                s.putInt("count", f);
                s.putString("cityid", String.valueOf(i));
                s.putInt("level", k);
                if (c1 != null)
                {
                    s.putInt("ll_x", c1.a.a());
                    s.putInt("ll_y", c1.a.b());
                    s.putInt("ru_x", c1.b.a());
                    s.putInt("ru_y", c1.b.b());
                }
                if (d1 != null)
                {
                    s.putInt("loc_x", d1.a);
                    s.putInt("loc_y", d1.b);
                }
                if (map != null)
                {
                    c1 = new Bundle();
                    String s2;
                    Object obj;
                    for (d1 = map.keySet().iterator(); d1.hasNext(); c1.putString(s2.toString(), obj.toString()))
                    {
                        s2 = (String)d1.next();
                        obj = map.get(s2);
                    }

                    s.putBundle("extparams", c1);
                }
                return b.g(s);
            }
        }
        return false;
    }

    public boolean a(String s, int i, String s1, c c1, int j, com.baidu.platform.comapi.a.d d1)
    {
        if (s != null && (i == 0 || i == 2))
        {
            c1 = s.trim();
            if (c1.length() != 0 && c1.length() <= 99)
            {
                c1 = b();
                c1.putString("keyword", s);
                c1.putInt("type", i);
                c1.putString("cityid", s1);
                s = new Bundle();
                s.putInt("level", j);
                c1.putBundle("mapbound", s);
                if (d1 != null)
                {
                    c1.putInt("loc_x", d1.a);
                    c1.putInt("loc_y", d1.b);
                }
                return b.f(c1);
            }
        }
        return false;
    }

    public boolean a(String s, String s1)
    {
        if (s1 != null && s != null && !s.equals(""))
        {
            s1 = s1.trim();
            if (s1.length() != 0 && s1.length() <= 99)
            {
                return b.a(s, s1);
            }
        }
        return false;
    }

    public boolean a(String s, String s1, int i, c c1, int j, Map map)
    {
        String s2;
        if (s != null)
        {
            if ((s2 = s.trim()).length() != 0 && s2.length() <= 99)
            {
                s = b();
                s.putString("keyword", s2);
                s.putInt("pagenum", i);
                s.putInt("count", f);
                s.putString("cityid", s1);
                s.putInt("level", j);
                if (c1 != null)
                {
                    s.putInt("ll_x", c1.a.a());
                    s.putInt("ll_y", c1.a.b());
                    s.putInt("ru_x", c1.b.a());
                    s.putInt("ru_y", c1.b.b());
                }
                if (map != null)
                {
                    s1 = new Bundle();
                    String s3;
                    Object obj;
                    for (c1 = map.keySet().iterator(); c1.hasNext(); s1.putString(s3.toString(), obj.toString()))
                    {
                        s3 = (String)c1.next();
                        obj = map.get(s3);
                    }

                    s.putBundle("extparams", s1);
                }
                return b.a(s);
            }
        }
        return false;
    }

    String b(int i)
    {
        String s1 = b.a(i);
        String s = s1;
        if (s1 != null)
        {
            s = s1;
            if (s1.trim().length() <= 0)
            {
                s = null;
            }
        }
        return s;
    }

    public boolean b(String s)
    {
        if (s == null)
        {
            return false;
        } else
        {
            return b.b(s);
        }
    }

    public boolean b(String s, String s1)
    {
        return b.b(s, s1);
    }

}
