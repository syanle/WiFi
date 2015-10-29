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

class this._cls0 extends Handler
{

    final PersonalPage this$0;

    public void handleMessage(final Message wifiDialog1)
    {
        switch (wifiDialog1.what)
        {
        case 3: // '\003'
        default:
            return;

        case 2: // '\002'
            PersonalPage.access$0(PersonalPage.this, "\u5DF2\u7ECF\u662F\u6700\u65B0\u7248\u672C");
            return;

        case 4: // '\004'
            wifiDialog1 = new WifiDialog(PersonalPage.this, 0x7f070002);
            wifiDialog1.setOnWatchClickListener(new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                final PersonalPage._cls1 this$1;
                private final WifiDialog val$wifiDialog1;

                public void onCancelClick()
                {
                    wifiDialog1.dismiss();
                }

                public void onWatchClick()
                {
                    wifiDialog1.dismiss();
                    handler.sendEmptyMessage(6);
                }

            
            {
                this$1 = PersonalPage._cls1.this;
                wifiDialog1 = wifidialog;
                super();
            }
            });
            wifiDialog1.setPoint(introfomation);
            wifiDialog1.setCanceBtn(w);
            wifiDialog1.show();
            return;

        case 5: // '\005'
            wifiDialog1 = new WifiDialog(PersonalPage.this, 0x7f070002);
            wifiDialog1.setOnWatchClickListener(new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

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
            });
            wifiDialog1.setPoint(introfomation);
            wifiDialog1.show();
            return;

        case 6: // '\006'
            break;
        }
        try
        {
            Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(PersonalPage.access$1(PersonalPage.this)).toString());
        }
        // Misplaced declaration of an exception variable
        catch (final Message wifiDialog1)
        {
            wifiDialog1.printStackTrace();
        }
        wifiDialog1 = new Intent("android.intent.action.VIEW");
        wifiDialog1.addFlags(0x10000000);
        wifiDialog1.setDataAndType(Uri.fromFile(PersonalPage.access$1(PersonalPage.this)), "application/vnd.android.package-archive");
        startActivity(wifiDialog1);
        finish();
    }


    _cls2.val.wifiDialog2()
    {
        this$0 = PersonalPage.this;
        super();
    }
}
