// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.pubinfo.wifi_core.core.view.WifiDialog;
import java.io.IOException;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            PersonalPage

class val.wifiDialog1
    implements com.pubinfo.wifi_core.core.view.hClickListener
{

    final ler this$1;
    private final WifiDialog val$wifiDialog1;

    public void onCancelClick()
    {
        val$wifiDialog1.dismiss();
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

    // Unreferenced inner class com/pubinfo/freewifialliance/view/PersonalPage$1

/* anonymous class */
    class PersonalPage._cls1 extends Handler
    {

        final PersonalPage this$0;

        public void handleMessage(final Message wifiDialog2)
        {
            switch (wifiDialog2.what)
            {
            case 3: // '\003'
            default:
                return;

            case 2: // '\002'
                PersonalPage.access$0(PersonalPage.this, "\u5DF2\u7ECF\u662F\u6700\u65B0\u7248\u672C");
                return;

            case 4: // '\004'
                wifiDialog2 = new WifiDialog(PersonalPage.this, 0x7f070002);
                wifiDialog2.setOnWatchClickListener(wifiDialog2. new PersonalPage._cls1._cls1());
                wifiDialog2.setPoint(introfomation);
                wifiDialog2.setCanceBtn(w);
                wifiDialog2.show();
                return;

            case 5: // '\005'
                wifiDialog2 = new WifiDialog(PersonalPage.this, 0x7f070002);
                wifiDialog2.setOnWatchClickListener(new PersonalPage._cls1._cls2());
                wifiDialog2.setPoint(introfomation);
                wifiDialog2.show();
                return;

            case 6: // '\006'
                break;
            }
            try
            {
                Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(PersonalPage.access$1(PersonalPage.this)).toString());
            }
            // Misplaced declaration of an exception variable
            catch (final Message wifiDialog2)
            {
                wifiDialog2.printStackTrace();
            }
            wifiDialog2 = new Intent("android.intent.action.VIEW");
            wifiDialog2.addFlags(0x10000000);
            wifiDialog2.setDataAndType(Uri.fromFile(PersonalPage.access$1(PersonalPage.this)), "application/vnd.android.package-archive");
            startActivity(wifiDialog2);
            finish();
        }


            
            {
                this$0 = PersonalPage.this;
                super();
            }

        // Unreferenced inner class com/pubinfo/freewifialliance/view/PersonalPage$1$2

/* anonymous class */
        class PersonalPage._cls1._cls2
            implements com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener
        {

            final PersonalPage._cls1 this$1;
            private final WifiDialog val$wifiDialog2;

            public void onCancelClick()
            {
                wifiDialog2.dismiss();
            }

            public void onWatchClick()
            {
                wifiDialog2.dismiss();
                handler.sendEmptyMessage(6);
            }

                    
                    {
                        this$1 = PersonalPage._cls1.this;
                        wifiDialog2 = wifidialog;
                        super();
                    }
        }

    }

}
