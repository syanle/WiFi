// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class this._cls0 extends Handler
{

    final PublishActivity this$0;

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        int i = message.what;
        if (i == 5)
        {
            PublishActivity.access$0(PublishActivity.this).setVisibility(0);
            PublishActivity.access$1(PublishActivity.this).setVisibility(0);
        } else
        {
            if (i == 0)
            {
                PublishActivity.access$2(PublishActivity.this).showAsDropDown(PublishActivity.access$3(PublishActivity.this));
                message = (InputMethodManager)getSystemService("input_method");
                Log.d("alive", (new StringBuilder(String.valueOf(message.isActive()))).toString());
                if (message.isActive())
                {
                    message.hideSoftInputFromWindow(PublishActivity.access$4(PublishActivity.this).getWindowToken(), 0);
                    Log.d("alive", (new StringBuilder(String.valueOf(message.isActive()))).toString());
                }
            }
            if (i == 10)
            {
                PublishActivity.access$5(PublishActivity.this).setBackgroundDrawable(BackGroudSeletor.getdrawble("dingwei_icon_hover2x", PublishActivity.this));
            }
            if (i == 15)
            {
                Toast.makeText(PublishActivity.this, "\u5B9A\u4F4D\u5931\u8D25", 0).show();
                PublishActivity.access$5(PublishActivity.this).setBackgroundDrawable(BackGroudSeletor.getdrawble("dingwei_icon2x", PublishActivity.this));
                return;
            }
        }
    }

    ()
    {
        this$0 = PublishActivity.this;
        super();
    }
}
