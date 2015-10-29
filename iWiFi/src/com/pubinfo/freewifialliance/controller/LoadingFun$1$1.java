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

class val.wifiDialog1
    implements com.pubinfo.wifi_core.core.view.tchClickListener
{

    final ler this$1;
    private final WifiDialog val$wifiDialog1;

    public void onCancelClick()
    {
        val$wifiDialog1.dismiss();
        handler.sendEmptyMessageDelayed(2, 1000L);
    }

    public void onWatchClick()
    {
        val$wifiDialog1.dismiss();
        handler.sendEmptyMessage(6);
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$wifiDialog1 = WifiDialog.this;
        super();
    }

    // Unreferenced inner class com/pubinfo/freewifialliance/controller/LoadingFun$1

/* anonymous class */
    class LoadingFun._cls1 extends Handler
    {

        final LoadingFun this$0;

        public void handleMessage(final Message wifiDialog2)
        {
            switch (wifiDialog2.what)
            {
            case 1: // '\001'
            case 3: // '\003'
            default:
                return;

            case 0: // '\0'
            case 2: // '\002'
                wifiDialog2 = getSharedPreferences(SP_FIRST, 0);
                if (wifiDialog2.getString(ST_FIRST, "").equals("yes"))
                {
                    startActivity(new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/CenterPage));
                } else
                {
                    wifiDialog2 = wifiDialog2.edit();
                    wifiDialog2.putString(ST_FIRST, "yes");
                    wifiDialog2.commit();
                    startActivity(new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/UserIntroduce));
                }
                finish();
                return;

            case 4: // '\004'
                wifiDialog2 = new WifiDialog(LoadingFun.this, 0x7f070002);
                wifiDialog2.setOnWatchClickListener(wifiDialog2. new LoadingFun._cls1._cls1());
                wifiDialog2.setPoint(introfomation);
                wifiDialog2.setCanceBtn(w);
                wifiDialog2.show();
                return;

            case 5: // '\005'
                wifiDialog2 = new WifiDialog(LoadingFun.this, 0x7f070002);
                wifiDialog2.setOnWatchClickListener(new LoadingFun._cls1._cls2());
                wifiDialog2.setPoint(introfomation);
                wifiDialog2.show();
                return;

            case 6: // '\006'
                try
                {
                    Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(LoadingFun.access$0(LoadingFun.this)).toString());
                }
                // Misplaced declaration of an exception variable
                catch (final Message wifiDialog2)
                {
                    wifiDialog2.printStackTrace();
                }
                wifiDialog2 = new Intent("android.intent.action.VIEW");
                wifiDialog2.addFlags(0x10000000);
                wifiDialog2.setDataAndType(Uri.fromFile(LoadingFun.access$0(LoadingFun.this)), "application/vnd.android.package-archive");
                startActivity(wifiDialog2);
                finish();
                return;

            case 7: // '\007'
                wifiDialog2 = new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/CenterPage);
                wifiDialog2.putExtra("jump", "yes");
                startActivity(wifiDialog2);
                finish();
                return;
            }
        }


            
            {
                this$0 = LoadingFun.this;
                super();
            }

        // Unreferenced inner class com/pubinfo/freewifialliance/controller/LoadingFun$1$2

/* anonymous class */
        class LoadingFun._cls1._cls2
            implements com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener
        {

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
        }

    }

}
