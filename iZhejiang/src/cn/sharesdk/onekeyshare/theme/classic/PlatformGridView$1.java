// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.utils.UIHandler;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            PlatformGridView

class this._cls0 extends Thread
{

    final PlatformGridView this$0;

    public void run()
    {
        try
        {
            PlatformGridView.access$8(PlatformGridView.this, ShareSDK.getPlatformList());
            if (PlatformGridView.access$0(PlatformGridView.this) == null)
            {
                PlatformGridView.access$8(PlatformGridView.this, new Platform[0]);
            }
            UIHandler.sendEmptyMessage(1, PlatformGridView.this);
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }

    ()
    {
        this$0 = PlatformGridView.this;
        super();
    }
}
