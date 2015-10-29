// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            OnImageGotListener, AsyncView

public class SimpleOnImageGotListener
    implements OnImageGotListener
{

    public static final SimpleOnImageGotListener INSTANCE = new SimpleOnImageGotListener();

    private SimpleOnImageGotListener()
    {
    }

    public Bitmap onImageGot(AsyncView asyncview, Bitmap bitmap, String s)
    {
        if (s != null && s.trim().length() > 0 && s.equals(asyncview.getUrl()))
        {
            return bitmap;
        } else
        {
            return null;
        }
    }

}
