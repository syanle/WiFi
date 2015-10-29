// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Handler;
import com.cat.tools.APPConf;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.pubinfo.izhejiang:
//            PersonInfomationActivity

public class this._cls0 extends Thread
{

    final PersonInfomationActivity this$0;

    public void run()
    {
        try
        {
            byte abyte0[] = PersonInfomationActivity.readImage(faceurl);
            FileOutputStream fileoutputstream = new FileOutputStream(new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString()));
            fileoutputstream.write(abyte0);
            fileoutputstream.close();
            PersonInfomationActivity.access$0(PersonInfomationActivity.this).sendEmptyMessage(4);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public ()
    {
        this$0 = PersonInfomationActivity.this;
        super();
    }
}
