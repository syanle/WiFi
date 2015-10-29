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

    g()
    {
        this$1 = final_g;
        val$wifiDialog1 = WifiDialog.this;
        super();
    }

    // Unreferenced inner class com/pubinfo/izhejiang/SplashActivity$1

/* anonymous class */
    class SplashActivity._cls1 extends Handler
    {

        final SplashActivity this$0;

        public void handleMessage(final Message wifiDialog2)
        {
            switch (wifiDialog2.what)
            {
            case 3: // '\003'
            default:
                return;

            case 2: // '\002'
                SplashActivity.access$0(SplashActivity.this);
                return;

            case 4: // '\004'
                wifiDialog2 = new WifiDialog(SplashActivity.this, 0x7f070002);
                wifiDialog2.setOnWatchClickListener(wifiDialog2. new SplashActivity._cls1._cls1());
                wifiDialog2.setTitle((new StringBuilder("\u66F4\u65B0\u901A\u77E5(v")).append(version_name).append(")").toString());
                wifiDialog2.setPoint(introfomation);
                wifiDialog2.setCanceBtn(0);
                wifiDialog2.show();
                return;

            case 5: // '\005'
                wifiDialog2 = new WifiDialog(SplashActivity.this, 0x7f070002);
                wifiDialog2.setOnWatchClickListener(new SplashActivity._cls1._cls2());
                wifiDialog2.setTitle((new StringBuilder("\u66F4\u65B0\u901A\u77E5(v")).append(version_name).append(")").toString());
                wifiDialog2.setPoint(introfomation);
                wifiDialog2.show();
                return;

            case 6: // '\006'
                break;
            }
            try
            {
                Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(SplashActivity.access$1(SplashActivity.this)).toString());
            }
            // Misplaced declaration of an exception variable
            catch (final Message wifiDialog2)
            {
                wifiDialog2.printStackTrace();
            }
            wifiDialog2 = new Intent("android.intent.action.VIEW");
            wifiDialog2.addFlags(0x10000000);
            wifiDialog2.setDataAndType(Uri.fromFile(SplashActivity.access$1(SplashActivity.this)), "application/vnd.android.package-archive");
            startActivity(wifiDialog2);
            finish();
        }


            
            {
                this$0 = SplashActivity.this;
                super();
            }

        // Unreferenced inner class com/pubinfo/izhejiang/SplashActivity$1$2

/* anonymous class */
        class SplashActivity._cls1._cls2
            implements com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener
        {

            final SplashActivity._cls1 this$1;
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
                        this$1 = SplashActivity._cls1.this;
                        wifiDialog2 = wifidialog;
                        super();
                    }
        }

    }

}
