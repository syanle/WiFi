// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cat.data.SsidData;
import com.cat.list.ImageDownloader;
import com.cat.list.OnImageDownload;
import com.cat.list.XListView;
import com.pubinfo.izhejiang.ConnectActivity;
import com.pubinfo.izhejiang.LoginActivity;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

public class ssid extends BaseAdapter
{
    private class ViewHolder
    {

        ImageView iv_info;
        ImageView iv_strength;
        RelativeLayout rl;
        RelativeLayout rl_wifi_item;
        final SsidFragment.WifiAdapter this$1;
        TextView tv_attention;
        TextView tv_connected;
        TextView tv_ssid;

        private ViewHolder()
        {
            this$1 = SsidFragment.WifiAdapter.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    private Context context;
    int level;
    String logourl;
    private ViewHolder mHolder;
    String mac;
    private String macstring;
    private List results;
    private String ssid;
    String ssidclick;
    final SsidFragment this$0;
    String type;

    public int getCount()
    {
        return results.size();
    }

    public Object getItem(int i)
    {
        return results.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(final int position, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = getActivity().getLayoutInflater().inflate(0x7f030038, null);
            mHolder = new ViewHolder(null);
            mHolder.rl = (RelativeLayout)view.findViewById(0x7f0a00f1);
            mHolder.tv_ssid = (TextView)view.findViewById(0x7f0a00f4);
            mHolder.iv_strength = (ImageView)view.findViewById(0x7f0a00f5);
            mHolder.tv_attention = (TextView)view.findViewById(0x7f0a00f3);
            mHolder.tv_connected = (TextView)view.findViewById(0x7f0a00f7);
            mHolder.iv_info = (ImageView)view.findViewById(0x7f0a00f6);
            mHolder.rl_wifi_item = (RelativeLayout)view.findViewById(0x7f0a00f0);
            view.setTag(mHolder);
        } else
        {
            mHolder = (ViewHolder)view.getTag();
        }
        type = ((SsidData)results.get(position)).getNettype();
        level = ((SsidData)results.get(position)).getLevel();
        mac = ((SsidData)results.get(position)).getMac();
        logourl = ((SsidData)results.get(position)).getLogo();
        ssidclick = ((SsidData)results.get(position)).getSsid();
        mHolder.tv_ssid.setText(((SsidData)results.get(position)).getSsid());
        if (type.equals("1"))
        {
            mHolder.tv_attention.setText(getString(0x7f06000e));
            mHolder.rl.setBackgroundResource(0x7f020035);
        } else
        if (type.equals("2"))
        {
            mHolder.tv_attention.setText(getString(0x7f06000f));
            mHolder.rl.setBackgroundResource(0x7f020038);
        } else
        if (type.equals("3"))
        {
            if (((SsidData)results.get(position)).getPassword() == 0)
            {
                mHolder.tv_attention.setText(getString(0x7f060011));
                mHolder.rl.setBackgroundResource(0x7f020037);
            } else
            {
                mHolder.tv_attention.setText(getString(0x7f060010));
                mHolder.rl.setBackgroundResource(0x7f020037);
            }
        }
        if (Math.abs(level) > 85)
        {
            mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020133));
        } else
        if (Math.abs(level) > 70)
        {
            mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020134));
        } else
        if (Math.abs(level) > 50)
        {
            mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020135));
        } else
        {
            mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020136));
        }
        if ((new StringBuilder("\"")).append(((SsidData)results.get(position)).getSsid()).append("\"").toString().equals(ssid) || ((SsidData)results.get(position)).getSsid().equals(ssid))
        {
            mHolder.tv_connected.setVisibility(0);
            mHolder.iv_info.setVisibility(8);
        } else
        {
            mHolder.tv_connected.setVisibility(8);
            mHolder.iv_info.setVisibility(0);
        }
        if (type.equals("2"))
        {
            if (logourl != null && !logourl.equals(""))
            {
                mHolder.rl.setTag(logourl);
                if (mDownloader == null)
                {
                    mDownloader = new ImageDownloader();
                }
                mDownloader.imageDownload(logourl, mHolder.rl, "/Awifi", getActivity(), new OnImageDownload() {

                    final SsidFragment.WifiAdapter this$1;

                    public void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout)
                    {
                        s = (RelativeLayout)SsidFragment.access$2(this$0).findViewWithTag(s);
                        if (s != null)
                        {
                            bitmap = new BitmapDrawable(null, bitmap);
                            s.setBackgroundDrawable(null);
                            s.setBackgroundDrawable(bitmap);
                            s.setTag("");
                        }
                    }

                    public void onDownloadSucc2(Bitmap bitmap, String s, ImageView imageview)
                    {
                    }

            
            {
                this$1 = SsidFragment.WifiAdapter.this;
                super();
            }
                });
            } else
            {
                mHolder.rl.setBackgroundResource(0x7f020038);
            }
        }
        mHolder.rl_wifi_item.setOnClickListener(new android.view.View.OnClickListener() {

            final SsidFragment.WifiAdapter this$1;
            private final int val$position;

            public void onClick(View view1)
            {
                if (!username.equals(""))
                {
                    view1 = new Intent(getActivity(), com/pubinfo/izhejiang/ConnectActivity);
                    view1.putExtra("type", ((SsidData)results.get(position)).getNettype());
                    view1.putExtra("logourl", ((SsidData)results.get(position)).getLogo());
                    view1.putExtra("ssidclick", ((SsidData)results.get(position)).getSsid());
                    view1.putExtra("ssidconnect", ssid);
                    view1.putExtra("macclick", ((SsidData)results.get(position)).getMac());
                    view1.putExtra("macconnect", macstring);
                    startActivityForResult(view1, 3);
                    return;
                } else
                {
                    view1 = new Intent(getActivity(), com/pubinfo/izhejiang/LoginActivity);
                    view1.putExtra("Activity", "SsidFragment");
                    startActivityForResult(view1, 2);
                    return;
                }
            }

            
            {
                this$1 = SsidFragment.WifiAdapter.this;
                position = i;
                super();
            }
        });
        mHolder.iv_info.setOnClickListener(new android.view.View.OnClickListener() {

            final SsidFragment.WifiAdapter this$1;

            public void onClick(View view1)
            {
            }

            
            {
                this$1 = SsidFragment.WifiAdapter.this;
                super();
            }
        });
        return view;
    }





    public _cls3.this._cls1(Context context1, List list, String s, String s1)
    {
        this$0 = SsidFragment.this;
        super();
        context = context1;
        results = list;
        macstring = s;
        ssid = s1;
    }
}
