// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            AsyncView

public interface OnImageGotListener
{

    public abstract Bitmap onImageGot(AsyncView asyncview, Bitmap bitmap, String s);
}
