// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.Bundle;
import com.facebook.UiLifecycleHelper;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.controller:
//            UMFacebookHandler

class this._cls0
    implements com.facebook.widget.ack
{

    final UMFacebookHandler this$0;

    public void onComplete(com.facebook.widget.ngCall ngcall, Bundle bundle)
    {
        Log.d("HelloFacebook", (new StringBuilder("Success! ")).append(bundle.toString()).toString());
        UMFacebookHandler.access$1(UMFacebookHandler.this).onSaveInstanceState(bundle);
    }

    public void onError(com.facebook.widget.ngCall ngcall, Exception exception, Bundle bundle)
    {
        Log.d("HelloFacebook", String.format("Error: %s", new Object[] {
            exception.toString()
        }));
    }

    ()
    {
        this$0 = UMFacebookHandler.this;
        super();
    }
}
