// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            WXMediaMessage

public static class ediaObject
{

    public static Bundle a(WXMediaMessage wxmediamessage)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("_wxobject_sdkVer", wxmediamessage.sdkVer);
        bundle.putString("_wxobject_title", wxmediamessage.title);
        bundle.putString("_wxobject_description", wxmediamessage.description);
        bundle.putByteArray("_wxobject_thumbdata", wxmediamessage.thumbData);
        if (wxmediamessage.mediaObject != null)
        {
            bundle.putString("_wxobject_identifier_", (new StringBuilder()).append("com.tencent.mm.sdk.openapi.").append(wxmediamessage.mediaObject.getClass().getSimpleName()).toString());
            wxmediamessage.mediaObject.serialize(bundle);
        }
        return bundle;
    }

    public static WXMediaMessage a(Bundle bundle)
    {
        WXMediaMessage wxmediamessage = new WXMediaMessage();
        wxmediamessage.sdkVer = bundle.getInt("_wxobject_sdkVer");
        wxmediamessage.title = bundle.getString("_wxobject_title");
        wxmediamessage.description = bundle.getString("_wxobject_description");
        wxmediamessage.thumbData = bundle.getByteArray("_wxobject_thumbdata");
        String s1 = bundle.getString("_wxobject_identifier_");
        if (s1 == null || s1.length() <= 0)
        {
            return wxmediamessage;
        }
        String s = s1;
        try
        {
            s1 = s1.replace("com.tencent.mm.sdk.openapi", "cn.sharesdk.wechat.utils");
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            Ln.e(bundle);
            Ln.e((new StringBuilder()).append("get media object from bundle failed: unknown ident ").append(s).toString(), new Object[0]);
            return wxmediamessage;
        }
        s = s1;
        wxmediamessage.mediaObject = (ediaObject)Class.forName(s1).newInstance();
        s = s1;
        wxmediamessage.mediaObject.unserialize(bundle);
        return wxmediamessage;
    }
}
