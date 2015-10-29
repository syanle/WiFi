// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.f;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.b.k.j;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.f:
//            f, a

public class e
    implements Runnable
{

    private Context a;
    private ArrayList b;
    private String c;
    private long d;
    private JSONArray e;
    private String f;
    private h g;
    private f h;

    public e(Context context, h h1, ArrayList arraylist, String s, long l, String s1)
    {
        a = context;
        b = arraylist;
        c = s;
        d = l;
        f = s1;
        g = h1;
        h = new f(this, context);
    }

    public void run()
    {
        if (a == null || b == null || b.size() == 0) goto _L2; else goto _L1
_L1:
        Object obj = c;
        if (obj != null) goto _L3; else goto _L2
_L2:
        if (c != null && e != null && e.length() > 0)
        {
            obj = e.toString();
            StringBuilder stringbuilder = new StringBuilder(((String) (obj)).length() * 2);
            stringbuilder.append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj))).append(")");
            net.youmi.android.a.a.e.f.a.a().a(f, stringbuilder.toString());
        }
_L19:
        return;
_L3:
        int k = 0;
_L13:
        JSONObject jsonobject;
        Object obj5;
        if (k >= b.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        jsonobject = new JSONObject();
        if (e == null)
        {
            e = new JSONArray();
        }
        Object obj2 = (HashMap)b.get(k);
        obj = (String)((HashMap) (obj2)).get("packageName");
        String s = (String)((HashMap) (obj2)).get("apkUrl");
        obj2 = (String)((HashMap) (obj2)).get("md5sum");
        jsonobject.put("a", obj);
        obj5 = h.a(s, ((String) (obj2)));
        if (!((File) (obj5)).exists()) goto _L5; else goto _L4
_L4:
        jsonobject.put("b", 1);
        int i = 1;
_L14:
        Object obj6 = j.c(a, ((String) (obj)));
        if (obj6 == null) goto _L7; else goto _L6
_L6:
        jsonobject.put("c", 1);
        int l = 1;
_L15:
        Object obj3;
        Object obj4;
        boolean flag;
        long l3;
        obj3 = "";
        obj4 = "";
        flag = false;
        obj = "";
        l3 = 0L;
        if (l == 0) goto _L9; else goto _L8
_L8:
        Object obj1;
        obj3 = ((PackageInfo) (obj6)).applicationInfo.loadLabel(a.getPackageManager()).toString();
        obj1 = ((PackageInfo) (obj6)).versionName;
        l = ((PackageInfo) (obj6)).versionCode;
        long l1 = ((PackageInfo) (obj6)).firstInstallTime;
        long l2;
        Throwable throwable;
        try
        {
            l2 = ((PackageInfo) (obj6)).lastUpdateTime;
        }
        catch (Throwable throwable1)
        {
            break MISSING_BLOCK_LABEL_1140;
        }
        l3 = l1;
        l1 = l2;
_L23:
        obj4 = ((BitmapDrawable)((PackageInfo) (obj6)).applicationInfo.loadIcon(a.getPackageManager())).getBitmap();
        obj6 = new ByteArrayOutputStream();
        ((Bitmap) (obj4)).compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj6)));
        obj4 = Base64.encodeToString(((ByteArrayOutputStream) (obj6)).toByteArray(), 0);
        obj = obj4;
_L22:
        if (i == 0) goto _L11; else goto _L10
_L10:
        l2 = ((File) (obj5)).length();
          goto _L12
_L16:
        jsonobject.put("d", obj);
        jsonobject.put("e", obj3);
        jsonobject.put("f", i);
        jsonobject.put("g", obj1);
        jsonobject.put("h", l1);
        jsonobject.put("i", l3);
        jsonobject.put("j", l2);
        e.put(jsonobject);
        k++;
          goto _L13
_L5:
        jsonobject.put("b", 0);
        i = 0;
          goto _L14
_L7:
        jsonobject.put("c", 0);
        l = 0;
          goto _L15
_L9:
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_1092;
        }
        l1 = ((File) (obj5)).length();
        obj1 = obj3;
        obj5 = a.getPackageManager().getPackageArchiveInfo(((File) (obj5)).getAbsolutePath(), 1);
        if (obj5 == null)
        {
            break MISSING_BLOCK_LABEL_1077;
        }
        obj1 = obj3;
        obj6 = ((PackageInfo) (obj5)).applicationInfo;
        obj1 = obj3;
        obj = a.getPackageManager().getApplicationLabel(((ApplicationInfo) (obj6))).toString();
        obj1 = obj;
        obj3 = ((PackageInfo) (obj5)).versionName;
        i = ((PackageInfo) (obj5)).versionCode;
        obj1 = ((BitmapDrawable)a.getPackageManager().getApplicationIcon(((ApplicationInfo) (obj6)))).getBitmap();
        obj4 = new ByteArrayOutputStream();
        ((Bitmap) (obj1)).compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj4)));
        obj4 = Base64.encodeToString(((ByteArrayOutputStream) (obj4)).toByteArray(), 0);
        obj1 = obj;
        obj = obj4;
_L17:
        obj4 = obj1;
        l2 = 0L;
        obj1 = obj3;
        obj3 = obj4;
          goto _L16
        obj1;
        obj4 = "";
        obj1 = obj;
        obj = obj4;
          goto _L17
        obj;
        obj = obj1;
        obj1 = obj4;
        i = ((flag) ? 1 : 0);
_L21:
        obj3 = obj;
        obj = "";
        l2 = 0L;
          goto _L16
        obj;
        if (c == null || e == null || e.length() <= 0) goto _L19; else goto _L18
_L18:
        obj = e.toString();
        obj1 = new StringBuilder(((String) (obj)).length() * 2);
        ((StringBuilder) (obj1)).append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj))).append(")");
        net.youmi.android.a.a.e.f.a.a().a(f, ((StringBuilder) (obj1)).toString());
        return;
        obj;
        return;
        obj;
        if (c == null || e == null || e.length() <= 0) goto _L19; else goto _L20
_L20:
        obj = e.toString();
        obj1 = new StringBuilder(((String) (obj)).length() * 2);
        ((StringBuilder) (obj1)).append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj))).append(")");
        net.youmi.android.a.a.e.f.a.a().a(f, ((StringBuilder) (obj1)).toString());
        return;
        obj;
        return;
        obj;
        try
        {
            if (c != null && e != null && e.length() > 0)
            {
                obj1 = e.toString();
                obj3 = new StringBuilder(((String) (obj1)).length() * 2);
                ((StringBuilder) (obj3)).append("javascript:").append(c).append("(").append(d).append(",").append(((String) (obj1))).append(")");
                net.youmi.android.a.a.e.f.a.a().a(f, ((StringBuilder) (obj3)).toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        throw obj;
        obj1;
        obj1 = obj3;
        i = ((flag) ? 1 : 0);
          goto _L21
        obj1;
        obj1 = obj3;
          goto _L21
        throwable;
          goto _L22
        obj;
        return;
        i = 0;
        obj3 = "";
        obj = "";
        obj1 = "";
          goto _L17
        obj1 = "";
        obj3 = "";
        obj = "";
        i = 0;
        l1 = 0L;
        l2 = 0L;
          goto _L16
_L11:
        l2 = 0L;
_L12:
        i = l;
        long l4 = l1;
        l1 = l2;
        l2 = l4;
          goto _L16
        Throwable throwable2;
        throwable2;
        l1 = 0L;
        l3 = l1;
        l1 = 0L;
          goto _L23
    }
}
