// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;

public class WXWebpageObject
    implements WXMediaMessage.IMediaObject
{

    public String webpageUrl;

    public WXWebpageObject()
    {
    }

    public WXWebpageObject(String s)
    {
        webpageUrl = s;
    }

    public boolean checkArgs()
    {
        if (webpageUrl == null || webpageUrl.length() == 0 || webpageUrl.length() > 10240)
        {
            Ln.e("checkArgs fail, webpageUrl is invalid", new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxwebpageobject_webpageUrl", webpageUrl);
    }

    public int type()
    {
        return 5;
    }

    public void unserialize(Bundle bundle)
    {
        webpageUrl = bundle.getString("_wxwebpageobject_webpageUrl");
    }
}
