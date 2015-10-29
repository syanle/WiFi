// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YixinImpl, YXMessage

public class YixinHandlerActivity extends Activity
{

    public YixinHandlerActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        setTheme(0x103000f);
        super.onCreate(bundle);
        YixinImpl.a().a(this);
        finish();
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        setIntent(intent);
        YixinImpl.a().a(this);
        finish();
    }

    public void onReceiveMessageFromYX(YXMessage yxmessage)
    {
    }
}
