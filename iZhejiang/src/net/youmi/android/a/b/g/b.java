// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import net.youmi.android.a.b.g.d.c;
import net.youmi.android.a.b.g.d.g;
import net.youmi.android.a.b.j.a;

// Referenced classes of package net.youmi.android.a.b.g:
//            e

public abstract class b extends a
    implements net.youmi.android.a.b.g.d.b, c
{

    private Context a;
    private net.youmi.android.a.b.g.c.a b;
    private HashMap c;
    private HashSet d;

    public b(Context context, net.youmi.android.a.b.g.c.a a1)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("context is null");
        }
        a = context.getApplicationContext();
        if (a1 == null)
        {
            throw new IOException("Cache Directory is null");
        } else
        {
            b = a1;
            c = new HashMap();
            d = new HashSet();
            net.youmi.android.a.b.g.e.a().a(this);
            return;
        }
    }

    protected Bitmap a(File file)
    {
        if (file != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (file.exists() && (file = BitmapFactory.decodeFile(file.getAbsolutePath())) != null)
        {
            boolean flag;
            try
            {
                flag = file.isRecycled();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return null;
            }
            if (!flag)
            {
                return file;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public Bitmap a(String s)
    {
        s = new net.youmi.android.a.b.g.e.a(s);
        if (!s.d())
        {
            return null;
        }
        Bitmap bitmap;
        try
        {
            bitmap = a(((net.youmi.android.a.b.g.e.a) (s)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        if (bitmap != null)
        {
            return bitmap;
        }
        b(s);
        return null;
    }

    protected Bitmap a(net.youmi.android.a.b.g.e.a a1)
    {
        Object obj;
        if (!c.containsKey(a1))
        {
            break MISSING_BLOCK_LABEL_57;
        }
        obj = (SoftReference)c.get(a1);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        obj = (Bitmap)((SoftReference) (obj)).get();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        if (!((Bitmap) (obj)).isRecycled())
        {
            return ((Bitmap) (obj));
        }
        try
        {
            c.remove(a1);
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1) { }
        return null;
    }

    public final void a(net.youmi.android.a.b.g.e.a a1, long l, long l1, int j, long l2)
    {
    }

    protected boolean a(net.youmi.android.a.b.g.e.a a1, Bitmap bitmap)
    {
        boolean flag1 = true;
        boolean flag;
        if (a(a1) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L1
_L3:
        if (bitmap.isRecycled())
        {
            return flag;
        }
        try
        {
            a1 = ((net.youmi.android.a.b.g.e.a) (c.put(a1, new SoftReference(bitmap))));
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return false;
        }
        flag = flag1;
        if (a1 == null)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L1:
        if (bitmap != null) goto _L3; else goto _L2
_L2:
        return flag;
    }

    protected void b(net.youmi.android.a.b.g.e.a a1)
    {
        try
        {
            a1.a(b.c(a1.b()));
            d.add(a1);
            if (!net.youmi.android.a.b.g.e.a().a(a, a1, this))
            {
                d.remove(a1);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
    }

    public final void c(net.youmi.android.a.b.g.e.a a1)
    {
    }

    public final void d(net.youmi.android.a.b.g.e.a a1)
    {
    }

    public final void e(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = d.contains(a1))) goto _L1; else goto _L3
_L3:
        Bitmap bitmap;
        Object obj;
        int j;
        int k;
        try
        {
            bitmap = a(a1);
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (bitmap != null) goto _L5; else goto _L4
_L4:
        obj = a(a1.g());
        bitmap = ((Bitmap) (obj));
        a(a1, ((Bitmap) (obj)));
        bitmap = ((Bitmap) (obj));
_L5:
        if (bitmap == null) goto _L1; else goto _L6
_L6:
        obj = g();
        j = 0;
_L8:
        k = ((List) (obj)).size();
        if (j >= k) goto _L1; else goto _L7
_L7:
        Throwable throwable1;
        try
        {
            ((g)((List) (obj)).get(j)).a(a1.a(), bitmap);
        }
        catch (Throwable throwable2) { }
        j++;
          goto _L8
          goto _L1
        throwable1;
          goto _L5
        Throwable throwable;
        throwable;
          goto _L3
    }

    public final void f(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = d.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        int j;
        int k;
        try
        {
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        j = 0;
_L5:
        k = list.size();
        if (j >= k) goto _L1; else goto _L4
_L4:
        try
        {
            ((g)list.get(j)).a(a1.a());
        }
        catch (Throwable throwable1) { }
        j++;
          goto _L5
          goto _L1
        Throwable throwable;
        throwable;
          goto _L3
    }

    public final void g(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = d.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        int j;
        int k;
        try
        {
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        j = 0;
_L5:
        k = list.size();
        if (j >= k) goto _L1; else goto _L4
_L4:
        try
        {
            ((g)list.get(j)).b(a1.a());
        }
        catch (Throwable throwable1) { }
        j++;
          goto _L5
          goto _L1
        Throwable throwable;
        throwable;
          goto _L3
    }

    public boolean g_(net.youmi.android.a.b.g.e.a a1)
    {
        return false;
    }

    public void h_(net.youmi.android.a.b.g.e.a a1)
    {
        e(a1);
    }

    public boolean i(net.youmi.android.a.b.g.e.a a1)
    {
        boolean flag1 = false;
        boolean flag = false;
        Bitmap bitmap;
        try
        {
            bitmap = a(a1.g());
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return flag1;
        }
        if (bitmap != null)
        {
            flag = true;
        }
        flag1 = flag;
        a(a1, bitmap);
        return flag;
    }
}
