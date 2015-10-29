// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            WechatHelper, WXMediaMessage

public class WechatHandlerActivity extends Activity
{

    public WechatHandlerActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        setTheme(0x103000f);
        super.onCreate(bundle);
        try
        {
            WechatHelper.a().a(this);
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            Ln.w(bundle);
        }
        finish();
    }

    public void onGetMessageFromWXReq(WXMediaMessage wxmediamessage)
    {
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        setIntent(intent);
        try
        {
            WechatHelper.a().a(this);
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Ln.w(intent);
        }
        finish();
    }

    public void onShowMessageFromWXReq(WXMediaMessage wxmediamessage)
    {
    }
}
