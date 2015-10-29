// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.util.SparseBooleanArray;
import com.pubinfo.izhejiang.ExpandableTextView2;

// Referenced classes of package com.cat.adapter:
//            MessageListAdapter

class val.position
    implements com.pubinfo.izhejiang.nExpandListener
{

    final MessageListAdapter this$0;
    private final int val$position;

    public void onExpand(ExpandableTextView2 expandabletextview2)
    {
        if (MessageListAdapter.access$1(MessageListAdapter.this).size() <= 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < MessageListAdapter.access$1(MessageListAdapter.this).size()) goto _L3; else goto _L2
_L2:
        notifyDataSetChanged();
        MessageListAdapter.access$1(MessageListAdapter.this).put(val$position, true);
        return;
_L3:
        MessageListAdapter.access$1(MessageListAdapter.this).put(i, false);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    iew2()
    {
        this$0 = final_messagelistadapter;
        val$position = I.this;
        super();
    }
}
