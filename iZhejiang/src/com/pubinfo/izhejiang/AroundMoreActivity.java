// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.cat.data.BottomData;
import com.cat.data.ComData;
import com.cat.data.MapCustom;
import com.cat.data.PublicError;
import com.cat.list.ImageDownloader;
import com.cat.list.OnImageDownload;
import com.cat.parase.NearBusListParser;
import com.pubinfo.izhejiang.controller.AroundMoreFun;
import com.pubinfo.izhejiang.horizontalscrollview.HorizontalScrollViewAdapter;
import com.pubinfo.izhejiang.horizontalscrollview.OrderView;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            WebviewPage

public class AroundMoreActivity extends AroundMoreFun
{
    public class MoreAdapter extends BaseAdapter
    {

        String address;
        String business_url;
        private List data;
        String distance;
        private Context mContext;
        ImageDownloader mDownloader;
        private LayoutInflater mInflater;
        String name;
        String s_photo_url;
        final AroundMoreActivity this$0;

        public int getCount()
        {
            return data.size();
        }

        public Object getItem(int i)
        {
            return data.get(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = mInflater.inflate(0x7f030021, null);
                viewgroup = new ViewHolder();
                viewgroup.ImageView01 = (ImageView)view.findViewById(0x7f0a00aa);
                viewgroup.TextView01 = (TextView)view.findViewById(0x7f0a00ab);
                viewgroup.TextView02 = (TextView)view.findViewById(0x7f0a00ac);
                viewgroup.TextView03 = (TextView)view.findViewById(0x7f0a00ad);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            name = ((MapCustom)data.get(i)).getName();
            address = ((MapCustom)data.get(i)).getAddress();
            distance = ((MapCustom)data.get(i)).getDistance();
            s_photo_url = ((MapCustom)data.get(i)).getS_photo_url();
            business_url = ((MapCustom)data.get(i)).getBusiness_url();
            ((ViewHolder) (viewgroup)).TextView01.setText(name);
            ((ViewHolder) (viewgroup)).TextView02.setText(address);
            ((ViewHolder) (viewgroup)).TextView03.setText((new StringBuilder("\u8DDD\u79BB")).append(i).append("m").toString());
            view.setOnClickListener(i. new android.view.View.OnClickListener() {

                final MoreAdapter this$1;
                private final int val$position;

                public void onClick(View view)
                {
                    view = new Intent(getApplicationContext(), com/pubinfo/izhejiang/WebviewPage);
                    view.putExtra("activity", "AroundMoreActivity");
                    view.putExtra("name", ((MapCustom)data.get(position)).getName());
                    view.putExtra("url", ((MapCustom)data.get(position)).getBusiness_url());
                    startActivity(view);
                }

            
            {
                this$1 = final_moreadapter;
                position = I.this;
                super();
            }
            });
            if (s_photo_url != null && !s_photo_url.equals(""))
            {
                ((ViewHolder) (viewgroup)).ImageView01.setTag(s_photo_url);
                if (mDownloader == null)
                {
                    mDownloader = new ImageDownloader();
                }
                try
                {
                    mDownloader.imageDownload2(s_photo_url, ((ViewHolder) (viewgroup)).ImageView01, "/Awifi", mContext, new OnImageDownload() {

                        final MoreAdapter this$1;

                        public void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout)
                        {
                        }

                        public void onDownloadSucc2(Bitmap bitmap, String s, ImageView imageview)
                        {
                            s = (ImageView)listView.findViewWithTag(s);
                            if (s != null)
                            {
                                bitmap = new BitmapDrawable(null, bitmap);
                                s.setBackgroundDrawable(null);
                                s.setBackgroundDrawable(bitmap);
                                s.setTag("");
                            }
                        }

            
            {
                this$1 = MoreAdapter.this;
                super();
            }
                    });
                }
                // Misplaced declaration of an exception variable
                catch (ViewGroup viewgroup)
                {
                    return view;
                }
                return view;
            } else
            {
                ((ViewHolder) (viewgroup)).ImageView01.setBackgroundResource(0x7f020038);
                return view;
            }
        }



        public MoreAdapter(Context context, List list)
        {
            this$0 = AroundMoreActivity.this;
            super();
            mContext = context;
            data = list;
            mInflater = LayoutInflater.from(context);
        }
    }

    class MoreAdapter.ViewHolder
    {

        ImageView ImageView01;
        TextView TextView01;
        TextView TextView02;
        TextView TextView03;
        final MoreAdapter this$1;

        MoreAdapter.ViewHolder()
        {
            this$1 = MoreAdapter.this;
            super();
        }
    }


    ImageButton backButton;
    List bd;
    LinearLayout confirmButton;
    ListView listView;
    private HorizontalScrollViewAdapter mAdapter;
    private LinearLayout mGallery;
    private Handler mainHandler;
    TextView title;

    public AroundMoreActivity()
    {
        mainHandler = null;
    }

    private void Commit(String s)
    {
        String s1 = getSharedPreferences("LoginSucess", 0).getString("username", "");
        SharedPreferences sharedpreferences = getSharedPreferences("Location", 0);
        String s2 = sharedpreferences.getString("city", "");
        String s3 = sharedpreferences.getString("lat", "");
        getNearBusList(s2, sharedpreferences.getString("lon", ""), s3, "1000", s, "1", s1, "", getConnectedSSID(), "1", this);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final AroundMoreActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 3: default 36
            //                           0 38
            //                           1 148
            //                           2 223
            //                           3 249;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return true;
_L2:
                showLoading();
                if (checkNetWork())
                {
                    bd = ComData.getInstance().getBottomData();
                    if (bd != null && bd.size() > 0)
                    {
                        Commit(((BottomData)bd.get(0)).getName());
                    }
                } else
                {
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                hideLoading();
                message = ComData.getInstance().getMapCustom();
                if (message.size() > 0)
                {
                    message = new MoreAdapter(getApplicationContext(), message);
                    message.notifyDataSetChanged();
                    listView.setAdapter(message);
                } else
                {
                    listView.setAdapter(null);
                }
                continue; /* Loop/switch isn't completed */
_L4:
                hideLoading();
                showMsgToast(getString(0x7f060031));
                if (true) goto _L1; else goto _L5
_L5:
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message != null && message.size() > 0)
                {
                    int i = 0;
                    while (i < message.size()) 
                    {
                        String s = ((PublicError)message.get(i)).getMessage();
                        showMsgToast(s);
                        i++;
                    }
                }
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                this$0 = AroundMoreActivity.this;
                super();
            }
        });
    }

    public void doNearBusListErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doNearBusListSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        Object obj;
        obj = NearBusListParser.Nearbuslistparaser(s, 1);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(3);
            return;
        }
        try
        {
            ComData.getInstance().setMapCustom(null);
            ComData.getInstance().setMapCustom((List)obj);
            mainHandler.sendEmptyMessage(1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            hideLoading();
        }
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    public void init()
    {
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        mGallery = (LinearLayout)findViewById(0x7f0a0061);
        listView = (ListView)findViewById(0x7f0a0027);
        setListViewHeightBasedOnChildren(listView);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        title = (TextView)findViewById(0x7f0a002d);
        title.setText("\u6211\u7684");
        confirmButton.setVisibility(8);
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final AroundMoreActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361836: 
                    view = new Intent();
                    break;
                }
                setResult(2, view);
                finish();
            }

            
            {
                this$0 = AroundMoreActivity.this;
                super();
            }
        };
        backButton.setOnClickListener(onclicklistener);
    }

    public void initOverlay()
    {
        int j;
        WindowManager windowmanager = (WindowManager)getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        j = displaymetrics.widthPixels;
        bd = ComData.getInstance().getBottomData();
        if (bd == null || bd.size() <= 0) goto _L2; else goto _L1
_L1:
        final Button Btn[];
        android.widget.RelativeLayout.LayoutParams layoutparams;
        int i;
        Btn = new Button[bd.size()];
        layoutparams = new android.widget.RelativeLayout.LayoutParams(1, -2);
        i = 0;
_L5:
        if (i < bd.size()) goto _L4; else goto _L3
_L3:
        i = 0;
_L6:
        if (i < bd.size())
        {
            break MISSING_BLOCK_LABEL_324;
        }
_L2:
        ((OrderView)findViewById(0x7f0a0024)).setStayView(findViewById(0x7f0a0026), (ScrollView)findViewById(0x7f0a0025), new com.pubinfo.izhejiang.horizontalscrollview.OrderView.StayViewListener() {

            final AroundMoreActivity this$0;

            public void onStayViewGone()
            {
                findViewById(0x7f0a0028).setVisibility(8);
            }

            public void onStayViewShow()
            {
                findViewById(0x7f0a0028).setVisibility(0);
            }

            
            {
                this$0 = AroundMoreActivity.this;
                super();
            }
        });
        mainHandler.sendEmptyMessage(0);
        return;
_L4:
        Btn[i] = new Button(this);
        ImageView imageview = new ImageView(this);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(j / 4, -2);
        Btn[i].setText(((BottomData)bd.get(i)).getName());
        if (i == 0)
        {
            Btn[i].setTextColor(getResources().getColorStateList(0x7f080000));
        } else
        {
            Btn[i].setTextColor(getResources().getColorStateList(0x7f080006));
        }
        Btn[i].setBackgroundColor(-1);
        Btn[i].setGravity(17);
        imageview.setBackgroundResource(0x7f02005b);
        mGallery.addView(Btn[i], layoutparams1);
        mGallery.addView(imageview, layoutparams);
        i++;
          goto _L5
        Btn[i].setTag(Integer.valueOf(i));
        Btn[i].setOnClickListener(new android.view.View.OnClickListener() {

            final AroundMoreActivity this$0;
            private final Button val$Btn[];

            public void onClick(View view)
            {
                int k = 0;
                do
                {
                    if (k >= bd.size())
                    {
                        k = ((Integer)view.getTag()).intValue();
                        Btn[k].setTextColor(getResources().getColorStateList(0x7f080000));
                        showLoading();
                        Commit(((BottomData)bd.get(k)).getName());
                        return;
                    }
                    Btn[k].setTextColor(getResources().getColorStateList(0x7f080006));
                    k++;
                } while (true);
            }

            
            {
                this$0 = AroundMoreActivity.this;
                Btn = abutton;
                super();
            }
        });
        i++;
          goto _L6
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030005);
        init();
        initialHandler();
        ComData.getInstance().getTopData();
        initOverlay();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 || i == 3)
        {
            finish();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public void setListViewHeightBasedOnChildren(ListView listview)
    {
        ListAdapter listadapter = listview.getAdapter();
        if (listadapter == null)
        {
            return;
        }
        int j = 0;
        int i = 0;
        do
        {
            if (i >= listadapter.getCount())
            {
                android.view.ViewGroup.LayoutParams layoutparams = listview.getLayoutParams();
                layoutparams.height = listview.getDividerHeight() * (listadapter.getCount() - 1) + j;
                ((android.view.ViewGroup.MarginLayoutParams)layoutparams).setMargins(10, 10, 10, 10);
                listview.setLayoutParams(layoutparams);
                return;
            }
            View view = listadapter.getView(i, null, listview);
            view.measure(0, 0);
            j += view.getMeasuredHeight();
            i++;
        } while (true);
    }

}
