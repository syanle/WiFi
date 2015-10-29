// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.upload;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.qihoo.linker.logcollector.capture.LogFileStorage;
import java.io.IOException;

// Referenced classes of package com.qihoo.linker.logcollector.upload:
//            UploadLogManager, HttpManager

private final class this._cls0 extends Handler
{

    final UploadLogManager this$0;

    public void handleMessage(Message message)
    {
        message = LogFileStorage.getInstance(UploadLogManager.access$0(UploadLogManager.this)).getUploadLogFile();
        if (message == null)
        {
            UploadLogManager.access$1(UploadLogManager.this, false);
            return;
        }
        if (HttpManager.uploadFile(UploadLogManager.access$2(UploadLogManager.this), UploadLogManager.access$3(UploadLogManager.this), message) != null)
        {
            LogFileStorage.getInstance(UploadLogManager.access$0(UploadLogManager.this)).deleteUploadLogFile();
        }
        UploadLogManager.access$1(UploadLogManager.this, false);
        return;
        message;
        message.printStackTrace();
        UploadLogManager.access$1(UploadLogManager.this, false);
        return;
        message;
        UploadLogManager.access$1(UploadLogManager.this, false);
        throw message;
    }

    public (Looper looper)
    {
        this$0 = UploadLogManager.this;
        super(looper);
    }
}
