// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.Intent;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            GeneralInterfaceActivity, GeneralDataShowActivity

class this._cls0
    implements HttpCallback
{

    final GeneralInterfaceActivity this$0;

    public void onResult(Object obj)
    {
        obj = (ModelResult)obj;
        if (GeneralInterfaceActivity.access$0(GeneralInterfaceActivity.this) != null && GeneralInterfaceActivity.access$0(GeneralInterfaceActivity.this).isShowing())
        {
            GeneralInterfaceActivity.access$0(GeneralInterfaceActivity.this).dismiss();
        }
        if (obj != null)
        {
            Toast.makeText(GeneralInterfaceActivity.this, "\u6210\u529F", 0).show();
            Intent intent = new Intent(GeneralInterfaceActivity.this, com/tencent/weibo/sdk/android/component/GeneralDataShowActivity);
            intent.putExtra("data", ((ModelResult) (obj)).getObj().toString());
            startActivity(intent);
            return;
        } else
        {
            Toast.makeText(GeneralInterfaceActivity.this, "\u53D1\u751F\u5F02\u5E38", 0).show();
            return;
        }
    }

    ()
    {
        this$0 = GeneralInterfaceActivity.this;
        super();
    }
}
