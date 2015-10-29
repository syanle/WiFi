// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.f;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import java.util.HashMap;
import net.youmi.android.a.a.d.b;
import net.youmi.android.a.a.e.g.h;
import net.youmi.android.a.b.g.d.g;
import net.youmi.android.a.b.k.f;
import net.youmi.android.a.b.k.i;
import net.youmi.android.a.b.k.k;

// Referenced classes of package net.youmi.android.a.a.e.f:
//            a

public class c
    implements g
{

    private static c c;
    private Context a;
    private HashMap b;

    public c(Context context)
    {
        b = new HashMap();
        a = context.getApplicationContext();
        net.youmi.android.a.a.d.b.a(a).a(this);
    }

    private Bitmap a(Bitmap bitmap)
    {
        if (bitmap != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return ((Bitmap) (obj));
_L2:
        if (bitmap.isRecycled())
        {
            return null;
        }
        int j;
        int l;
        int j1;
        int k1;
        Bitmap bitmap1;
        int i1;
        if (f.a(a).e() >= 320)
        {
            j = 100;
        } else
        {
            j = 72;
        }
        obj = bitmap;
        if (j <= 0) goto _L4; else goto _L3
_L3:
        try
        {
            j1 = bitmap.getWidth();
            k1 = bitmap.getHeight();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return bitmap;
        }
        if (j1 < k1) goto _L6; else goto _L5
_L5:
        i1 = (j1 * j) / k1;
        l = j;
        j = i1;
          goto _L7
_L9:
        bitmap1 = Bitmap.createScaledBitmap(bitmap, j, l, true);
        obj = bitmap;
        if (bitmap1 != null)
        {
            try
            {
                bitmap.recycle();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap) { }
            return bitmap1;
        } else
        {
            break; /* Loop/switch isn't completed */
        }
_L6:
        l = (j * k1) / j1;
_L7:
        obj = bitmap;
        if (j <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = bitmap;
        if (l <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j != j1) goto _L9; else goto _L8
_L8:
        obj = bitmap;
        if (l == k1) goto _L4; else goto _L9
    }

    public static c a(Context context)
    {
        net/youmi/android/a/a/e/f/c;
        JVM INSTR monitorenter ;
        try
        {
            if (c == null)
            {
                c = new c(context);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = c;
        net/youmi/android/a/a/e/f/c;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private void a(h h1, Bitmap bitmap)
    {
        Intent intent;
        Intent intent1;
        try
        {
            intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            intent.putExtra("android.intent.extra.shortcut.NAME", h1.a());
            intent.putExtra("duplicate", false);
            intent1 = i.a(a, h1.f(), h1.e(), h1.b());
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return;
        }
        if (intent1 == null)
        {
            return;
        }
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent1);
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        intent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
_L2:
        a.sendBroadcast(intent);
        if (h1.d() != null && h1.g() != null)
        {
            bitmap = new StringBuilder();
            bitmap.append("javascript:");
            bitmap.append(h1.d());
            bitmap.append("('");
            bitmap.append(h1.a());
            bitmap.append("',");
            bitmap.append("0);");
            net.youmi.android.a.a.e.f.a.a().a(h1.g(), bitmap.toString());
            return;
        }
        break MISSING_BLOCK_LABEL_187;
        intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", android.content.Intent.ShortcutIconResource.fromContext(a, 0x108000a));
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(String s)
    {
        if (!b.containsKey(s))
        {
            return;
        }
        h h1 = (h)b.get(s);
        if (h1 != null)
        {
            try
            {
                if (h1.h())
                {
                    a(h1, null);
                    b.remove(s);
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return;
    }

    public void a(String s, Bitmap bitmap)
    {
        h h1;
        Bitmap bitmap1;
        try
        {
            if (!b.containsKey(s))
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        h1 = (h)b.get(s);
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        if (!h1.h())
        {
            break MISSING_BLOCK_LABEL_73;
        }
        bitmap1 = a(bitmap);
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        a(h1, bitmap1);
_L2:
        b.remove(s);
        return;
        a(h1, bitmap);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a(h h1)
    {
        if (h1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (!k.h(a) || !h1.h()) goto _L1; else goto _L3
_L3:
        String s;
        String s1;
        s1 = h1.b();
        s = h1.c();
        if (s == null)
        {
            try
            {
                b.put(s1, h1);
                a(s1);
            }
            // Misplaced declaration of an exception variable
            catch (h h1)
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_93;
        }
        b.put(s, h1);
        h1 = net.youmi.android.a.a.d.b.a(a).a(s);
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        a(s, ((Bitmap) (h1)));
        return true;
    }

    public void b(String s)
    {
    }
}
