// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.model.Firend;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

public class FriendAdapter extends BaseExpandableListAdapter
{

    private Map child;
    private Context ctx;
    private List group;

    public FriendAdapter(Context context, List list, Map map)
    {
        ctx = context;
        group = list;
        child = map;
    }

    public Object getChild(int i, int j)
    {
        return ((List)child.get(getGroup(i))).get(j);
    }

    public Map getChild()
    {
        return child;
    }

    public long getChildId(int i, int j)
    {
        return (long)j;
    }

    public View getChildView(final int groupPosition, final int childPosition, boolean flag, final View t, ViewGroup viewgroup)
    {
        if (t == null)
        {
            viewgroup = new LinearLayout(ctx);
            new android.widget.LinearLayout.LayoutParams(-1, -2);
            viewgroup.setOrientation(0);
            viewgroup.setGravity(16);
            viewgroup.setPadding(15, 0, 10, 0);
            viewgroup.setBackgroundDrawable(BackGroudSeletor.getdrawble("childbg_", ctx));
            t = new ImageView(ctx);
            t.setId(4502);
            t.setLayoutParams(new android.widget.LinearLayout.LayoutParams(45, 45));
            t.setImageDrawable(BackGroudSeletor.getdrawble("logo", ctx));
            LinearLayout linearlayout = new LinearLayout(ctx);
            linearlayout.setPadding(10, 0, 0, 0);
            linearlayout.setGravity(16);
            linearlayout.setOrientation(1);
            TextView textview1 = new TextView(ctx);
            TextView textview3 = new TextView(ctx);
            textview1.setTextSize(18F);
            textview1.setId(4500);
            textview1.setTextColor(Color.parseColor("#32769b"));
            textview3.setTextSize(12F);
            textview3.setId(4501);
            textview3.setTextColor(Color.parseColor("#a6c6d5"));
            textview1.setText(((Firend)getChild(groupPosition, childPosition)).getNick());
            textview3.setText(((Firend)getChild(groupPosition, childPosition)).getName());
            linearlayout.addView(textview1);
            linearlayout.addView(textview3);
            viewgroup.setBackgroundDrawable(BackGroudSeletor.getdrawble("childbg_", ctx));
            viewgroup.addView(t);
            viewgroup.addView(linearlayout);
            t = viewgroup;
            t.setTag(viewgroup);
        } else
        {
            viewgroup = (LinearLayout)t.getTag();
            TextView textview = (TextView)viewgroup.findViewById(4500);
            TextView textview2 = (TextView)viewgroup.findViewById(4501);
            ((ImageView)((LinearLayout)viewgroup.getTag()).findViewById(4502)).setImageDrawable(BackGroudSeletor.getdrawble("logo", ctx));
            textview.setText(((Firend)getChild(groupPosition, childPosition)).getNick());
            textview2.setText(((Firend)getChild(groupPosition, childPosition)).getName());
        }
        if (((Firend)getChild(groupPosition, childPosition)).getHeadurl() != null)
        {
            (new AsyncTask() {

                final FriendAdapter this$0;
                private final int val$childPosition;
                private final int val$groupPosition;
                private final View val$t;

                protected transient Bitmap doInBackground(String as[])
                {
                    try
                    {
                        Log.d("image urel", (new StringBuilder(String.valueOf(((Firend)getChild(groupPosition, childPosition)).getHeadurl()))).toString());
                        as = new URL(((Firend)getChild(groupPosition, childPosition)).getHeadurl());
                        String s = as.openConnection().getHeaderField(0);
                        if (s.indexOf("200") < 0)
                        {
                            Log.d("\u56FE\u7247\u6587\u4EF6\u4E0D\u5B58\u5728\u6216\u8DEF\u5F84\u9519\u8BEF\uFF0C\u9519\u8BEF\u4EE3\u7801\uFF1A", s);
                        }
                        as = BitmapFactory.decodeStream(as.openStream());
                    }
                    // Misplaced declaration of an exception variable
                    catch (String as[])
                    {
                        as.printStackTrace();
                        return null;
                    }
                    // Misplaced declaration of an exception variable
                    catch (String as[])
                    {
                        as.printStackTrace();
                        return null;
                    }
                    return as;
                }

                protected volatile transient Object doInBackground(Object aobj[])
                {
                    return doInBackground((String[])aobj);
                }

                protected void onPostExecute(Bitmap bitmap)
                {
                    ImageView imageview = (ImageView)((LinearLayout)t.getTag()).findViewById(4502);
                    if (bitmap == null)
                    {
                        imageview.setImageDrawable(BackGroudSeletor.getdrawble("logo", ctx));
                    } else
                    {
                        imageview.setImageBitmap(bitmap);
                    }
                    super.onPostExecute(bitmap);
                }

                protected volatile void onPostExecute(Object obj)
                {
                    onPostExecute((Bitmap)obj);
                }

                protected void onPreExecute()
                {
                    super.onPreExecute();
                }

            
            {
                this$0 = FriendAdapter.this;
                groupPosition = i;
                childPosition = j;
                t = view;
                super();
            }
            }).execute(new String[] {
                ((Firend)getChild(groupPosition, childPosition)).getHeadurl()
            });
            return t;
        } else
        {
            ((ImageView)((LinearLayout)t.getTag()).findViewById(4502)).setImageDrawable(BackGroudSeletor.getdrawble("logo", ctx));
            return t;
        }
    }

    public int getChildrenCount(int i)
    {
        return ((List)child.get(group.get(i))).size();
    }

    public Object getGroup(int i)
    {
        return group.get(i);
    }

    public List getGroup()
    {
        return group;
    }

    public int getGroupCount()
    {
        return group.size();
    }

    public long getGroupId(int i)
    {
        return (long)i;
    }

    public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = new LinearLayout(ctx);
            viewgroup = new TextView(ctx);
            view.setPadding(30, 0, 0, 0);
            view.setGravity(16);
            viewgroup.setTextSize(18F);
            viewgroup.setTextColor(-1);
            viewgroup.setWidth(40);
            viewgroup.setText(getGroup(i).toString().toUpperCase());
            view.addView(viewgroup);
            view.setBackgroundDrawable(BackGroudSeletor.getdrawble("groupbg_", ctx));
            viewgroup.setTag(Integer.valueOf(i));
            view.setTag(viewgroup);
            return view;
        } else
        {
            ((TextView)view.getTag()).setText(getGroup(i).toString().toUpperCase());
            return view;
        }
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public boolean isChildSelectable(int i, int j)
    {
        return true;
    }

    public void setChild(Map map)
    {
        child = map;
    }

    public void setGroup(List list)
    {
        group = list;
    }

}
