// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.os.Handler;
import android.view.View;
import java.io.IOException;

// Referenced classes of package com.cat.picture:
//            ShowImageActivity, ClipImageLayout

class this._cls0
    implements android.view.
{

    final ShowImageActivity this$0;

    public void onClick(View view)
    {
        if (btn_click)
        {
            ShowImageActivity.access$1(ShowImageActivity.this);
            aftercut_bitmap = ShowImageActivity.access$2(ShowImageActivity.this).clip();
            if (aftercut_bitmap != null)
            {
                try
                {
                    saveBitmap(aftercut_bitmap);
                }
                // Misplaced declaration of an exception variable
                catch (View view)
                {
                    view.printStackTrace();
                }
                ShowImageActivity.access$3(ShowImageActivity.this).sendEmptyMessage(2);
                btn_click = false;
            }
        }
    }

    ()
    {
        this$0 = ShowImageActivity.this;
        super();
    }
}
