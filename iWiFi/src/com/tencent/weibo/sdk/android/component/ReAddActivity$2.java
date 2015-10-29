// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.widget.Gallery;
import android.widget.PopupWindow;
import com.tencent.weibo.sdk.android.api.adapter.GalleryAdapter;
import com.tencent.weibo.sdk.android.model.ImageInfo;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import java.util.ArrayList;
import org.json.JSONObject;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            ReAddActivity

class this._cls0
    implements HttpCallback
{

    final ReAddActivity this$0;

    public void onResult(Object obj)
    {
        obj = (ModelResult)obj;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        if (((ModelResult) (obj)).isExpires() || !((ModelResult) (obj)).isSuccess())
        {
            break MISSING_BLOCK_LABEL_126;
        }
        obj = ((JSONObject)((ModelResult) (obj)).getObj()).getJSONObject("data");
        ImageInfo imageinfo = new ImageInfo();
        imageinfo.setImagePath(((JSONObject) (obj)).getString("minipic"));
        imageinfo.setImageName(((JSONObject) (obj)).getString("title"));
        imageinfo.setPlayPath(((JSONObject) (obj)).getString("real"));
        ReAddActivity.access$0(ReAddActivity.this).add(imageinfo);
        obj = new GalleryAdapter(getApplicationContext(), ReAddActivity.access$1(ReAddActivity.this), ReAddActivity.access$0(ReAddActivity.this));
        ReAddActivity.access$2(ReAddActivity.this).setAdapter(((android.widget.SpinnerAdapter) (obj)));
_L1:
        return;
        obj;
        ((Exception) (obj)).printStackTrace();
        return;
        if (ReAddActivity.access$1(ReAddActivity.this) != null && ReAddActivity.access$1(ReAddActivity.this).isShowing())
        {
            ReAddActivity.access$1(ReAddActivity.this).dismiss();
            return;
        }
          goto _L1
    }

    ()
    {
        this$0 = ReAddActivity.this;
        super();
    }
}
