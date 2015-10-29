// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class be
    implements com.umeng.socialize.view.wigets.KeyboardListenRelativeLayout.IOnKeyboardStateChangedListener
{

    final ShareActivity a;

    be(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void a(int i)
    {
        ShareActivity.a(a, i);
        Log.c(ShareActivity.c(), (new StringBuilder("onKeyboardStateChanged  now state is ")).append(i).toString());
    }
}
