// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.util.SDKLogger;

// Referenced classes of package im.yixin.sdk.api:
//            IYXAPICallbackEventHandler, IYXAPI

public abstract class BaseYXEntryActivity extends Activity
    implements IYXAPICallbackEventHandler
{

    public BaseYXEntryActivity()
    {
    }

    private void handleIntent()
    {
        SDKLogger.i(im/yixin/sdk/api/BaseYXEntryActivity, "handleIntent()");
        IYXAPI iyxapi = getIYXAPI();
        if (iyxapi != null)
        {
            iyxapi.handleIntent(getIntent(), this);
            return;
        } else
        {
            SDKLogger.e(im/yixin/sdk/api/BaseYXEntryActivity, "please don't return null by calling getIYXAPI()");
            return;
        }
    }

    protected abstract IYXAPI getIYXAPI();

    public final void onCreate(Bundle bundle)
    {
        SDKLogger.i(im/yixin/sdk/api/BaseYXEntryActivity, "onCreate(Bundle bundle)");
        super.onCreate(bundle);
        handleIntent();
    }

    protected final void onNewIntent(Intent intent)
    {
        SDKLogger.i(im/yixin/sdk/api/BaseYXEntryActivity, "onNewIntent(Intent paramIntent)");
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent();
    }
}
