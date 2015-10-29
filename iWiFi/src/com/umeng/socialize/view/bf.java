// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.ProgressDialog;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.UMQQSsoHandler;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.BaseShareContent;
import com.umeng.socialize.media.UMRichMedia;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.Log;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity, bg

class bf
    implements android.view.View.OnClickListener
{

    final ShareActivity a;

    bf(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    static ShareActivity a(bf bf1)
    {
        return bf1.a;
    }

    private void a()
    {
        byte abyte0[];
        Object obj1;
        obj1 = new UMShareMsg();
        obj1.mText = ShareActivity.g(a).getText().toString();
        abyte0 = a.getImageBytes();
        if (abyte0 == null) goto _L2; else goto _L1
_L1:
        ((UMShareMsg) (obj1)).setMediaData(new UMRichMedia(abyte0, com.umeng.socialize.media.UMediaObject.MediaType.IMAGE));
        obj1.mLocation = UMLocation.build(ShareActivity.t(a));
        ShareActivity.i(a).getEntity().setShareMsg(((UMShareMsg) (obj1)));
        ShareActivity.i(a).directShare(ShareActivity.q(a), ShareActivity.d(a), ShareActivity.u(a));
_L11:
        if (ShareActivity.v(a).getVisibility() != 0 || !ShareActivity.w(a).isChecked()) goto _L4; else goto _L3
_L3:
        obj1 = ShareActivity.i(a).getConfig().getFollowFids(ShareActivity.d(a));
        if (obj1 == null || ((Set) (obj1)).size() <= 0) goto _L6; else goto _L5
_L5:
        Object obj;
        int i;
        obj = new String[((Set) (obj1)).size()];
        obj1 = ((Set) (obj1)).iterator();
        i = 0;
_L13:
        if (((Iterator) (obj1)).hasNext()) goto _L8; else goto _L7
_L7:
        if (obj != null && obj.length > 0)
        {
            ShareActivity.i(a).follow(ShareActivity.q(a), ShareActivity.d(a), null, ((String []) (obj)));
            ShareActivity.x(a);
        }
_L4:
        return;
_L2:
        if (!(ShareActivity.l(a) instanceof BaseShareContent)) goto _L10; else goto _L9
_L9:
        obj = ((BaseShareContent)ShareActivity.l(a)).getShareMedia();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_375;
        }
        if (!(obj instanceof BaseMediaObject))
        {
            break MISSING_BLOCK_LABEL_375;
        }
        obj = (BaseMediaObject)obj;
_L12:
        UMRichMedia.toUMRichMedia(((com.umeng.socialize.media.UMediaObject) (obj)), new bg(this, ((UMShareMsg) (obj1))));
          goto _L11
        obj;
        Log.e(ShareActivity.c(), "can`t set media.", ((Exception) (obj)));
          goto _L11
_L10:
        if (!(ShareActivity.l(a) instanceof BaseMediaObject))
        {
            break MISSING_BLOCK_LABEL_375;
        }
        obj = (BaseMediaObject)ShareActivity.l(a);
          goto _L12
_L8:
        obj[i] = (String)((Iterator) (obj1)).next();
        i++;
          goto _L13
_L6:
        obj = null;
          goto _L7
        obj = null;
          goto _L12
    }

    private void b()
    {
        ShareActivity.o(a).setMessage("\u8F7D\u5165\u4E2D,\u8BF7\u7A0D\u5019...");
        ShareActivity.o(a).show();
        UMQQSsoHandler umqqssohandler = UMServiceFactory.getUMQQHandler();
        if (umqqssohandler != null)
        {
            umqqssohandler.shareToQQ(ShareActivity.g(a).getText().toString().trim());
            return;
        } else
        {
            Log.c(ShareActivity.c(), "\u8BF7\u5148\u8C03\u7528mController.getConfig().supportQQPlatform(getActivity(), \"\u4F60\u7684app id\");\u652F\u6301QQ\u5E73\u53F0");
            return;
        }
    }

    public void onClick(View view)
    {
        if (DeviceConfig.checkPermission(a, "android.permission.ACCESS_NETWORK_STATE") && !DeviceConfig.isOnline(a))
        {
            Toast.makeText(a, a.getResources().getString(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_network_break_alert")), 1).show();
            return;
        }
        view = ShareActivity.g(a).getText().toString();
        if (TextUtils.isEmpty(view.trim()) && ShareActivity.l(a) == null)
        {
            Toast.makeText(a, "\u8F93\u5165\u5185\u5BB9\u4E3A\u7A7A...", 0).show();
            return;
        }
        if (SocializeUtils.countContentLength(view) > 140)
        {
            Toast.makeText(a, "\u8F93\u5165\u5185\u5BB9\u8D85\u8FC7140\u4E2A\u5B57.", 0).show();
            return;
        }
        if (ShareActivity.r(a))
        {
            Toast.makeText(ShareActivity.q(a), "\u8D85\u51FA\u6700\u5927\u5B57\u6570\u9650\u5236....", 0).show();
            return;
        }
        if (ShareActivity.s(a))
        {
            b();
        } else
        {
            a();
        }
        a.finish();
    }
}
