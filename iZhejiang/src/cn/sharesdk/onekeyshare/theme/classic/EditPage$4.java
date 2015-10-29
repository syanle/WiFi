// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            EditPage

class this._cls0
    implements cn.sharesdk.onekeyshare.eActivity.ImageListResultsCallback
{

    final EditPage this$0;

    public void onFinish(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.size() == 0)
        {
            return;
        } else
        {
            EditPage.access$8(EditPage.this, (cn.sharesdk.onekeyshare.eActivity.ImageInfo)arraylist.get(0));
            EditPage.access$9(EditPage.this, EditPage.access$6(EditPage.this).bitmap);
            EditPage.access$4(EditPage.this).setVisibility(0);
            EditPage.access$5(EditPage.this).setVisibility(0);
            EditPage.access$10(EditPage.this).setVisibility(8);
            EditPage.access$11(EditPage.this).setImageBitmap(EditPage.access$2(EditPage.this));
            return;
        }
    }

    eInfo()
    {
        this$0 = EditPage.this;
        super();
    }
}
