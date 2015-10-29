// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bu
    implements TextWatcher
{

    final ShareActivity a;

    bu(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        ShareActivity.a(a, ShareActivity.n(a));
    }
}
