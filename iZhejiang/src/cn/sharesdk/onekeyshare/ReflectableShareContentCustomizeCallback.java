// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.os.Message;
import cn.sharesdk.framework.Platform;
import com.mob.tools.utils.UIHandler;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            ShareContentCustomizeCallback

public class ReflectableShareContentCustomizeCallback
    implements ShareContentCustomizeCallback
{

    private android.os.Handler.Callback onShareCallback;
    private int onShareWhat;

    public ReflectableShareContentCustomizeCallback()
    {
    }

    public void onShare(Platform platform, cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        if (onShareCallback != null)
        {
            Message message = new Message();
            message.what = onShareWhat;
            message.obj = ((Object) (new Object[] {
                platform, shareparams
            }));
            UIHandler.sendMessage(message, onShareCallback);
        }
    }

    public void setOnShareCallback(int i, android.os.Handler.Callback callback)
    {
        onShareWhat = i;
        onShareCallback = callback;
    }
}
