// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.cat.data.PushListData;
import com.pubinfo.izhejiang.ExpandableTextView2;
import com.pubinfo.izhejiang.PushWebview;

// Referenced classes of package com.cat.adapter:
//            MessageListAdapter

class val.currentMsgData
    implements android.view.._cls4
{

    final MessageListAdapter this$0;
    private final PushListData val$currentMsgData;
    private final ewHolder val$holder;

    public void onClick(View view)
    {
        notifyDataSetChanged();
        val$holder.msgTime.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
        val$holder.msgTitle.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
        val$holder.msgContent.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
        view = new Intent(mContext, com/pubinfo/izhejiang/PushWebview);
        view.putExtra("url", val$currentMsgData.getUrl());
        view.addFlags(0x10000000);
        mContext.startActivity(view);
        if (val$currentMsgData.getIsread().equals("0"))
        {
            pushid = val$currentMsgData.getPushid();
            if (!pushid.equals(""))
            {
                val$currentMsgData.setIsread("1");
                (new Thread(MessageListAdapter.this)).start();
            }
        }
    }

    ewHolder()
    {
        this$0 = final_messagelistadapter;
        val$holder = ewholder;
        val$currentMsgData = PushListData.this;
        super();
    }
}
