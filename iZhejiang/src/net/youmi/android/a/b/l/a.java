// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.l;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageButton;
import net.youmi.android.a.b.k.b;

// Referenced classes of package net.youmi.android.a.b.l:
//            c, b

public class a extends ImageButton
{

    public a(Context context, String s)
    {
        super(context);
        try
        {
            setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            context = net.youmi.android.a.b.k.b.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        context = new BitmapDrawable(getResources(), context);
        a(context, context);
    }

    public a(Context context, String s, String s1)
    {
        Object obj = null;
        super(context);
        try
        {
            setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            context = net.youmi.android.a.b.k.b.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context = new BitmapDrawable(getResources(), context);
_L1:
        s1 = net.youmi.android.a.b.k.b.a(s1);
        s = obj;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        s = new BitmapDrawable(getResources(), s1);
        a(context, s);
        return;
        context = null;
          goto _L1
    }

    private void a(Drawable drawable, Drawable drawable1)
    {
        try
        {
            setImageDrawable(new c(this, drawable, drawable1));
        }
        // Misplaced declaration of an exception variable
        catch (Drawable drawable) { }
        try
        {
            setBackgroundDrawable(new net.youmi.android.a.b.l.b(this));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Drawable drawable)
        {
            return;
        }
    }

    static int[] a()
    {
        return PRESSED_ENABLED_STATE_SET;
    }

    static int[] b()
    {
        return ENABLED_STATE_SET;
    }

    static int[] c()
    {
        return EMPTY_STATE_SET;
    }

    static int[] d()
    {
        return PRESSED_ENABLED_STATE_SET;
    }

    static int[] e()
    {
        return ENABLED_STATE_SET;
    }

    static int[] f()
    {
        return EMPTY_STATE_SET;
    }
}
