// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socom.Log;

public class StatusCode
{

    public static final int ST_CODE_ACCESS_EXPIRED = 5027;
    public static final int ST_CODE_ACCESS_EXPIRED2 = 5028;
    public static final int ST_CODE_CONTENT_REPEAT = 5016;
    public static final int ST_CODE_ERROR = 40002;
    public static final int ST_CODE_ERROR_CANCEL = 40000;
    public static final int ST_CODE_ERROR_INVALID_DATA = 40001;
    public static final int ST_CODE_ERROR_WEIXIN = 5029;
    public static final int ST_CODE_NO_AUTH = 5014;
    public static final int ST_CODE_NO_SMS = 10086;
    public static final int ST_CODE_RESERVE_CODE = 5037;
    public static final int ST_CODE_SDK_INITQUEUE_FAILED = -104;
    public static final int ST_CODE_SDK_NORESPONSE = -103;
    public static final int ST_CODE_SDK_NO_OAUTH = -101;
    public static final int ST_CODE_SDK_SHARE_PARAMS_ERROR = -105;
    public static final int ST_CODE_SDK_UNKNOW = -102;
    public static final int ST_CODE_SUCCESSED = 200;
    public static final int ST_CODE_USER_BANNED = 505;

    public StatusCode()
    {
    }

    public static int showErrMsg(Context context, int i, String s)
    {
        if (i == 200)
        {
            Log.e("com.umeng.socialize", (new StringBuilder("call show error msg but error_code is ")).append(i).toString());
        } else
        {
            if (i == 505)
            {
                if (SocializeConstants.SHOW_ERROR_CODE)
                {
                    s = (new StringBuilder(" [")).append(i).append("]").toString();
                } else
                {
                    s = "";
                }
                Toast.makeText(context, (new StringBuilder(String.valueOf(context.getString(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_tip_blacklist"))))).append(s).toString(), 1).show();
                return i;
            }
            if (i == 5027 || 5028 == i)
            {
                Toast.makeText(context, "\u6388\u6743\u5931\u6548\uFF0C\u8BF7\u91CD\u65B0\u6388\u6743...", 0).show();
                return i;
            }
            if (i == 5016)
            {
                Toast.makeText(context, "\u5206\u4EAB\u5185\u5BB9\u91CD\u590D...", 0).show();
                return i;
            }
            if (!TextUtils.isEmpty(s))
            {
                Toast.makeText(context, (new StringBuilder(String.valueOf(s))).append(" [").append(i).append("]").toString(), 1).show();
                return i;
            }
        }
        return i;
    }
}
