// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.os.Handler;
import com.cat.tools.APPConf;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            MyFragment

public class this._cls0 extends Thread
{

    final MyFragment this$0;

    public void run()
    {
        try
        {
            if (CreatFileSdcard())
            {
                byte abyte0[] = MyFragment.readImage(faceurl);
                FileOutputStream fileoutputstream = new FileOutputStream(new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString()));
                fileoutputstream.write(abyte0);
                fileoutputstream.close();
                MyFragment.access$0(MyFragment.this).sendEmptyMessage(3);
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public ()
    {
        this$0 = MyFragment.this;
        super();
    }
}
