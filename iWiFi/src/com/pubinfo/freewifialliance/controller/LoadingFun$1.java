// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.pubinfo.freewifialliance.view.CenterPage;
import com.pubinfo.freewifialliance.view.UserIntroduce;
import com.pubinfo.wifi_core.core.view.WifiDialog;
import java.io.IOException;

// Referenced classes of package com.pubinfo.freewifialliance.controller:
//            LoadingFun

class this._cls0 extends Handler
{

    final LoadingFun this$0;

    public void handleMessage(final Message wifiDialog1)
    {
        switch (wifiDialog1.what)
        {
        case 1: // '\001'
        case 3: // '\003'
        default:
            return;

        case 0: // '\0'
        case 2: // '\002'
            wifiDialog1 = getSharedPreferences(SP_FIRST, 0);
            if (wifiDialog1.getString(ST_FIRST, "").equals("yes"))
            {
                startActivity(new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/CenterPage));
            } else
            {
                wifiDialog1 = wifiDialog1.edit();
                wifiDialog1.putString(ST_FIRST, "yes");
                wifiDialog1.commit();
                startActivity(new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/UserIntroduce));
            }
            finish();
            return;

        case 4: // '\004'
            wifiDialog1 = new WifiDialog(LoadingFun.this, 0x7f070002);
            wifiDialog1.setOnWatchClickListener(new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                final LoadingFun._cls1 this$1;
                private final WifiDialog val$wifiDialog1;

                public void onCancelClick()
                {
                    wifiDialog1.dismiss();
                    handler.sendEmptyMessageDelayed(2, 1000L);
                }

                public void onWatchClick()
                {
                    wifiDialog1.dismiss();
                    handler.sendEmptyMessage(6);
                }

            
            {
                this$1 = LoadingFun._cls1.this;
                wifiDialog1 = wifidialog;
                super();
            }
            });
            wifiDialog1.setPoint(introfomation);
            wifiDialog1.setCanceBtn(w);
            wifiDialog1.show();
            return;

        case 5: // '\005'
            wifiDialog1 = new WifiDialog(LoadingFun.this, 0x7f070002);
            wifiDialog1.setOnWatchClickListener(new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                final LoadingFun._cls1 this$1;
                private final WifiDialog val$wifiDialog2;

                public void onCancelClick()
                {
                    wifiDialog2.dismiss();
                    handler.sendEmptyMessageDelayed(2, 1000L);
                }

                public void onWatchClick()
                {
                    wifiDialog2.dismiss();
                    handler.sendEmptyMessage(6);
                }

            
            {
                this$1 = LoadingFun._cls1.this;
                wifiDialog2 = wifidialog;
                super();
            }
            });
            wifiDialog1.setPoint(introfomation);
            wifiDialog1.show();
            return;

        case 6: // '\006'
            try
            {
                Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(LoadingFun.access$0(LoadingFun.this)).toString());
            }
            // Misplaced declaration of an exception variable
            catch (final Message wifiDialog1)
            {
                wifiDialog1.printStackTrace();
            }
            wifiDialog1 = new Intent("android.intent.action.VIEW");
            wifiDialog1.addFlags(0x10000000);
            wifiDialog1.setDataAndType(Uri.fromFile(LoadingFun.access$0(LoadingFun.this)), "application/vnd.android.package-archive");
            startActivity(wifiDialog1);
            finish();
            return;

        case 7: // '\007'
            wifiDialog1 = new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/CenterPage);
            wifiDialog1.putExtra("jump", "yes");
            startActivity(wifiDialog1);
            finish();
            return;
        }
    }


    _cls2.val.wifiDialog2()
    {
        this$0 = LoadingFun.this;
        super();
    }
}
