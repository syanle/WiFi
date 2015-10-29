// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.a.a:
//            a, g, c, d, 
//            f, e, h, j, 
//            i

public class b
{

    public static final String a = (new StringBuilder()).append("appmodel_").append(net/youmi/android/a/a/a/a/b.getSimpleName()).toString();

    public b()
    {
    }

    public static String a(a a1)
    {
        int k;
        boolean flag = false;
        System.currentTimeMillis();
        JSONObject jsonobject;
        Object obj;
        Object obj1;
        Object obj2;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("a", a1.a());
            jsonobject.put("b", a1.b());
            jsonobject.put("c", a1.c());
            obj = a1.g();
        }
        // Misplaced declaration of an exception variable
        catch (a a1)
        {
            return null;
        }
        finally
        {
            throw a1;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        if (((g) (obj)).b() != null)
        {
            jsonobject.put("a1", ((g) (obj)).b());
        }
        if (((g) (obj)).c() != null)
        {
            jsonobject.put("a2", ((g) (obj)).c());
        }
        if (((g) (obj)).f() != null)
        {
            jsonobject.put("g1", ((g) (obj)).f());
        }
        if (((g) (obj)).d() != null)
        {
            jsonobject.put("a3", ((g) (obj)).d());
        }
        if (((g) (obj)).e() != null)
        {
            jsonobject.put("a5", ((g) (obj)).e());
        }
        jsonobject.put("a6", ((g) (obj)).g());
        if (((g) (obj)).a() >= 0L)
        {
            jsonobject.put("a4", ((g) (obj)).a());
        }
        obj = a1.f();
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((c) (obj)).f() != null)
        {
            jsonobject.put("b1", ((c) (obj)).f());
        }
        if (((c) (obj)).e() != null)
        {
            jsonobject.put("b2", ((c) (obj)).e());
        }
        if (((c) (obj)).c() != null)
        {
            jsonobject.put("b3", ((c) (obj)).c());
        }
        if (((c) (obj)).g() != null)
        {
            jsonobject.put("b4", ((c) (obj)).g());
        }
        if (((c) (obj)).b() != null)
        {
            jsonobject.put("b5", ((c) (obj)).b());
        }
        if (((c) (obj)).d() != null)
        {
            jsonobject.put("b6", ((c) (obj)).d());
        }
        if (((c) (obj)).h() != null)
        {
            jsonobject.put("b7", ((c) (obj)).h());
        }
        if (((c) (obj)).i() != null)
        {
            jsonobject.put("b8", ((c) (obj)).i());
        }
        jsonobject.put("b10", ((c) (obj)).j());
        obj = ((c) (obj)).a();
        if (obj == null) goto _L2; else goto _L3
_L3:
        if (((ArrayList) (obj)).size() <= 0) goto _L2; else goto _L4
_L4:
        obj1 = new JSONArray();
        k = 0;
_L13:
        if (k >= ((ArrayList) (obj)).size()) goto _L6; else goto _L5
_L5:
        obj2 = (String)((ArrayList) (obj)).get(k);
        if (obj2 == null) goto _L8; else goto _L7
_L7:
        ((JSONArray) (obj1)).put(obj2);
          goto _L8
_L6:
        try
        {
            jsonobject.put("b9", obj1);
        }
        catch (Throwable throwable) { }
_L2:
        obj = a1.i();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_490;
        }
        if (((d) (obj)).d() != null)
        {
            jsonobject.put("c1", ((d) (obj)).d());
        }
        jsonobject.put("c3", ((d) (obj)).e());
        if (((d) (obj)).c() != null)
        {
            jsonobject.put("c2", ((d) (obj)).c());
        }
        jsonobject.put("c4", ((d) (obj)).b());
        jsonobject.put("c5", ((d) (obj)).a());
        obj = a1.e();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_554;
        }
        jsonobject.put("d1", ((f) (obj)).a());
        jsonobject.put("d2", ((f) (obj)).b());
        jsonobject.put("d3", ((f) (obj)).d());
        jsonobject.put("d4", ((f) (obj)).c());
        jsonobject.put("d10", ((f) (obj)).g());
        obj = a1.h();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_603;
        }
        if (((e) (obj)).c() != null)
        {
            jsonobject.put("e1", ((e) (obj)).c());
        }
        jsonobject.put("e2", ((e) (obj)).b());
        jsonobject.put("e3", ((e) (obj)).a());
        obj = a1.k();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_634;
        }
        jsonobject.put("f1", ((h) (obj)).b());
        jsonobject.put("f2", ((h) (obj)).a());
        a1 = a1.j();
        if (a1 == null) goto _L10; else goto _L9
_L9:
        jsonobject.put("g3", a1.a());
        a1 = a1.b();
        if (a1 == null) goto _L10; else goto _L11
_L11:
        if (a1.size() <= 0) goto _L10; else goto _L12
_L12:
        obj = new JSONArray();
        k = ((flag) ? 1 : 0);
_L14:
        if (k >= a1.size())
        {
            break MISSING_BLOCK_LABEL_769;
        }
        obj1 = (i)a1.get(k);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_815;
        }
        obj2 = new JSONObject();
        ((JSONObject) (obj2)).put("h3", ((i) (obj1)).a());
        ((JSONObject) (obj2)).put("h2", ((i) (obj1)).b());
        ((JSONObject) (obj2)).put("h1", ((i) (obj1)).c());
        ((JSONArray) (obj)).put(obj2);
        break MISSING_BLOCK_LABEL_815;
        try
        {
            if (((JSONArray) (obj)).length() > 0)
            {
                jsonobject.put("g2", obj);
            }
        }
        // Misplaced declaration of an exception variable
        catch (a a1) { }
_L10:
        a1 = jsonobject.toString();
        return a1;
_L8:
        k++;
          goto _L13
        k++;
          goto _L14
    }

    public static boolean a(a a1, String s)
    {
        int k;
        System.currentTimeMillis();
        if (s == null)
        {
            return false;
        }
        Object obj;
        Object obj1;
        Object obj2;
        String s1;
        String s2;
        Object obj3;
        String s3;
        String s4;
        String s5;
        String s6;
        int l;
        int i1;
        long l1;
        long l2;
        try
        {
            s = net.youmi.android.a.b.b.b.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (a a1)
        {
            return false;
        }
        finally
        {
            throw a1;
        }
        if (s == null)
        {
            return false;
        }
        k = net.youmi.android.a.b.b.b.a(s, "a", -1);
        l = net.youmi.android.a.b.b.b.a(s, "b", -1);
        if (k < 0 || l < 0)
        {
            return false;
        }
        try
        {
            a1.a(net.youmi.android.a.b.b.b.a(s, "c", 0L));
        }
        catch (Throwable throwable) { }
        obj = net.youmi.android.a.b.b.b.a(s, "a1", null);
        obj1 = net.youmi.android.a.b.b.b.a(s, "g1", null);
        obj2 = net.youmi.android.a.b.b.b.a(s, "a3", null);
        s1 = net.youmi.android.a.b.b.b.a(s, "a2", null);
        s2 = net.youmi.android.a.b.b.b.a(s, "a5", null);
        k = net.youmi.android.a.b.b.b.a(s, "a6", 0);
        l1 = net.youmi.android.a.b.b.b.a(s, "a4", 0L);
        if (obj == null && obj2 == null && s1 == null && s2 == null && obj1 == null && k <= 0)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        obj3 = new g();
        ((g) (obj3)).a(((String) (obj)));
        ((g) (obj3)).e(((String) (obj1)));
        ((g) (obj3)).c(((String) (obj2)));
        ((g) (obj3)).b(s1);
        ((g) (obj3)).d(s2);
        ((g) (obj3)).a(l1);
        ((g) (obj3)).a(k);
        a1.a(((g) (obj3)));
        obj2 = net.youmi.android.a.b.b.b.a(s, "b1", null);
        s1 = net.youmi.android.a.b.b.b.a(s, "b2", null);
        s2 = net.youmi.android.a.b.b.b.a(s, "b3", null);
        obj3 = net.youmi.android.a.b.b.b.a(s, "b4", null);
        s3 = net.youmi.android.a.b.b.b.a(s, "b5", null);
        s4 = net.youmi.android.a.b.b.b.a(s, "b6", null);
        s5 = net.youmi.android.a.b.b.b.a(s, "b7", null);
        l1 = net.youmi.android.a.b.b.b.a(s, "b10", 0L);
        s6 = net.youmi.android.a.b.b.b.a(s, "b8", null);
        obj = net.youmi.android.a.b.b.b.a(s, "b9", null);
        if (obj2 != null || s1 != null || s2 != null || obj3 != null || s3 != null || s4 != null || s5 != null || s6 != null) goto _L2; else goto _L1
_L1:
        if (obj == null) goto _L4; else goto _L3
_L3:
        if (((JSONArray) (obj)).length() <= 0) goto _L4; else goto _L2
_L2:
        obj1 = new c();
        ((c) (obj1)).f(((String) (obj2)));
        ((c) (obj1)).e(s1);
        ((c) (obj1)).c(s2);
        ((c) (obj1)).g(((String) (obj3)));
        ((c) (obj1)).b(s3);
        ((c) (obj1)).d(s4);
        ((c) (obj1)).h(s5);
        ((c) (obj1)).a(l1);
        ((c) (obj1)).i(s6);
        if (obj == null) goto _L6; else goto _L5
_L5:
        if (((JSONArray) (obj)).length() <= 0) goto _L6; else goto _L7
_L7:
        k = 0;
_L17:
        if (k >= ((JSONArray) (obj)).length()) goto _L6; else goto _L8
_L8:
        obj2 = net.youmi.android.a.b.b.b.a(((JSONArray) (obj)), k, null);
        if (obj2 == null) goto _L10; else goto _L9
_L9:
        ((c) (obj1)).a(((String) (obj2)));
          goto _L10
_L6:
        a1.a(((c) (obj1)));
_L4:
        obj = net.youmi.android.a.b.b.b.a(s, "c2", null);
        obj1 = net.youmi.android.a.b.b.b.a(s, "c1", null);
        k = net.youmi.android.a.b.b.b.a(s, "c3", 0);
        l1 = net.youmi.android.a.b.b.b.a(s, "c5", 0L);
        l = net.youmi.android.a.b.b.b.a(s, "c4", 0);
        if (obj == null && obj1 == null)
        {
            break MISSING_BLOCK_LABEL_565;
        }
        obj2 = new d();
        ((d) (obj2)).a(((String) (obj)));
        ((d) (obj2)).b(((String) (obj1)));
        ((d) (obj2)).b(k);
        ((d) (obj2)).a(l1);
        ((d) (obj2)).a(l);
        a1.a(((d) (obj2)));
        obj = new f();
        ((f) (obj)).d(net.youmi.android.a.b.b.b.a(s, "d3", false));
        ((f) (obj)).c(net.youmi.android.a.b.b.b.a(s, "d4", false));
        ((f) (obj)).a(net.youmi.android.a.b.b.b.a(s, "d1", false));
        ((f) (obj)).b(net.youmi.android.a.b.b.b.a(s, "d2", false));
        ((f) (obj)).a(net.youmi.android.a.b.b.b.a(s, "d10", 0L));
        a1.a(((f) (obj)));
        obj = net.youmi.android.a.b.b.b.a(s, "e1", null);
        l1 = net.youmi.android.a.b.b.b.a(s, "e2", 0L);
        l2 = net.youmi.android.a.b.b.b.a(s, "e3", 0L);
        if (obj == null && l1 <= 0L)
        {
            break MISSING_BLOCK_LABEL_700;
        }
        obj1 = new e();
        ((e) (obj1)).a(((String) (obj)));
        ((e) (obj1)).b(l1);
        ((e) (obj1)).a(l2);
        a1.a(((e) (obj1)));
        k = net.youmi.android.a.b.b.b.a(s, "f1", 0);
        l1 = net.youmi.android.a.b.b.b.a(s, "f2", 0L);
        obj = new h();
        ((h) (obj)).a(k);
        ((h) (obj)).a(l1);
        a1.a(((h) (obj)));
        l1 = net.youmi.android.a.b.b.b.a(s, "g3", 0L);
        s = net.youmi.android.a.b.b.b.a(s, "g2", null);
        if (s == null) goto _L12; else goto _L11
_L11:
        if (s.length() <= 0) goto _L12; else goto _L13
_L13:
        obj = new j();
        ((j) (obj)).a(l1);
        a1.a(((j) (obj)));
        if (s == null) goto _L12; else goto _L14
_L14:
        k = 0;
_L15:
        if (k >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = net.youmi.android.a.b.b.b.a(s, k, null);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_892;
        }
        a1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "h3", null);
        l = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "h2", -1);
        i1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "h1", -1);
        if (a1 == null && l < 0 && i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_892;
        }
        obj1 = new i();
        ((i) (obj1)).a(a1);
        ((i) (obj1)).a(l);
        ((i) (obj1)).b(i1);
        ((j) (obj)).a(((i) (obj1)));
        k++;
        if (true) goto _L15; else goto _L12
_L12:
        return true;
_L10:
        k++;
        if (true) goto _L17; else goto _L16
_L16:
    }

}
