// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.util.SparseBooleanArray;
import com.pubinfo.izhejiang.ExpandableTextView2;

// Referenced classes of package com.cat.adapter:
//            MessageListAdapter

class val.position
    implements com.pubinfo.izhejiang.nCollapseListener
{

    final MessageListAdapter this$0;
    private final int val$position;

    public void onCollapse(ExpandableTextView2 expandabletextview2)
    {
        MessageListAdapter.access$1(MessageListAdapter.this).put(val$position, false);
    }

    iew2()
    {
        this$0 = final_messagelistadapter;
        val$position = I.this;
        super();
    }
}
