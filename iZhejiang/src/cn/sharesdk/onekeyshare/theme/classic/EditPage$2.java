// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.graphics.Bitmap;
import android.view.View;
import cn.sharesdk.onekeyshare.PicViewer;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            EditPage

class this._cls0
    implements android.view.kListener
{

    final EditPage this$0;

    public void onClick(View view)
    {
        if (EditPage.access$2(EditPage.this) != null && !EditPage.access$2(EditPage.this).isRecycled())
        {
            view = new PicViewer();
            view.setImageBitmap(EditPage.access$2(EditPage.this));
            view.show(EditPage.access$3(EditPage.this), null);
        }
    }

    ()
    {
        this$0 = EditPage.this;
        super();
    }
}
