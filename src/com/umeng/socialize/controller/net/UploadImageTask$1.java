// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.net;

import com.facebook.FacebookRequestError;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.umeng.socialize.controller.utils.ToastUtil;
import com.umeng.socom.Log;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.controller.net:
//            UploadImageTask, ImageUrlTask

class this._cls0
    implements com.facebook.net.UploadImageTask._cls1
{

    final UploadImageTask this$0;

    public void onCompleted(Response response)
    {
        if (response.getError() != null)
        {
            ToastUtil.showToast(UploadImageTask.access$1(UploadImageTask.this), "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD");
            Log.d(UploadImageTask.access$2(UploadImageTask.this), response.getError().toString());
            return;
        }
        response = response.getGraphObject().getInnerJSONObject();
        try
        {
            response = new ImageUrlTask(response.getString("id"));
            response.setUploadListener(UploadImageTask.access$3(UploadImageTask.this));
            response.execute(new Void[0]);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Response response)
        {
            response.printStackTrace();
        }
    }

    ()
    {
        this$0 = UploadImageTask.this;
        super();
    }
}
