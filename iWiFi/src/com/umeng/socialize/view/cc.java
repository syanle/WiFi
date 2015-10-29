// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.umeng.socialize.view.wigets.SearchBox;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class cc
    implements android.view.View.OnTouchListener
{

    final bw a;
    private final SearchBox b;
    private final InputMethodManager c;

    cc(bw bw1, SearchBox searchbox, InputMethodManager inputmethodmanager)
    {
        a = bw1;
        b = searchbox;
        c = inputmethodmanager;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        b.setInputType(1);
        c.showSoftInputFromInputMethod(bw.j(a).getWindowToken(), 0);
        b.setOnTouchListener(null);
        return false;
    }
}
