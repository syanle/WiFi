// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.os.Bundle;
import android.util.Log;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.open:
//            SocialApiIml, VoiceHelper

public class delayStartParam
    implements IUiListener
{

    m delayStartParam;
    final SocialApiIml this$0;

    public void onCancel()
    {
        SocialApiIml.access$000(SocialApiIml.this);
        VoiceHelper.clearImageCacheFile(delayStartParam.params.getString("image_date"));
        SocialApiIml.access$200(SocialApiIml.this, SocialApiIml.access$100(SocialApiIml.this), null, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
    }

    public void onComplete(JSONObject jsonobject)
    {
        Log.d("TAG", (new StringBuilder()).append("CheckListener--onComplete--response = ").append(jsonobject.toString()).toString());
        boolean flag1 = false;
        boolean flag = flag1;
        if (jsonobject != null)
        {
            try
            {
                flag = jsonobject.getBoolean("check_result");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                flag = flag1;
            }
        }
        SocialApiIml.access$000(SocialApiIml.this);
        if (flag)
        {
            Log.d("TAG", (new StringBuilder()).append("CheckListener---delayStartParam.agentIntent = ").append(delayStartParam.agentIntent).append(" delayStartParam.action = ").append(delayStartParam.action).toString());
            SocialApiIml.access$200(SocialApiIml.this, SocialApiIml.access$100(SocialApiIml.this), delayStartParam.agentIntent, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
            return;
        } else
        {
            VoiceHelper.clearImageCacheFile(delayStartParam.params.getString("image_date"));
            SocialApiIml.access$200(SocialApiIml.this, SocialApiIml.access$100(SocialApiIml.this), null, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
            return;
        }
    }

    public void onError(UiError uierror)
    {
        SocialApiIml.access$000(SocialApiIml.this);
        VoiceHelper.clearImageCacheFile(delayStartParam.params.getString("image_date"));
        SocialApiIml.access$200(SocialApiIml.this, SocialApiIml.access$100(SocialApiIml.this), null, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
    }

    public m(m m)
    {
        this$0 = SocialApiIml.this;
        super();
        delayStartParam = m;
    }
}
