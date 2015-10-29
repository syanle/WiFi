// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.StringUtil;

// Referenced classes of package im.yixin.sdk.api:
//            YXMessage

public static class ata
{

    private static final String DATA_CLASS_KEY = "_yixinmessage_dataClass";
    private static final String VERSION_KEY = "_yixinmessage_version";

    public static YXMessage read(Bundle bundle)
    {
        YXMessage yxmessage = new YXMessage();
        yxmessage.version = bundle.getInt("_yixinmessage_version");
        yxmessage.title = StringUtil.substringByByteCount(bundle.getString("_yixinmessage_title"), 40, true);
        yxmessage.description = StringUtil.substringByByteCount(bundle.getString("_yixinmessage_description"), 72, true);
        yxmessage.thumbData = bundle.getByteArray("_yixinmessage_thumbdata");
        String s = bundle.getString("_yixinmessage_dataClass");
        if (s == null || s.length() <= 0)
        {
            return yxmessage;
        }
        try
        {
            yxmessage.messageData = (ata)Class.forName(s).newInstance();
            yxmessage.messageData.read(bundle);
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            bundle.printStackTrace();
            return yxmessage;
        }
        return yxmessage;
    }

    public static Bundle write(YXMessage yxmessage)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("_yixinmessage_version", yxmessage.version);
        bundle.putString("_yixinmessage_title", yxmessage.title);
        bundle.putString("_yixinmessage_description", yxmessage.description);
        bundle.putByteArray("_yixinmessage_thumbdata", yxmessage.thumbData);
        if (yxmessage.messageData != null)
        {
            bundle.putString("_yixinmessage_dataClass", yxmessage.messageData.getClass().getName());
            yxmessage.messageData.write(bundle);
        }
        return bundle;
    }

    public ata()
    {
    }
}
