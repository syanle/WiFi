// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Looper;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.cat.data.PushListData;
import com.cat.impl.DoReadPushConn;
import com.cat.protocol.DoReadPushInterface;
import com.pubinfo.izhejiang.ExpandableTextView2;
import com.pubinfo.izhejiang.PushWebview;
import java.util.List;

public class MessageListAdapter extends BaseAdapter
    implements DoReadPushInterface
{
    public class MyThread extends Thread
    {

        final MessageListAdapter this$0;

        public void run()
        {
            try
            {
                Looper.prepare();
                SharedPreferences sharedpreferences = mContext.getSharedPreferences("LoginSucess", 0);
                new DoReadPushConn(sharedpreferences.getString("username", ""), sharedpreferences.getString("countrycode", ""), pushid, mContext);
            }
            catch (Exception exception) { }
            Looper.loop();
        }

        public MyThread()
        {
            this$0 = MessageListAdapter.this;
            super();
        }
    }

    final class ViewHolder
    {

        ExpandableTextView2 msgContent;
        TextView msgTime;
        TextView msgTitle;
        final MessageListAdapter this$0;
        ImageView typeIcon;

        ViewHolder()
        {
            this$0 = MessageListAdapter.this;
            super();
        }
    }


    protected Context mContext;
    private final SparseBooleanArray mExpandedArray = new SparseBooleanArray();
    private List msgDataList;
    String pushid;
    protected WifiManager wifiMgr;

    public MessageListAdapter(Context context, List list)
    {
        wifiMgr = null;
        msgDataList = list;
        mContext = context;
    }

    public void doReadPushErr(String s)
    {
    }

    public void doReadPushSucc(String s)
    {
    }

    public int getCount()
    {
        return msgDataList.size();
    }

    public PushListData getItem(int i)
    {
        return (PushListData)msgDataList.get(i);
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public View getView(final int position, View view, final ViewGroup holder)
    {
        final PushListData currentMsgData;
        if (view == null)
        {
            holder = new ViewHolder();
            view = LayoutInflater.from(mContext).inflate(0x7f030015, null);
            holder.typeIcon = (ImageView)view.findViewById(0x7f0a0067);
            holder.msgTime = (TextView)view.findViewById(0x7f0a006a);
            holder.msgTitle = (TextView)view.findViewById(0x7f0a0068);
            holder.msgContent = (ExpandableTextView2)view.findViewById(0x7f0a0069);
            view.setTag(0x7f0a0011, holder);
        } else
        {
            holder = (ViewHolder)view.getTag(0x7f0a0011);
            ((ViewHolder) (holder)).msgContent.setTag(0x7f0a0012, new Object());
            ((ViewHolder) (holder)).msgContent.setExpanded(mExpandedArray.get(position));
        }
        currentMsgData = getItem(position);
        ((ViewHolder) (holder)).typeIcon.setImageResource(0x7f0200ad);
        if (!currentMsgData.getIsread().equals("0")) goto _L2; else goto _L1
_L1:
        ((ViewHolder) (holder)).msgTime.setTextColor(mContext.getResources().getColorStateList(0x7f080005));
        ((ViewHolder) (holder)).msgTitle.setTextColor(mContext.getResources().getColorStateList(0x7f080005));
        ((ViewHolder) (holder)).msgContent.setTextColor(mContext.getResources().getColorStateList(0x7f080005));
_L8:
        ((ViewHolder) (holder)).msgTime.setText(currentMsgData.getDate());
        ((ViewHolder) (holder)).msgTitle.setText(currentMsgData.getTitle());
        ((ViewHolder) (holder)).msgContent.setText(currentMsgData.getMessage());
        if (!currentMsgData.getType().equals("push_text")) goto _L4; else goto _L3
_L3:
        ((ViewHolder) (holder)).msgContent.setOnExpandListener(new com.pubinfo.izhejiang.ExpandableTextView2.OnExpandListener() {

            final MessageListAdapter this$0;
            private final int val$position;

            public void onExpand(ExpandableTextView2 expandabletextview2)
            {
                if (mExpandedArray.size() <= 0) goto _L2; else goto _L1
_L1:
                int i = 0;
_L5:
                if (i < mExpandedArray.size()) goto _L3; else goto _L2
_L2:
                notifyDataSetChanged();
                mExpandedArray.put(position, true);
                return;
_L3:
                mExpandedArray.put(i, false);
                i++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = MessageListAdapter.this;
                position = i;
                super();
            }
        }).setOnCollapseListener(new com.pubinfo.izhejiang.ExpandableTextView2.OnCollapseListener() {

            final MessageListAdapter this$0;
            private final int val$position;

            public void onCollapse(ExpandableTextView2 expandabletextview2)
            {
                mExpandedArray.put(position, false);
            }

            
            {
                this$0 = MessageListAdapter.this;
                position = i;
                super();
            }
        }).setOnClickListener(new android.view.View.OnClickListener() {

            final MessageListAdapter this$0;
            private final PushListData val$currentMsgData;
            private final ViewHolder val$holder;

            public void onClick(View view1)
            {
                holder.msgTime.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
                holder.msgTitle.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
                holder.msgContent.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
                if (currentMsgData.getIsread().equals("0"))
                {
                    pushid = currentMsgData.getPushid();
                    if (!pushid.equals(""))
                    {
                        currentMsgData.setIsread("1");
                        (new MyThread()).start();
                    }
                }
                holder.msgContent.toggle();
            }

            
            {
                this$0 = MessageListAdapter.this;
                holder = viewholder;
                currentMsgData = pushlistdata;
                super();
            }
        });
_L6:
        return view;
_L2:
        if (currentMsgData.getIsread().equals("1"))
        {
            ((ViewHolder) (holder)).msgTime.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
            ((ViewHolder) (holder)).msgTitle.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
            ((ViewHolder) (holder)).msgContent.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (!currentMsgData.getType().equals("push_url")) goto _L6; else goto _L5
_L5:
        ((ViewHolder) (holder)).msgContent.setEllipsize(android.text.TextUtils.TruncateAt.valueOf("END"));
        ((ViewHolder) (holder)).msgContent.setSingleLine(true);
        ((ViewHolder) (holder)).msgContent.setOnClickListener(new android.view.View.OnClickListener() {

            final MessageListAdapter this$0;
            private final PushListData val$currentMsgData;
            private final ViewHolder val$holder;

            public void onClick(View view1)
            {
                notifyDataSetChanged();
                holder.msgTime.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
                holder.msgTitle.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
                holder.msgContent.setTextColor(mContext.getResources().getColorStateList(0x7f0800ad));
                view1 = new Intent(mContext, com/pubinfo/izhejiang/PushWebview);
                view1.putExtra("url", currentMsgData.getUrl());
                view1.addFlags(0x10000000);
                mContext.startActivity(view1);
                if (currentMsgData.getIsread().equals("0"))
                {
                    pushid = currentMsgData.getPushid();
                    if (!pushid.equals(""))
                    {
                        currentMsgData.setIsread("1");
                        (new MyThread()).start();
                    }
                }
            }

            
            {
                this$0 = MessageListAdapter.this;
                holder = viewholder;
                currentMsgData = pushlistdata;
                super();
            }
        });
        return view;
        if (true) goto _L8; else goto _L7
_L7:
    }

}
