// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.pubinfo.wifi_core.core.view.WifiDialog;
import java.io.IOException;

// Referenced classes of package com.pubinfo.izhejiang:
//            SplashActivity

class g
    implements com.pubinfo.wifi_core.core.view.lickListener
{

    final ler this$1;
    private final WifiDialog val$wifiDialog2;

    public void onCancelClick()
    {
        val$wifiDialog2.dismiss();
        handler.sendEmptyMessageDelayed(2, 1000L);
    }

    public void onWatchClick()
    {
        val$wifiDialog2.dismiss();
        handler.sendEmptyMessage(6);
    }

    g()
    {
        this$1 = final_g;
        val$wifiDialog2 = WifiDialog.this;
        super();
    }

    // Unreferenced inner class com/pubinfo/izhejiang/SplashActivity$1

/* anonymous class */
    class SplashActivity._cls1 extends Handler
    {

        final SplashActivity this$0;

        public void handleMessage(final Message wifiDialog1)
        {
            switch (wifiDialog1.what)
            {
            case 3: // '\003'
            default:
                return;

            case 2: // '\002'
                SplashActivity.access$0(SplashActivity.this);
                return;

            case 4: // '\004'
                wifiDialog1 = new WifiDialog(SplashActivity.this, 0x7f070002);
                wifiDialog1.setOnWatchClickListener(new SplashActivity._cls1._cls1());
                wifiDialog1.setTitle((new StringBuilder("\u66F4\u65B0\u901A\u77E5(v")).append(version_name).append(")").toString());
                wifiDialog1.setPoint(introfomation);
                wifiDialog1.setCanceBtn(0);
                wifiDialog1.show();
                return;

            case 5: // '\005'
                wifiDialog1 = new WifiDialog(SplashActivity.this, 0x7f070002);
                wifiDialog1.setOnWatchClickListener(wifiDialog1. new SplashActivity._cls1._cls2());
                wifiDialog1.setTitle((new StringBuilder("\u66F4\u65B0\u901A\u77E5(v")).append(version_name).append(")").toString());
                wifiDialog1.setPoint(introfomation);
                wifiDialog1.show();
                return;

            case 6: // '\006'
                break;
            }
            try
            {
                Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(SplashActivity.access$1(SplashActivity.this)).toString());
            }
            // Misplaced declaration of an exception variable
            catch (final Message wifiDialog1)
            {
                wifiDialog1.printStackTrace();
            }
            wifiDialog1 = new Intent("android.intent.action.VIEW");
            wifiDialog1.addFlags(0x10000000);
            wifiDialog1.setDataAndType(Uri.fromFile(SplashActivity.access$1(SplashActivity.this)), "application/vnd.android.package-archive");
            startActivity(wifiDialog1);
            finish();
        }


            
            {
                this$0 = SplashActivity.this;
                super();
            }

        // Unreferenced inner class com/pubinfo/izhejiang/SplashActivity$1$1

/* anonymous class */
        class SplashActivity._cls1._cls1
            implements com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener
        {

            final SplashActivity._cls1 this$1;
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
                        this$1 = SplashActivity._cls1.this;
                        wifiDialog1 = wifidialog;
                        super();
                    }
        }

    }

}
