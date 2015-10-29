// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocialPopupDialog

class x
    implements android.view.View.OnTouchListener
{

    final SocialPopupDialog a;

    x(SocialPopupDialog socialpopupdialog)
    {
        a = socialpopupdialog;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return true;
    }
}
