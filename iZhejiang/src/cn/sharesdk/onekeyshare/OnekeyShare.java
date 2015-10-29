// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            CustomerLogo, ShareCore, OnekeyShareTheme, PlatformListFakeActivity, 
//            ShareContentCustomizeCallback, ThemeShareCallback

public class OnekeyShare
    implements PlatformActionListener, android.os.Handler.Callback
{

    private static final int MSG_ACTION_CCALLBACK = 2;
    private static final int MSG_CANCEL_NOTIFY = 3;
    private static final int MSG_TOAST = 1;
    private View bgView;
    private PlatformActionListener callback;
    private Context context;
    private ArrayList customers;
    private ShareContentCustomizeCallback customizeCallback;
    private boolean dialogMode;
    private boolean disableSSO;
    private HashMap hiddenPlatforms;
    private PlatformListFakeActivity.OnShareButtonClickListener onShareButtonClickListener;
    private HashMap shareParamsMap;
    private boolean silent;
    private OnekeyShareTheme theme;

    public OnekeyShare()
    {
        dialogMode = false;
        shareParamsMap = new HashMap();
        customers = new ArrayList();
        callback = this;
        hiddenPlatforms = new HashMap();
    }

    private void showNotification(String s)
    {
        Toast.makeText(context, s, 0).show();
    }

    public void addHiddenPlatform(String s)
    {
        hiddenPlatforms.put(s, s);
    }

    public void disableSSOWhenAuthorize()
    {
        disableSSO = true;
    }

    public PlatformActionListener getCallback()
    {
        return callback;
    }

    public ShareContentCustomizeCallback getShareContentCustomizeCallback()
    {
        return customizeCallback;
    }

    public String getText()
    {
        if (shareParamsMap.containsKey("text"))
        {
            return String.valueOf(shareParamsMap.get("text"));
        } else
        {
            return null;
        }
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 34
    //                   2 56
    //                   3 471;
           goto _L1 _L2 _L3 _L4
_L1:
        return false;
_L2:
        message = String.valueOf(message.obj);
        Toast.makeText(context, message, 0).show();
        return false;
_L3:
        message.arg1;
        JVM INSTR tableswitch 1 3: default 88
    //                   1 90
    //                   2 118
    //                   3 443;
           goto _L5 _L6 _L7 _L8
_L5:
        return false;
_L6:
        int i = R.getStringRes(context, "share_completed");
        if (i > 0)
        {
            showNotification(context.getString(i));
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        message = message.obj.getClass().getSimpleName();
        if (!"WechatClientNotExistException".equals(message) && !"WechatTimelineNotSupportedException".equals(message) && !"WechatFavoriteNotSupportedException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int j = R.getStringRes(context, "wechat_client_inavailable");
        if (j > 0)
        {
            showNotification(context.getString(j));
            return false;
        }
        if (true) goto _L1; else goto _L9
_L9:
        if (!"GooglePlusClientNotExistException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int k = R.getStringRes(context, "google_plus_client_inavailable");
        if (k > 0)
        {
            showNotification(context.getString(k));
            return false;
        }
        if (true) goto _L1; else goto _L10
_L10:
        if (!"QQClientNotExistException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int l = R.getStringRes(context, "qq_client_inavailable");
        if (l > 0)
        {
            showNotification(context.getString(l));
            return false;
        }
        if (true) goto _L1; else goto _L11
_L11:
        if (!"YixinClientNotExistException".equals(message) && !"YixinTimelineNotSupportedException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int i1 = R.getStringRes(context, "yixin_client_inavailable");
        if (i1 > 0)
        {
            showNotification(context.getString(i1));
            return false;
        }
        if (true) goto _L1; else goto _L12
_L12:
        if (!"KakaoTalkClientNotExistException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int j1 = R.getStringRes(context, "kakaotalk_client_inavailable");
        if (j1 > 0)
        {
            showNotification(context.getString(j1));
            return false;
        }
        if (true) goto _L1; else goto _L13
_L13:
        if (!"KakaoStoryClientNotExistException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int k1 = R.getStringRes(context, "kakaostory_client_inavailable");
        if (k1 > 0)
        {
            showNotification(context.getString(k1));
            return false;
        }
        if (true) goto _L1; else goto _L14
_L14:
        if (!"WhatsAppClientNotExistException".equals(message))
        {
            break; /* Loop/switch isn't completed */
        }
        int l1 = R.getStringRes(context, "whatsapp_client_inavailable");
        if (l1 > 0)
        {
            showNotification(context.getString(l1));
            return false;
        }
        if (true) goto _L1; else goto _L15
_L15:
        int i2 = R.getStringRes(context, "share_failed");
        if (i2 > 0)
        {
            showNotification(context.getString(i2));
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        int j2 = R.getStringRes(context, "share_canceled");
        if (j2 > 0)
        {
            showNotification(context.getString(j2));
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        NotificationManager notificationmanager = (NotificationManager)message.obj;
        if (notificationmanager != null)
        {
            notificationmanager.cancel(message.arg1);
            return false;
        }
        if (true) goto _L1; else goto _L16
_L16:
    }

    public void onCancel(Platform platform, int i)
    {
        Message message = new Message();
        message.what = 2;
        message.arg1 = 3;
        message.arg2 = i;
        message.obj = platform;
        UIHandler.sendMessage(message, this);
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        hashmap = new Message();
        hashmap.what = 2;
        hashmap.arg1 = 1;
        hashmap.arg2 = i;
        hashmap.obj = platform;
        UIHandler.sendMessage(hashmap, this);
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        throwable.printStackTrace();
        Message message = new Message();
        message.what = 2;
        message.arg1 = 2;
        message.arg2 = i;
        message.obj = throwable;
        UIHandler.sendMessage(message, this);
        ShareSDK.logDemoEvent(4, platform);
    }

    public void setAddress(String s)
    {
        shareParamsMap.put("address", s);
    }

    public void setCallback(PlatformActionListener platformactionlistener)
    {
        callback = platformactionlistener;
    }

    public void setComment(String s)
    {
        shareParamsMap.put("comment", s);
    }

    public void setCustomerLogo(Bitmap bitmap, Bitmap bitmap1, String s, android.view.View.OnClickListener onclicklistener)
    {
        CustomerLogo customerlogo = new CustomerLogo();
        customerlogo.label = s;
        customerlogo.enableLogo = bitmap;
        customerlogo.disableLogo = bitmap1;
        customerlogo.listener = onclicklistener;
        customers.add(customerlogo);
    }

    public void setDialogMode()
    {
        dialogMode = true;
        shareParamsMap.put("dialogMode", Boolean.valueOf(dialogMode));
    }

    public void setEditPageBackground(View view)
    {
        bgView = view;
    }

    public void setExecuteUrl(String s)
    {
        shareParamsMap.put("executeurl", s);
    }

    public void setFilePath(String s)
    {
        shareParamsMap.put("filePath", s);
    }

    public void setImageArray(String as[])
    {
        shareParamsMap.put("imageArray", as);
    }

    public void setImagePath(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            shareParamsMap.put("imagePath", s);
        }
    }

    public void setImageUrl(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            shareParamsMap.put("imageUrl", s);
        }
    }

    public void setInstallUrl(String s)
    {
        shareParamsMap.put("installurl", s);
    }

    public void setLatitude(float f)
    {
        shareParamsMap.put("latitude", Float.valueOf(f));
    }

    public void setLongitude(float f)
    {
        shareParamsMap.put("longitude", Float.valueOf(f));
    }

    public void setMusicUrl(String s)
    {
        shareParamsMap.put("musicUrl", s);
    }

    public void setOnShareButtonClickListener(PlatformListFakeActivity.OnShareButtonClickListener onsharebuttonclicklistener)
    {
        onShareButtonClickListener = onsharebuttonclicklistener;
    }

    public void setPlatform(String s)
    {
        shareParamsMap.put("platform", s);
    }

    public void setShareContentCustomizeCallback(ShareContentCustomizeCallback sharecontentcustomizecallback)
    {
        customizeCallback = sharecontentcustomizecallback;
    }

    public void setShareFromQQAuthSupport(boolean flag)
    {
        shareParamsMap.put("isShareTencentWeibo", Boolean.valueOf(flag));
    }

    public void setSilent(boolean flag)
    {
        silent = flag;
    }

    public void setSite(String s)
    {
        shareParamsMap.put("site", s);
    }

    public void setSiteUrl(String s)
    {
        shareParamsMap.put("siteUrl", s);
    }

    public void setText(String s)
    {
        shareParamsMap.put("text", s);
    }

    public void setTheme(OnekeyShareTheme onekeysharetheme)
    {
        theme = onekeysharetheme;
    }

    public void setTitle(String s)
    {
        shareParamsMap.put("title", s);
    }

    public void setTitleUrl(String s)
    {
        shareParamsMap.put("titleUrl", s);
    }

    public void setUrl(String s)
    {
        shareParamsMap.put("url", s);
    }

    public void setVenueDescription(String s)
    {
        shareParamsMap.put("venueDescription", s);
    }

    public void setVenueName(String s)
    {
        shareParamsMap.put("venueName", s);
    }

    public void setViewToShare(View view)
    {
        try
        {
            view = BitmapHelper.captureView(view, view.getWidth(), view.getHeight());
            shareParamsMap.put("viewToShare", view);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            view.printStackTrace();
        }
    }

    public void share(HashMap hashmap)
    {
        boolean flag;
        flag = false;
        hashmap = hashmap.entrySet().iterator();
_L2:
        Object obj1;
        int l1;
        int i2;
        if (!hashmap.hasNext())
        {
            return;
        }
        obj1 = (java.util.Map.Entry)hashmap.next();
        Object obj = (Platform)((java.util.Map.Entry) (obj1)).getKey();
        ((Platform) (obj)).SSOSetting(disableSSO);
        Object obj2 = ((Platform) (obj)).getName();
        if ("KakaoTalk".equals(obj2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int i = R.getStringRes(context, "kakaotalk_client_inavailable");
            obj.obj = context.getString(i);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        if ("KakaoStory".equals(obj2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int j = R.getStringRes(context, "kakaostory_client_inavailable");
            obj.obj = context.getString(j);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        if ("Line".equals(obj2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int k = R.getStringRes(context, "line_client_inavailable");
            obj.obj = context.getString(k);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        if ("WhatsApp".equals(obj2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int l = R.getStringRes(context, "whatsapp_client_inavailable");
            obj.obj = context.getString(l);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        if ("Pinterest".equals(obj2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int i1 = R.getStringRes(context, "pinterest_client_inavailable");
            obj.obj = context.getString(i1);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        if ("Instagram".equals(obj2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int j1 = R.getStringRes(context, "instagram_client_inavailable");
            obj.obj = context.getString(j1);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        boolean flag1 = "Laiwang".equals(obj2);
        boolean flag2 = "LaiwangMoments".equals(obj2);
        if ((flag1 || flag2) && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            int k1 = R.getStringRes(context, "laiwang_client_inavailable");
            obj.obj = context.getString(k1);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        if (!"YixinMoments".equals(obj2) && !"Yixin".equals(obj2))
        {
            l1 = 0;
        } else
        {
            l1 = 1;
        }
        if (l1 != 0 && !((Platform) (obj)).isClientValid())
        {
            obj = new Message();
            obj.what = 1;
            l1 = R.getStringRes(context, "yixin_client_inavailable");
            obj.obj = context.getString(l1);
            UIHandler.sendMessage(((Message) (obj)), this);
            continue; /* Loop/switch isn't completed */
        }
        obj1 = (HashMap)((java.util.Map.Entry) (obj1)).getValue();
        i2 = 1;
        obj2 = String.valueOf(((HashMap) (obj1)).get("imagePath"));
        if (obj2 == null || !(new File(((String) (obj2)))).exists())
        {
            break; /* Loop/switch isn't completed */
        }
        i2 = 2;
        if (((String) (obj2)).endsWith(".gif"))
        {
            l1 = 9;
        } else
        {
            l1 = i2;
            if (((HashMap) (obj1)).containsKey("url"))
            {
                l1 = i2;
                if (!TextUtils.isEmpty(((HashMap) (obj1)).get("url").toString()))
                {
                    i2 = 4;
                    l1 = i2;
                    if (((HashMap) (obj1)).containsKey("musicUrl"))
                    {
                        l1 = i2;
                        if (!TextUtils.isEmpty(((HashMap) (obj1)).get("musicUrl").toString()))
                        {
                            l1 = 5;
                        }
                    }
                }
            }
        }
_L3:
        ((HashMap) (obj1)).put("shareType", Integer.valueOf(l1));
        l1 = ((flag) ? 1 : 0);
        if (!flag)
        {
            flag = true;
            i2 = R.getStringRes(context, "sharing");
            l1 = ((flag) ? 1 : 0);
            if (i2 > 0)
            {
                showNotification(context.getString(i2));
                l1 = ((flag) ? 1 : 0);
            }
        }
        ((Platform) (obj)).setPlatformActionListener(callback);
        obj2 = new ShareCore();
        ((ShareCore) (obj2)).setShareContentCustomizeCallback(customizeCallback);
        ((ShareCore) (obj2)).share(((Platform) (obj)), ((HashMap) (obj1)));
        flag = l1;
        if (true) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = (Bitmap)((HashMap) (obj1)).get("viewToShare");
        if (bitmap != null && !bitmap.isRecycled())
        {
            i2 = 2;
            l1 = i2;
            if (((HashMap) (obj1)).containsKey("url"))
            {
                l1 = i2;
                if (!TextUtils.isEmpty(((HashMap) (obj1)).get("url").toString()))
                {
                    i2 = 4;
                    l1 = i2;
                    if (((HashMap) (obj1)).containsKey("musicUrl"))
                    {
                        l1 = i2;
                        if (!TextUtils.isEmpty(((HashMap) (obj1)).get("musicUrl").toString()))
                        {
                            l1 = 5;
                        }
                    }
                }
            }
        } else
        {
            Object obj3 = ((HashMap) (obj1)).get("imageUrl");
            l1 = i2;
            if (obj3 != null)
            {
                l1 = i2;
                if (!TextUtils.isEmpty(String.valueOf(obj3)))
                {
                    byte byte0 = 2;
                    if (String.valueOf(obj3).endsWith(".gif"))
                    {
                        l1 = 9;
                    } else
                    {
                        l1 = byte0;
                        if (((HashMap) (obj1)).containsKey("url"))
                        {
                            l1 = byte0;
                            if (!TextUtils.isEmpty(((HashMap) (obj1)).get("url").toString()))
                            {
                                byte byte1 = 4;
                                l1 = byte1;
                                if (((HashMap) (obj1)).containsKey("musicUrl"))
                                {
                                    l1 = byte1;
                                    if (!TextUtils.isEmpty(((HashMap) (obj1)).get("musicUrl").toString()))
                                    {
                                        l1 = 5;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void show(Context context1)
    {
        ShareSDK.initSDK(context1);
        context = context1;
        ShareSDK.logDemoEvent(1, null);
        if (shareParamsMap.containsKey("platform"))
        {
            String s = String.valueOf(shareParamsMap.get("platform"));
            Platform platform = ShareSDK.getPlatform(s);
            if (silent || ShareCore.isUseClientToShare(s) || (platform instanceof CustomPlatform))
            {
                context1 = new HashMap();
                context1.put(ShareSDK.getPlatform(s), shareParamsMap);
                share(context1);
                return;
            }
        }
        PlatformListFakeActivity platformlistfakeactivity;
        if (OnekeyShareTheme.SKYBLUE != theme)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        platformlistfakeactivity = (PlatformListFakeActivity)Class.forName("cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage").newInstance();
_L1:
        platformlistfakeactivity.setDialogMode(dialogMode);
        platformlistfakeactivity.setShareParamsMap(shareParamsMap);
        platformlistfakeactivity.setSilent(silent);
        platformlistfakeactivity.setCustomerLogos(customers);
        platformlistfakeactivity.setBackgroundView(bgView);
        platformlistfakeactivity.setHiddenPlatforms(hiddenPlatforms);
        platformlistfakeactivity.setOnShareButtonClickListener(onShareButtonClickListener);
        platformlistfakeactivity.setThemeShareCallback(new ThemeShareCallback() {

            final OnekeyShare this$0;

            public void doShare(HashMap hashmap)
            {
                share(hashmap);
            }

            
            {
                this$0 = OnekeyShare.this;
                super();
            }
        });
        if (shareParamsMap.containsKey("platform"))
        {
            platformlistfakeactivity.showEditPage(context1, ShareSDK.getPlatform(String.valueOf(shareParamsMap.get("platform"))));
            return;
        } else
        {
            platformlistfakeactivity.show(context1, null);
            return;
        }
        try
        {
            platformlistfakeactivity = (PlatformListFakeActivity)Class.forName("cn.sharesdk.onekeyshare.theme.classic.PlatformListPage").newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (Context context1)
        {
            context1.printStackTrace();
            return;
        }
          goto _L1
    }
}
