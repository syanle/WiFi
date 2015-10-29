// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.a;

import android.content.Context;
import android.os.Parcelable;
import android.widget.RelativeLayout;

// Referenced classes of package net.youmi.android.a.a.i.a.a:
//            a

class b extends RelativeLayout
{

    private a a;

    b(Context context, a a1)
    {
        super(context);
        a = a1;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        a.a();
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        super.onRestoreInstanceState(parcelable);
    }
}
