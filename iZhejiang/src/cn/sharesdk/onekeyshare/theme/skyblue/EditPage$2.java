// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.skyblue:
//            EditPage

class this._cls0
    implements cn.sharesdk.onekeyshare.eActivity.ImageListResultsCallback
{

    final EditPage this$0;

    public void onFinish(ArrayList arraylist)
    {
        if (arraylist != null)
        {
            LinearLayout linearlayout = (LinearLayout)findViewByResName("imagesLinearLayout");
            arraylist = arraylist.iterator();
            while (arraylist.hasNext()) 
            {
                cn.sharesdk.onekeyshare.eActivity.ImageInfo imageinfo = (cn.sharesdk.onekeyshare.eActivity.ImageInfo)arraylist.next();
                if (imageinfo.bitmap != null)
                {
                    linearlayout.addView(EditPage.access$1(EditPage.this, imageinfo));
                }
            }
        }
    }

    eInfo()
    {
        this$0 = EditPage.this;
        super();
    }
}
