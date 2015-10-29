// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.ImageView;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.skyblue:
//            FollowListPage

private static class  extends ImageView
{

    private int rotation;

    protected void onDraw(Canvas canvas)
    {
        canvas.rotate(rotation, getWidth() / 2, getHeight() / 2);
        super.onDraw(canvas);
    }

    public void setRotation(int i)
    {
        rotation = i;
        invalidate();
    }

    public (Context context)
    {
        super(context);
    }
}
