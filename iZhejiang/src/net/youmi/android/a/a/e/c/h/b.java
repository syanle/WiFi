// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.h;

import android.os.Build;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import org.json.JSONArray;
import org.json.JSONObject;

public final class b extends l
{

    public b()
    {
    }

    protected JSONObject a(h h, f f, JSONObject jsonobject)
    {
        int i;
        i = 0;
        String s;
        int j;
        try
        {
            h = new JSONObject();
            f = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h)
        {
            return null;
        }
        if (f == null) goto _L2; else goto _L1
_L1:
        j = f.length();
        if (i >= j) goto _L2; else goto _L3
_L3:
        jsonobject = f.getString(i);
        s = jsonobject.trim().toUpperCase();
        if (!"BOARD".equals(s)) goto _L5; else goto _L4
_L4:
        h.put(jsonobject, Build.BOARD);
          goto _L6
_L5:
        if (!"BRAND".equals(s)) goto _L8; else goto _L7
_L7:
        h.put(jsonobject, Build.BRAND);
          goto _L6
_L8:
        if (!"DEVICE".equals(s)) goto _L10; else goto _L9
_L9:
        h.put(jsonobject, Build.DEVICE);
          goto _L6
_L10:
        if (!"MANUFACTURER".equals(s)) goto _L12; else goto _L11
_L11:
        h.put(jsonobject, Build.MANUFACTURER);
          goto _L6
_L12:
        if (!"MODEL".equals(s)) goto _L14; else goto _L13
_L13:
        h.put(jsonobject, Build.MODEL);
          goto _L6
_L14:
        if (!"PRODUCT".equals(s)) goto _L16; else goto _L15
_L15:
        h.put(jsonobject, Build.PRODUCT);
          goto _L6
_L16:
        if (!"CPU_ABI".equals(s)) goto _L18; else goto _L17
_L17:
        h.put(jsonobject, Build.CPU_ABI);
          goto _L6
_L18:
        if (!"DISPLAY".equals(s)) goto _L20; else goto _L19
_L19:
        h.put(jsonobject, Build.DISPLAY);
          goto _L6
_L20:
        if (!"FINGERPRINT".equals(s)) goto _L22; else goto _L21
_L21:
        h.put(jsonobject, Build.FINGERPRINT);
          goto _L6
_L22:
        if (!"HOST".equals(s)) goto _L24; else goto _L23
_L23:
        h.put(jsonobject, Build.HOST);
          goto _L6
_L24:
        if (!"ID".equals(s)) goto _L26; else goto _L25
_L25:
        h.put(jsonobject, Build.ID);
          goto _L6
_L26:
        if (!"TAGS".equals(s)) goto _L28; else goto _L27
_L27:
        h.put(jsonobject, Build.TAGS);
          goto _L6
_L28:
        if (!"TYPE".equals(s)) goto _L30; else goto _L29
_L29:
        h.put(jsonobject, Build.TYPE);
          goto _L6
_L30:
        if (!"USER".equals(s)) goto _L32; else goto _L31
_L31:
        h.put(jsonobject, Build.USER);
          goto _L6
_L32:
        if (!"VERSION_CODENAME".equals(s)) goto _L34; else goto _L33
_L33:
        h.put(jsonobject, android.os.Build.VERSION.CODENAME);
          goto _L6
_L34:
        if (!"VERSION_INCREMENTAL".equals(s)) goto _L36; else goto _L35
_L35:
        h.put(jsonobject, android.os.Build.VERSION.INCREMENTAL);
          goto _L6
_L36:
        if (!"VERSION_RELEASE".equals(s)) goto _L38; else goto _L37
_L37:
        h.put(jsonobject, android.os.Build.VERSION.RELEASE);
          goto _L6
_L38:
        try
        {
            if ("VERSION_SDK_INT".equals(s))
            {
                h.put(jsonobject, android.os.Build.VERSION.SDK_INT);
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject) { }
          goto _L6
_L2:
        f = a(0);
        f.put("d", h);
        return f;
_L6:
        i++;
        if (true) goto _L1; else goto _L39
_L39:
    }
}
