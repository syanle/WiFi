// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.a;

import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import net.youmi.android.a.a.e.a.b.a;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.g.g;
import net.youmi.android.a.a.j.k;
import net.youmi.android.a.b.k.f;
import net.youmi.android.listener.Interface_WebViewDialogListener;

// Referenced classes of package net.youmi.android.a.a.i.a.a:
//            a

public class d extends net.youmi.android.a.a.i.a.a.a
    implements android.view.View.OnClickListener
{

    protected k e;
    protected Interface_WebViewDialogListener f;

    protected d(Context context, g g1, h h, int i)
    {
        super(context, g1, h, i);
        a(context, g1);
    }

    public static d b(Context context, g g1)
    {
        try
        {
            context = new d(context, g1, new a(context, null, g1), 0x103000f);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    void a(Context context, g g1)
    {
        Object obj;
        while (g1 == null || !g1.a()) 
        {
            return;
        }
        obj = net.youmi.android.a.b.k.f.a(context);
        obj = new android.widget.FrameLayout.LayoutParams(((f) (obj)).a(34), ((f) (obj)).a(34));
        e = new k(context);
        e.setOnClickListener(this);
        g1.c();
        JVM INSTR tableswitch 1 4: default 92
    //                   1 118
    //                   2 127
    //                   3 136
    //                   4 145;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        e.setVisibility(8);
_L7:
        addContentView(e, ((android.view.ViewGroup.LayoutParams) (obj)));
        e.bringToFront();
        return;
_L2:
        obj.gravity = 51;
        continue; /* Loop/switch isn't completed */
_L3:
        obj.gravity = 83;
        continue; /* Loop/switch isn't completed */
_L4:
        obj.gravity = 53;
        continue; /* Loop/switch isn't completed */
_L5:
        obj.gravity = 85;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a(Interface_WebViewDialogListener interface_webviewdialoglistener)
    {
        f = interface_webviewdialoglistener;
    }

    public boolean a(int i, int j, float f1)
    {
        return false;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
    }

    public void onClick(View view)
    {
        try
        {
            cancel();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            return;
        }
    }

    public void onContentChanged()
    {
        super.onContentChanged();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreatePanelView(int i)
    {
        return super.onCreatePanelView(i);
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (f != null)
        {
            f.onDialogClose();
        }
    }

    public boolean onPreparePanel(int i, View view, Menu menu)
    {
        return super.onPreparePanel(i, view, menu);
    }

    public void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
    }

    public Bundle onSaveInstanceState()
    {
        return super.onSaveInstanceState();
    }

    protected void onStart()
    {
        super.onStart();
    }

    protected void onStop()
    {
        super.onStop();
    }

    public void onWindowAttributesChanged(android.view.WindowManager.LayoutParams layoutparams)
    {
        super.onWindowAttributesChanged(layoutparams);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
    }
}
