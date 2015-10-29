// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.cat.list.OnImageDownload;
import com.cat.list.XListView;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

class this._cls1
    implements OnImageDownload
{

    final this._cls1 this$1;

    public void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout)
    {
        s = (RelativeLayout)SsidFragment.access$2(cess._mth3(this._cls1.this)).findViewWithTag(s);
        if (s != null)
        {
            bitmap = new BitmapDrawable(null, bitmap);
            s.setBackgroundDrawable(null);
            s.setBackgroundDrawable(bitmap);
            s.setTag("");
        }
    }

    public void onDownloadSucc2(Bitmap bitmap, String s, ImageView imageview)
    {
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
