// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.l;

import android.content.Context;
import android.widget.ImageView;
import net.youmi.android.a.b.k.b;

public class d extends ImageView
{

    public d(Context context, String s, int i)
    {
        super(context);
        try
        {
            setImageBitmap(b.a(s));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            setImageResource(i);
        }
        setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
    }
}
