// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.os.Handler;
import com.baidu.mapapi.utils.b;
import com.baidu.platform.comapi.a.d;
import com.baidu.platform.comapi.c.c;
import com.baidu.platform.comjni.engine.a;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.platform.comapi.map:
//            v, r, p, t, 
//            s, u

public class q
{

    private static final String a = com/baidu/platform/comapi/map/q.getSimpleName();
    private static q c;
    private com.baidu.platform.comjni.map.basemap.a b;
    private v d;
    private Handler e;

    private q()
    {
    }

    public static q a()
    {
        if (c == null)
        {
            c = new q();
            c.g();
        }
        return c;
    }

    static v a(q q1)
    {
        return q1.d;
    }

    static q f()
    {
        return c;
    }

    private void g()
    {
        h();
        d = new v();
        e = new r(this);
        com.baidu.platform.comjni.engine.a.a(65289, e);
    }

    private void h()
    {
        com.baidu.mapapi.utils.b.a(com.baidu.mapapi.a.a().d());
        b = new com.baidu.platform.comjni.map.basemap.a();
        b.a();
        String s5 = com.baidu.platform.comapi.c.c.o();
        String s4 = com.baidu.mapapi.utils.b.a();
        String s3 = com.baidu.mapapi.utils.b.b();
        String s2 = com.baidu.mapapi.utils.b.c();
        int i = com.baidu.mapapi.utils.b.d();
        int j = com.baidu.mapapi.utils.b.e();
        int k = com.baidu.mapapi.utils.b.f();
        String s1;
        String s6;
        String s7;
        if (com.baidu.platform.comapi.c.c.n() >= 180)
        {
            s1 = "/h/";
        } else
        {
            s1 = "/l/";
        }
        s5 = (new StringBuilder()).append(s5).append("/cfg").toString();
        s7 = (new StringBuilder()).append(s4).append("/vmp").toString();
        s4 = (new StringBuilder()).append(s5).append(s1).toString();
        s5 = (new StringBuilder()).append(s5).append("/a/").toString();
        s6 = (new StringBuilder()).append(s7).append(s1).toString();
        s1 = (new StringBuilder()).append(s7).append(s1).toString();
        s3 = (new StringBuilder()).append(s3).append("/tmp/").toString();
        s2 = (new StringBuilder()).append(s2).append("/tmp/").toString();
        b.a(s4, s6, s3, s2, s1, s5, com.baidu.platform.comapi.c.c.j(), com.baidu.platform.comapi.c.c.l(), com.baidu.platform.comapi.c.c.n(), i, j, k, 0);
        b.e();
    }

    public ArrayList a(String s1)
    {
        if (!s1.equals("") && b != null) goto _L2; else goto _L1
_L1:
        Object obj;
        return null;
_L2:
        if ((obj = b.b(s1)) == null || ((String) (obj)).equals("")) goto _L1; else goto _L3
_L3:
        s1 = new ArrayList();
        p p1;
        Object obj1;
        ArrayList arraylist;
        p p2;
        JSONObject jsonobject;
        int i;
        int j;
        try
        {
            obj = new JSONObject(((String) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
            return null;
        }
        if (obj == null) goto _L1; else goto _L4
_L4:
        if (((JSONObject) (obj)).length() == 0) goto _L1; else goto _L5
_L5:
        obj = ((JSONObject) (obj)).optJSONArray("dataset");
        if (obj == null) goto _L1; else goto _L6
_L6:
        i = 0;
_L10:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        p1 = new p();
        obj1 = ((JSONArray) (obj)).getJSONObject(i);
        p1.a = ((JSONObject) (obj1)).optInt("id");
        p1.b = ((JSONObject) (obj1)).optString("name");
        p1.c = ((JSONObject) (obj1)).optInt("size");
        p1.d = ((JSONObject) (obj1)).optInt("cty");
        if (!((JSONObject) (obj1)).has("child"))
        {
            break MISSING_BLOCK_LABEL_281;
        }
        obj1 = ((JSONObject) (obj1)).optJSONArray("child");
        arraylist = new ArrayList();
        j = 0;
_L8:
        if (j >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        p2 = new p();
        jsonobject = ((JSONArray) (obj1)).optJSONObject(j);
        p2.a = jsonobject.optInt("id");
        p2.b = jsonobject.optString("name");
        p2.c = jsonobject.optInt("size");
        p2.d = jsonobject.optInt("cty");
        arraylist.add(p2);
        j++;
        if (true) goto _L8; else goto _L7
_L7:
        p1.a(arraylist);
        s1.add(p1);
        i++;
        if (true) goto _L10; else goto _L9
_L9:
        return s1;
    }

    public void a(u u)
    {
        if (d != null)
        {
            d.a(u);
        }
    }

    public boolean a(int i)
    {
        if (b == null || i < 0)
        {
            return false;
        } else
        {
            return b.d(i);
        }
    }

    public boolean a(boolean flag, boolean flag1)
    {
        if (b == null)
        {
            return false;
        } else
        {
            return b.a(flag, flag1);
        }
    }

    public void b()
    {
        com.baidu.platform.comjni.engine.a.b(65289, e);
        b.b();
        c = null;
    }

    public void b(u u)
    {
        if (d != null)
        {
            d.b(u);
        }
    }

    public boolean b(int i)
    {
        if (b == null || i < 0)
        {
            return false;
        } else
        {
            return b.a(i, false, 0);
        }
    }

    public ArrayList c()
    {
        Object obj;
        if (b == null)
        {
            return null;
        }
        Object obj1 = b.k();
        obj = new ArrayList();
        p p1;
        Object obj2;
        ArrayList arraylist;
        p p2;
        JSONObject jsonobject;
        int i;
        int j;
        try
        {
            obj1 = (new JSONObject(((String) (obj1)))).optJSONArray("dataset");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((JSONException) (obj)).printStackTrace();
            return null;
        }
        i = 0;
        if (i >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        p1 = new p();
        obj2 = ((JSONArray) (obj1)).optJSONObject(i);
        p1.a = ((JSONObject) (obj2)).optInt("id");
        p1.b = ((JSONObject) (obj2)).optString("name");
        p1.c = ((JSONObject) (obj2)).optInt("size");
        p1.d = ((JSONObject) (obj2)).optInt("cty");
        if (!((JSONObject) (obj2)).has("child"))
        {
            break MISSING_BLOCK_LABEL_241;
        }
        obj2 = ((JSONObject) (obj2)).optJSONArray("child");
        arraylist = new ArrayList();
        j = 0;
_L2:
        if (j >= ((JSONArray) (obj2)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        p2 = new p();
        jsonobject = ((JSONArray) (obj2)).optJSONObject(j);
        p2.a = jsonobject.optInt("id");
        p2.b = jsonobject.optString("name");
        p2.c = jsonobject.optInt("size");
        p2.d = jsonobject.optInt("cty");
        arraylist.add(p2);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        p1.a(arraylist);
        ((ArrayList) (obj)).add(p1);
        i++;
        if (true) goto _L4; else goto _L3
_L4:
        break MISSING_BLOCK_LABEL_42;
_L3:
        return ((ArrayList) (obj));
    }

    public boolean c(int i)
    {
        if (b == null || i < 0)
        {
            return false;
        } else
        {
            return b.b(i, false, 0);
        }
    }

    public ArrayList d()
    {
        if (b == null)
        {
            return null;
        }
        Object obj = b.b("");
        ArrayList arraylist = new ArrayList();
        p p1;
        Object obj1;
        ArrayList arraylist1;
        p p2;
        JSONObject jsonobject;
        int i;
        int j;
        try
        {
            obj = (new JSONObject(((String) (obj)))).optJSONArray("dataset");
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        catch (Exception exception)
        {
            return null;
        }
        i = 0;
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        p1 = new p();
        obj1 = ((JSONArray) (obj)).optJSONObject(i);
        p1.a = ((JSONObject) (obj1)).optInt("id");
        p1.b = ((JSONObject) (obj1)).optString("name");
        p1.c = ((JSONObject) (obj1)).optInt("size");
        p1.d = ((JSONObject) (obj1)).optInt("cty");
        if (!((JSONObject) (obj1)).has("child"))
        {
            break MISSING_BLOCK_LABEL_243;
        }
        obj1 = ((JSONObject) (obj1)).optJSONArray("child");
        arraylist1 = new ArrayList();
        j = 0;
_L2:
        if (j >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        p2 = new p();
        jsonobject = ((JSONArray) (obj1)).optJSONObject(j);
        p2.a = jsonobject.optInt("id");
        p2.b = jsonobject.optString("name");
        p2.c = jsonobject.optInt("size");
        p2.d = jsonobject.optInt("cty");
        arraylist1.add(p2);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        p1.a(arraylist1);
        arraylist.add(p1);
        i++;
        if (true) goto _L4; else goto _L3
_L4:
        break MISSING_BLOCK_LABEL_44;
_L3:
        return arraylist;
    }

    public boolean d(int i)
    {
        if (b == null)
        {
            return false;
        } else
        {
            return b.b(0, true, i);
        }
    }

    public ArrayList e()
    {
        int i = 0;
        if (b != null) goto _L2; else goto _L1
_L1:
        Object obj1;
        return null;
_L2:
        if ((obj1 = b.j()) == null || ((String) (obj1)).equals("")) goto _L1; else goto _L3
_L3:
        Object obj = new ArrayList();
        obj1 = new JSONObject(((String) (obj1)));
        if (((JSONObject) (obj1)).length() == 0) goto _L1; else goto _L4
_L4:
        obj1 = ((JSONObject) (obj1)).optJSONArray("dataset");
_L14:
        if (i >= ((JSONArray) (obj1)).length()) goto _L6; else goto _L5
_L5:
        t t1;
        s s1;
        JSONObject jsonobject;
        t1 = new t();
        s1 = new s();
        jsonobject = ((JSONArray) (obj1)).optJSONObject(i);
        s1.a = jsonobject.optInt("id");
        s1.b = jsonobject.optString("name");
        s1.c = jsonobject.optString("pinyin");
        s1.h = jsonobject.optInt("size");
        s1.i = jsonobject.optInt("ratio");
        s1.l = jsonobject.optInt("status");
        s1.g = new d();
        s1.g.a(jsonobject.optInt("x"));
        s1.g.b(jsonobject.optInt("y"));
        if (jsonobject.optInt("up") != 1) goto _L8; else goto _L7
_L7:
        s1.j = true;
_L11:
        s1.e = jsonobject.optInt("lev");
        if (!s1.j) goto _L10; else goto _L9
_L9:
        s1.k = jsonobject.optInt("svr_size");
_L12:
        t1.a(s1);
        ((ArrayList) (obj)).add(t1);
        i++;
        continue; /* Loop/switch isn't completed */
_L8:
        try
        {
            s1.j = false;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            return null;
        }
          goto _L11
_L10:
        s1.k = 0;
          goto _L12
_L6:
        return ((ArrayList) (obj));
        if (true) goto _L14; else goto _L13
_L13:
    }

    public boolean e(int i)
    {
        if (b == null || i < 0)
        {
            return false;
        } else
        {
            return b.b(i, false);
        }
    }

    public t f(int i)
    {
        if (b != null && i >= 0) goto _L2; else goto _L1
_L1:
        Object obj;
        return null;
_L2:
        if ((obj = b.e(i)) == null || ((String) (obj)).equals("")) goto _L1; else goto _L3
_L3:
        t t1;
        s s1;
        t1 = new t();
        s1 = new s();
        obj = new JSONObject(((String) (obj)));
        if (((JSONObject) (obj)).length() == 0) goto _L1; else goto _L4
_L4:
        s1.a = ((JSONObject) (obj)).optInt("id");
        s1.b = ((JSONObject) (obj)).optString("name");
        s1.c = ((JSONObject) (obj)).optString("pinyin");
        s1.d = ((JSONObject) (obj)).optString("headchar");
        s1.h = ((JSONObject) (obj)).optInt("size");
        s1.i = ((JSONObject) (obj)).optInt("ratio");
        s1.l = ((JSONObject) (obj)).optInt("status");
        s1.g = new d();
        s1.g.a(((JSONObject) (obj)).optInt("x"));
        s1.g.b(((JSONObject) (obj)).optInt("y"));
        if (((JSONObject) (obj)).optInt("up") != 1)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        s1.j = true;
_L5:
        s1.e = ((JSONObject) (obj)).optInt("lev");
        s1.f = ((JSONObject) (obj)).optInt("ver");
        t1.a(s1);
        return t1;
        try
        {
            s1.j = false;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
          goto _L5
    }

}
