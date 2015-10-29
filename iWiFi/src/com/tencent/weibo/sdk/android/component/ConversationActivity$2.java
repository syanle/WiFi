// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.text.Editable;
import android.text.TextWatcher;
import com.tencent.weibo.sdk.android.api.adapter.ConversationAdapter;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            ConversationActivity

class this._cls0
    implements TextWatcher
{

    final ConversationActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= ConversationActivity.access$0(ConversationActivity.this).size())
            {
                ConversationActivity.access$1(ConversationActivity.this).setCvlist(arraylist);
                ConversationActivity.access$1(ConversationActivity.this).notifyDataSetChanged();
                ConversationActivity.access$2(ConversationActivity.this, arraylist);
                return;
            }
            if (((String)ConversationActivity.access$0(ConversationActivity.this).get(i)).contains(editable.toString()))
            {
                arraylist.add((String)ConversationActivity.access$0(ConversationActivity.this).get(i));
            }
            i++;
        } while (true);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = ConversationActivity.this;
        super();
    }
}
