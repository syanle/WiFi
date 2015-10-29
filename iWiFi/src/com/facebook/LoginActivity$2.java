// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.view.View;

// Referenced classes of package com.facebook:
//            LoginActivity, ResContainer

class this._cls0
    implements ent.BackgroundProcessingListener
{

    final LoginActivity this$0;

    public void onBackgroundProcessingStarted()
    {
        findViewById(LoginActivity.access$1(LoginActivity.this).getResourceId(Type.ID, "com_facebook_login_activity_progress_bar")).setVisibility(0);
    }

    public void onBackgroundProcessingStopped()
    {
        findViewById(LoginActivity.access$1(LoginActivity.this).getResourceId(Type.ID, "com_facebook_login_activity_progress_bar")).setVisibility(8);
    }

    Type()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
