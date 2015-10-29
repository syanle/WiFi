// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.util.Log;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.sso:
//            QZoneSsoHandler

class this._cls0
    implements IUiListener
{

    final QZoneSsoHandler this$0;

    public void onCancel()
    {
        Log.d("### Tencent Sso Authorize --> onCancel", "Authorize Cancel");
        if (QZoneSsoHandler.access$0(QZoneSsoHandler.this) != null)
        {
            QZoneSsoHandler.access$0(QZoneSsoHandler.this).onCancel(SHARE_MEDIA.QZONE);
        }
    }

    public void onComplete(JSONObject jsonobject)
    {
        Log.d("### ", "### Tencent Sso Authorize --> onComplete");
        jsonobject = getAuthorizedData(jsonobject);
        if (QZoneSsoHandler.access$0(QZoneSsoHandler.this) != null)
        {
            QZoneSsoHandler.access$0(QZoneSsoHandler.this).onComplete(jsonobject, SHARE_MEDIA.QZONE);
        }
    }

    public void onError(UiError uierror)
    {
        Log.d("Tencent SSo Authorize --> onError:", uierror.toString());
        if (QZoneSsoHandler.access$0(QZoneSsoHandler.this) != null)
        {
            QZoneSsoHandler.access$0(QZoneSsoHandler.this).onError(new SocializeException(uierror.errorCode, uierror.errorMessage), SHARE_MEDIA.QZONE);
        }
    }

    eption()
    {
        this$0 = QZoneSsoHandler.this;
        super();
    }
}
