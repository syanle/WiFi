// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.util.Util;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            Authorize, PublishActivity, ReAddActivity, GeneralInterfaceActivity

public class MainPage_Activity extends Activity
{

    private Button add;
    private Button authorize;
    private Context context;
    private Button readd;

    public MainPage_Activity()
    {
        authorize = null;
        add = null;
        readd = null;
        context = null;
    }

    public void init()
    {
        authorize = (Button)findViewById(R.id.authorize);
        authorize.setOnClickListener(new android.view.View.OnClickListener() {

            final MainPage_Activity this$0;

            public void onClick(View view)
            {
                view = new Intent(MainPage_Activity.this, com/tencent/weibo/sdk/android/component/Authorize);
                startActivity(view);
            }

            
            {
                this$0 = MainPage_Activity.this;
                super();
            }
        });
        add = (Button)findViewById(R.id.add);
        add.setOnClickListener(new android.view.View.OnClickListener() {

            final MainPage_Activity this$0;

            public void onClick(View view)
            {
                view = new Intent(MainPage_Activity.this, com/tencent/weibo/sdk/android/component/PublishActivity);
                startActivity(view);
            }

            
            {
                this$0 = MainPage_Activity.this;
                super();
            }
        });
        readd = (Button)findViewById(R.id.readd);
        readd.setOnClickListener(new android.view.View.OnClickListener() {

            final MainPage_Activity this$0;

            public void onClick(View view)
            {
                view = new Intent(MainPage_Activity.this, com/tencent/weibo/sdk/android/component/ReAddActivity);
                Bundle bundle = new Bundle();
                bundle.putString("content", "Make U happy");
                bundle.putString("video_url", "http://www.tudou.com/programs/view/b-4VQLxwoX4/");
                bundle.putString("pic_url", "http://t2.qpic.cn/mblogpic/9c7e34358608bb61a696/2000");
                view.putExtras(bundle);
                startActivity(view);
            }

            
            {
                this$0 = MainPage_Activity.this;
                super();
            }
        });
        ((Button)findViewById(R.id.exit)).setOnClickListener(new android.view.View.OnClickListener() {

            final MainPage_Activity this$0;

            public void onClick(View view)
            {
                Util.clearSharePersistent(context);
                Toast.makeText(MainPage_Activity.this, "\u6CE8\u9500\u6210\u529F", 0).show();
            }

            
            {
                this$0 = MainPage_Activity.this;
                super();
            }
        });
        ((Button)findViewById(R.id.commoninterface)).setOnClickListener(new android.view.View.OnClickListener() {

            final MainPage_Activity this$0;

            public void onClick(View view)
            {
                view = new Intent(MainPage_Activity.this, com/tencent/weibo/sdk/android/component/GeneralInterfaceActivity);
                startActivity(view);
            }

            
            {
                this$0 = MainPage_Activity.this;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.main_layout);
        context = getApplicationContext();
        init();
    }

}
