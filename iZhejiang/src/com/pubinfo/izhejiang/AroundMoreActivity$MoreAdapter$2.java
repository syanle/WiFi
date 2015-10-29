// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.cat.list.OnImageDownload;

// Referenced classes of package com.pubinfo.izhejiang:
//            AroundMoreActivity

class this._cls1
    implements OnImageDownload
{

    final this._cls1 this$1;

    public void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout)
    {
    }

    public void onDownloadSucc2(Bitmap bitmap, String s, ImageView imageview)
    {
        s = (ImageView)cess._mth1(this._cls1.this).listView.findViewWithTag(s);
        if (s != null)
        {
            bitmap = new BitmapDrawable(null, bitmap);
            s.setBackgroundDrawable(null);
            s.setBackgroundDrawable(bitmap);
            s.setTag("");
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
