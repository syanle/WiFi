// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import com.cat.tools.APPConf;
import com.cat.tools.SelectPicPopupWindow;
import java.io.File;
import org.androidpn.client.ServiceManager;

// Referenced classes of package com.pubinfo.izhejiang:
//            PersonInfomationActivity, EditInfomationActivity

class this._cls0
    implements android.view.tivity._cls3
{

    final PersonInfomationActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361906: 
            view = new Intent(PersonInfomationActivity.this, com/pubinfo/izhejiang/EditInfomationActivity);
            view.putExtra("usertag", "nick");
            view.putExtra("nick", nameTV.getText().toString().trim());
            startActivityForResult(view, 4);
            return;

        case 2131361836: 
            view = new Intent();
            view.putExtra("username", phone);
            view.putExtra("countrycode", countrycode);
            view.putExtra("tag", "back");
            setResult(3, view);
            finish();
            return;

        case 2131361976: 
            view = getSharedPreferences("LoginSucess", 0).edit();
            view.ear();
            view.mmit();
            view = new Intent();
            view.putExtra("tag", "zhuxiao");
            setResult(3, view);
            try
            {
                ServiceManager.getInstance(getApplicationContext()).disconnectPnServer();
                view = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString());
                (new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString())).delete();
                view.delete();
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                view.printStackTrace();
            }
            finish();
            return;

        case 2131361902: 
            menuWindow = new SelectPicPopupWindow(PersonInfomationActivity.this, PersonInfomationActivity.access$2(PersonInfomationActivity.this));
            menuWindow.setText("\u62CD\u6444", "\u4ECE\u624B\u673A\u76F8\u518C\u9009\u62E9");
            menuWindow.showAtLocation(findViewById(0x7f0a0022), 81, 0, 0);
            return;
        }
    }

    ()
    {
        this$0 = PersonInfomationActivity.this;
        super();
    }
}
