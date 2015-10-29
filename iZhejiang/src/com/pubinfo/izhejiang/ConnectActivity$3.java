// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class this._cls0
    implements android.os.Activity._cls3
{

    final ConnectActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR lookupswitch 5: default 56
    //                   -1: 401
    //                   1: 317
    //                   2: 327
    //                   180146182: 300
    //                   180146186: 58;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return true;
_L6:
        Object obj = message.getData();
        message = ((Bundle) (obj)).getString("introfomation");
        downloadurl = ((Bundle) (obj)).getString("downloadUrl");
        String s = ((Bundle) (obj)).getString("update_grade");
        String s1 = ((Bundle) (obj)).getString("version_name");
        int i = ((Bundle) (obj)).getInt("version_code");
        fileName = downloadurl.substring(downloadurl.lastIndexOf("/") + 1, downloadurl.length());
        obj = getSharedPreferences("FileName", 0).edit();
        ((android.content.Editor) (obj)).putString("item", fileName);
        ((android.content.Editor) (obj)).putString("intro", message);
        ((android.content.Editor) (obj)).putString("version_name", s1);
        ((android.content.Editor) (obj)).putString("update_grade", s);
        ((android.content.Editor) (obj)).putInt("version_code", i);
        ((android.content.Editor) (obj)).commit();
        file = new File(Environment.getExternalStorageDirectory(), "I-zhejiang.apk");
        if (!file.exists())
        {
            try
            {
                file.createNewFile();
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                message.printStackTrace();
            }
        }
        Beginning();
        continue; /* Loop/switch isn't completed */
_L5:
        try
        {
            Thread.sleep(1000L);
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            message.printStackTrace();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        ConnectActivity.loading_process = message.arg1;
        continue; /* Loop/switch isn't completed */
_L4:
        try
        {
            Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(file).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            message.printStackTrace();
        }
        message = getSharedPreferences("down", 0).edit();
        message.putString("done", "y");
        message.commit();
        continue; /* Loop/switch isn't completed */
_L2:
        message.getData().getString("error");
        if (true) goto _L1; else goto _L7
_L7:
    }

    ()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
