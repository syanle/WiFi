// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YXMessage

public static class MessageData
{

    public static Bundle a(YXMessage yxmessage)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("_yixinmessage_version", yxmessage.version);
        bundle.putString("_yixinmessage_title", yxmessage.title);
        bundle.putString("_yixinmessage_description", yxmessage.description);
        bundle.putByteArray("_yixinmessage_thumbdata", yxmessage.thumbData);
        if (yxmessage.messageData != null)
        {
            bundle.putString("_yixinmessage_dataClass", (new StringBuilder()).append("im.yixin.sdk.api.").append(yxmessage.messageData.getClass().getSimpleName()).toString());
            yxmessage.messageData.write(bundle);
        }
        return bundle;
    }

    public static YXMessage a(Bundle bundle)
    {
        YXMessage yxmessage = new YXMessage();
        yxmessage.version = bundle.getInt("_yixinmessage_version");
        yxmessage.title = a(bundle.getString("_yixinmessage_title"), 40, true);
        yxmessage.description = a(bundle.getString("_yixinmessage_description"), 72, true);
        yxmessage.thumbData = bundle.getByteArray("_yixinmessage_thumbdata");
        String s = bundle.getString("_yixinmessage_dataClass");
        if (s == null || s.length() <= 0)
        {
            return yxmessage;
        }
        try
        {
            yxmessage.messageData = (MessageData)Class.forName(s.replace("im.yixin.sdk.api", "cn.sharesdk.yixin.utils")).newInstance();
            yxmessage.messageData.read(bundle);
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            Ln.e(bundle);
            return yxmessage;
        }
        return yxmessage;
    }

    private static String a(String s, int i, boolean flag)
    {
        boolean flag1 = false;
        if (s == null)
        {
            return "";
        }
        String s1 = s.replaceAll("\\n", " ");
        s = new StringBuilder();
        char ac[] = s1.toCharArray();
        int j = 0;
        int k = 0;
        do
        {
label0:
            {
                int l = ((flag1) ? 1 : 0);
                if (j < ac.length)
                {
                    if (ac[j] <= '\177')
                    {
                        l = 1;
                    } else
                    {
                        l = 0;
                    }
                    if (l != 0)
                    {
                        l = 1;
                    } else
                    {
                        l = 2;
                    }
                    k += l;
                    if (k <= i)
                    {
                        break label0;
                    }
                    l = 1;
                }
                if (flag && l != 0)
                {
                    s.append("...");
                }
                return s.toString();
            }
            s.append(ac[j]);
            j++;
        } while (true);
    }
}
