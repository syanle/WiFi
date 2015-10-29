// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.text.TextUtils;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.utils.R;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            ShareContentCustomizeCallback

public class ShareCore
{

    private ShareContentCustomizeCallback customizeCallback;

    public ShareCore()
    {
    }

    public static boolean canAuthorize(Context context, String s)
    {
        return !"WechatMoments".equals(s) && !"WechatFavorite".equals(s) && !"ShortMessage".equals(s) && !"Email".equals(s) && !"Pinterest".equals(s) && !"Yixin".equals(s) && !"YixinMoments".equals(s) && !"Line".equals(s) && !"Bluetooth".equals(s) && !"WhatsApp".equals(s) && !"BaiduTieba".equals(s) || "Laiwang".equals(s) || "LaiwangMoments".equals(s);
    }

    public static boolean canGetUserInfo(Context context, String s)
    {
        return !"WechatMoments".equals(s) && !"WechatFavorite".equals(s) && !"ShortMessage".equals(s) && !"Email".equals(s) && !"Pinterest".equals(s) && !"Yixin".equals(s) && !"YixinMoments".equals(s) && !"Line".equals(s) && !"Bluetooth".equals(s) && !"WhatsApp".equals(s) && !"Pocket".equals(s) && !"BaiduTieba".equals(s) && !"Laiwang".equals(s) && !"LaiwangMoments".equals(s);
    }

    public static boolean isDirectShare(Platform platform)
    {
        return (platform instanceof CustomPlatform) || isUseClientToShare(platform.getName());
    }

    public static boolean isUseClientToShare(String s)
    {
        if (!"Wechat".equals(s) && !"WechatMoments".equals(s) && !"WechatFavorite".equals(s) && !"ShortMessage".equals(s) && !"Email".equals(s) && !"GooglePlus".equals(s) && !"QQ".equals(s) && !"Pinterest".equals(s) && !"Instagram".equals(s) && !"Yixin".equals(s) && !"YixinMoments".equals(s) && !"QZone".equals(s) && !"Mingdao".equals(s) && !"Line".equals(s) && !"KakaoStory".equals(s) && !"KakaoTalk".equals(s) && !"Bluetooth".equals(s) && !"WhatsApp".equals(s) && !"BaiduTieba".equals(s) && !"Laiwang".equals(s) && !"LaiwangMoments".equals(s)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!"Evernote".equals(s)) goto _L4; else goto _L3
_L3:
        if ("true".equals(ShareSDK.getPlatform(s).getDevinfo("ShareByAppClient")))
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        return false;
_L4:
        if (!"SinaWeibo".equals(s)) goto _L6; else goto _L5
_L5:
        s = ShareSDK.getPlatform(s);
        if (!"true".equals(s.getDevinfo("ShareByAppClient"))) goto _L6; else goto _L7
_L7:
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setPackage("com.sina.weibo");
        intent.setType("image/*");
        if (s.getContext().getPackageManager().resolveActivity(intent, 0) == null)
        {
            return false;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void setShareContentCustomizeCallback(ShareContentCustomizeCallback sharecontentcustomizecallback)
    {
        customizeCallback = sharecontentcustomizecallback;
    }

    public boolean share(Platform platform, HashMap hashmap)
    {
        if (platform == null || hashmap == null)
        {
            return false;
        }
        Bitmap bitmap;
        String s;
        s = (String)hashmap.get("imagePath");
        bitmap = (Bitmap)hashmap.get("viewToShare");
        if (TextUtils.isEmpty(s) && bitmap != null)
        {
            try
            {
                if (!bitmap.isRecycled())
                {
                    File file = new File(R.getCachePath(platform.getContext(), "screenshot"), (new StringBuilder(String.valueOf(String.valueOf(System.currentTimeMillis())))).append(".jpg").toString());
                    FileOutputStream fileoutputstream = new FileOutputStream(file);
                    bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream);
                    fileoutputstream.flush();
                    fileoutputstream.close();
                    hashmap.put("imagePath", file.getAbsolutePath());
                }
            }
            // Misplaced declaration of an exception variable
            catch (Platform platform)
            {
                platform.printStackTrace();
                return false;
            }
        }
        hashmap = new cn.sharesdk.framework.Platform.ShareParams(hashmap);
        if (customizeCallback != null)
        {
            customizeCallback.onShare(platform, hashmap);
        }
        platform.share(hashmap);
        return true;
    }
}
