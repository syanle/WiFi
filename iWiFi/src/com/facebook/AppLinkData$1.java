// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.Bundle;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            AppLinkData

class val.completionHandler
    implements com.facebook.internal.eClient.CompletedListener
{

    private final mpletionHandler val$completionHandler;

    public void completed(Bundle bundle)
    {
        Object obj;
        long l;
        obj = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        obj = bundle.getString("com.facebook.platform.APPLINK_ARGS");
        l = bundle.getLong("com.facebook.platform.APPLINK_TAP_TIME_UTC", -1L);
        bundle = AppLinkData.access$0(((String) (obj)));
        obj = bundle;
        if (l == -1L)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        bundle.getArguments().put("com.facebook.platform.APPLINK_TAP_TIME_UTC", l);
        obj = bundle;
_L2:
        val$completionHandler.onDeferredAppLinkDataFetched(((AppLinkData) (obj)));
        return;
        JSONException jsonexception;
        jsonexception;
        Log.d(AppLinkData.access$1(), "Unable to put tap time in AppLinkData.arguments");
        jsonexception = bundle;
        if (true) goto _L2; else goto _L1
_L1:
    }

    mpletionHandler()
    {
        val$completionHandler = mpletionhandler;
        super();
    }
}
