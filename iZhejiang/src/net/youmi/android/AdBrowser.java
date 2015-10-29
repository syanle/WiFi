// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import net.youmi.android.a.a.e.d.b;
import net.youmi.android.a.a.i.a.b.a;
import net.youmi.android.a.a.i.a.b.e;
import net.youmi.android.a.a.i.a.i;
import net.youmi.android.a.a.j.b.l;
import net.youmi.android.a.a.j.c;
import net.youmi.android.a.a.j.d;
import net.youmi.android.a.a.j.j;
import net.youmi.android.a.a.j.k;
import net.youmi.android.a.b.k.f;
import org.apache.http.util.EncodingUtils;

// Referenced classes of package net.youmi.android:
//            a, b

public class AdBrowser extends Activity
    implements b, a, e, net.youmi.android.a.a.j.a.a, l, c, j
{

    protected net.youmi.android.a.a.e.g.c a;
    protected net.youmi.android.a.a.i.a.b b;
    protected k c;
    private RelativeLayout d;
    private net.youmi.android.a.a.j.b e;
    private d f;
    private net.youmi.android.a.a.e.a.b.a g;

    public AdBrowser()
    {
    }

    private void n()
    {
        try
        {
            a = (net.youmi.android.a.a.e.g.c)getIntent().getSerializableExtra("aca5522945c72310f9f22b333c68f2b3");
            if (a == null)
            {
                finish();
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    private void o()
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (b.b() != null)
        {
            b.b().b();
            return;
        }
        try
        {
            b.reload();
            return;
        }
        catch (Throwable throwable) { }
    }

    void a()
    {
        Object obj;
        obj = net.youmi.android.a.b.k.f.a(this);
        obj = new android.widget.FrameLayout.LayoutParams(((f) (obj)).a(34), ((f) (obj)).a(34));
        c = new k(this);
        c.setOnClickListener(new net.youmi.android.a(this));
        if (a == null) goto _L2; else goto _L1
_L1:
        a.c();
        JVM INSTR tableswitch 1 4: default 96
    //                   1 122
    //                   2 131
    //                   3 140
    //                   4 149;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        c.setVisibility(8);
_L2:
        addContentView(c, ((android.view.ViewGroup.LayoutParams) (obj)));
        c.bringToFront();
        return;
_L4:
        obj.gravity = 51;
        continue; /* Loop/switch isn't completed */
_L5:
        obj.gravity = 83;
        continue; /* Loop/switch isn't completed */
_L6:
        obj.gravity = 53;
        continue; /* Loop/switch isn't completed */
_L7:
        obj.gravity = 85;
        if (true) goto _L2; else goto _L8
_L8:
    }

    public void a(int i1)
    {
        if (f != null)
        {
            f.setTitleBackgroundColor(i1);
        }
    }

    public void a(WebView webview, int i1, String s, String s1)
    {
        try
        {
            if (e != null && b != null)
            {
                e.setBackEnable(b.canGoBack());
                e.setForwardEnable(b.canGoForward());
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(WebView webview, String s)
    {
        try
        {
            if (e != null && b != null)
            {
                e.setBackEnable(b.canGoBack());
                e.setForwardEnable(b.canGoForward());
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(WebView webview, String s, Bitmap bitmap)
    {
        try
        {
            if (e != null && b != null)
            {
                e.setBackEnable(b.canGoBack());
                e.setForwardEnable(b.canGoForward());
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(CharSequence charsequence)
    {
        if (a.j().f && f != null)
        {
            f.setTitle(charsequence);
        }
    }

    public void a(String s)
    {
    }

    public void a(net.youmi.android.a.a.j.b.f f1)
    {
        try
        {
            if (b != null)
            {
                b.reload();
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.j.b.f f1)
        {
            return;
        }
    }

    public boolean a(int i1, int j1, float f1)
    {
        return false;
    }

    public boolean a(String s, byte abyte0[])
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        b.postUrl(s, abyte0);
        return true;
        s;
        return false;
    }

    public void b()
    {
        o();
    }

    public void b(int i1)
    {
        if (f != null)
        {
            f.setPoints(i1);
        }
    }

    public void b(CharSequence charsequence)
    {
        if (f != null)
        {
            f.setPointsUnit(charsequence);
        }
    }

    public boolean b(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        b.loadUrl(s);
        return true;
        s;
        return false;
    }

    public void c()
    {
        try
        {
            if (b != null)
            {
                b.c();
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void c(int i1)
    {
        if (f != null)
        {
            f.setPointsLayoutVisibility(i1);
        }
    }

    public void d()
    {
        try
        {
            if (b != null)
            {
                b.d();
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void e()
    {
    }

    public void f()
    {
        finish();
    }

    public void g()
    {
        try
        {
            if (b != null && b.canGoBack())
            {
                b.c();
                return;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        finish();
        return;
    }

    public void h()
    {
    }

    public void i()
    {
        o();
    }

    public void j()
    {
    }

    public void k()
    {
        o();
    }

    public boolean l()
    {
        try
        {
            finish();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    public boolean m()
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        b.clearHistory();
        return true;
        Throwable throwable;
        throwable;
        return false;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        n();
        d = new RelativeLayout(this);
        d.setBackgroundColor(-1);
        g = new net.youmi.android.a.a.e.a.b.a(this, this, a);
        bundle = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        if ((a.d() & 0x10) == 0)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        boolean flag;
        if ((a.d() & 0x20) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Throwable throwable;
        try
        {
            f = new d(this, a.j(), this, flag);
            f.setId(2);
            net.youmi.android.a.a.j.a.b.a().a(this);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams.addRule(10);
            d.addView(f, layoutparams);
            bundle.addRule(3, 2);
        }
        catch (Throwable throwable1) { }
        if ((a.d() & 8) != 0)
        {
            try
            {
                e = new net.youmi.android.a.a.j.b(this, this);
                e.setId(4);
                layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
                layoutparams1.addRule(12);
                d.addView(e, layoutparams1);
                bundle.addRule(2, 4);
            }
            // Misplaced declaration of an exception variable
            catch (Throwable throwable) { }
        }
        b = new net.youmi.android.a.a.i.a.b(this, g, a.d(), this, a.k(), a.l(), 0, a.h(), this);
        b.(this);
        b.getCurrentView().setId(3);
        d.addView(b.getCurrentView(), bundle);
        setContentView(d);
        a();
        bundle = a.n();
        if (a.m() == 2 && bundle != null)
        {
            b.postUrl(a.o(), EncodingUtils.getBytes(bundle, "BASE64"));
            return;
        } else
        {
            b.loadUrl(a.o());
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (a != null && a.i() != 0)
        {
            net.youmi.android.listener.a.a().a(this, a.i());
        }
        b.h();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 4 && b.c())
        {
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    protected void onPause()
    {
        net.youmi.android.a.a.g.g.d.a(this).a();
        super.onPause();
        b.g();
    }

    protected void onResume()
    {
        net.youmi.android.a.c.a.a(new net.youmi.android.b(this));
        super.onResume();
        b.();
    }

    protected void onStop()
    {
        super.onStop();
    }
}
