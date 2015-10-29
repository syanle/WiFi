// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package cn.sharesdk.framework:
//            TitleLayout

class n extends TextView
{

    final ImageView a;
    final TitleLayout b;

    n(TitleLayout titlelayout, Context context, ImageView imageview)
    {
        b = titlelayout;
        a = imageview;
        super(context);
    }

    public void setVisibility(int i)
    {
        super.setVisibility(i);
        a.setVisibility(i);
    }
}
