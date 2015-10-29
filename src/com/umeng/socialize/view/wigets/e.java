// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            SearchBox

class e
    implements TextWatcher
{

    final SearchBox a;

    e(SearchBox searchbox)
    {
        a = searchbox;
        super();
    }

    public void afterTextChanged(Editable editable)
    {
        if (editable != null)
        {
            SearchBox.access$0(a, editable.toString());
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
