// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import java.io.InputStream;

// Referenced classes of package net.youmi.android.c.a:
//            p, h, o, l, 
//            i, m, n

public class k extends p
    implements h
{

    private i a;
    private Bitmap b;
    private boolean c;
    private boolean d;
    private n e;
    private Context f;
    private boolean g;
    private View h;
    private o i;
    private Handler j;

    public k(Context context)
    {
        super(context);
        a = null;
        b = null;
        c = true;
        d = false;
        e = null;
        f = null;
        g = false;
        h = null;
        i = o.b;
        j = new l(this);
        f = context;
        setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
    }

    static Bitmap a(k k1, Bitmap bitmap)
    {
        k1.b = bitmap;
        return bitmap;
    }

    static View a(k k1)
    {
        return k1.h;
    }

    static Bitmap b(k k1)
    {
        return k1.b;
    }

    private void b()
    {
        if (j != null)
        {
            android.os.Message message = j.obtainMessage();
            j.sendMessage(message);
        }
    }

    private void c()
    {
        setImageBitmap(b);
        invalidate();
    }

    static void c(k k1)
    {
        k1.c();
    }

    static i d(k k1)
    {
        return k1.a;
    }

    static boolean e(k k1)
    {
        return k1.c;
    }

    static void f(k k1)
    {
        k1.b();
    }

    static boolean g(k k1)
    {
        return k1.d;
    }

    static Handler h(k k1)
    {
        return k1.j;
    }

    private void setGifDecoderImage(InputStream inputstream)
    {
        if (a == null)
        {
            a = new i(this);
        }
        a.a(inputstream);
        a.start();
    }

    private void setGifDecoderImage(byte abyte0[])
    {
        if (a == null)
        {
            a = new i(this);
        }
        a.a(abyte0);
        a.start();
    }

    public void a()
    {
        if (a != null)
        {
            a.a();
        }
    }

    public void a(boolean flag, int i1)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        m.a[i.ordinal()];
        JVM INSTR tableswitch 1 3: default 48
    //                   1 49
    //                   2 83
    //                   3 153;
           goto _L2 _L3 _L4 _L5
_L2:
        return;
_L3:
        if (i1 == -1)
        {
            if (a.b() > 1)
            {
                (new n(this, null)).start();
                return;
            } else
            {
                b();
                return;
            }
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        if (i1 == 1)
        {
            b = a.c();
            b();
            return;
        }
        if (i1 == -1)
        {
            if (a.b() > 1)
            {
                if (e == null)
                {
                    e = new n(this, null);
                    e.start();
                    return;
                }
            } else
            {
                b();
                return;
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
        if (i1 == 1)
        {
            b = a.c();
            b();
            return;
        }
        if (i1 == -1)
        {
            b();
            return;
        }
        if (e != null) goto _L2; else goto _L6
_L6:
        e = new n(this, null);
        e.start();
        return;
        Log.e("gif", "parse error");
        return;
    }

    protected Parcelable onSaveInstanceState()
    {
        super.onSaveInstanceState();
        if (a != null)
        {
            a.a();
        }
        return null;
    }

    public void setAsBackground(View view)
    {
        h = view;
    }

    public void setGifImage(int i1)
    {
        setGifDecoderImage(getResources().openRawResource(i1));
    }

    public void setGifImage(InputStream inputstream)
    {
        setGifDecoderImage(inputstream);
    }

    public void setGifImage(byte abyte0[])
    {
        setGifDecoderImage(abyte0);
    }

    public void setGifImageType(o o1)
    {
        if (a == null)
        {
            i = o1;
        }
    }
}
