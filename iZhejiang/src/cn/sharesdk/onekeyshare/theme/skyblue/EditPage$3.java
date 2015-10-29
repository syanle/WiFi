// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.view.View;
import cn.sharesdk.onekeyshare.PicViewer;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.skyblue:
//            EditPage

class eInfo
    implements android.view.kListener
{

    final EditPage this$0;
    private final cn.sharesdk.onekeyshare.eActivity.ImageInfo val$imageInfo;

    public void onClick(View view)
    {
        view = new PicViewer();
        view.setImageBitmap(val$imageInfo.bitmap);
        view.show(EditPage.access$0(EditPage.this), null);
    }

    eInfo()
    {
        this$0 = final_editpage;
        val$imageInfo = cn.sharesdk.onekeyshare.eActivity.ImageInfo.this;
        super();
    }
}
