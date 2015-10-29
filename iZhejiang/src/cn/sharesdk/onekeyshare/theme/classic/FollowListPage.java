// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.onekeyshare.FollowerListFakeActivity;
import com.mob.tools.gui.AsyncImageView;
import com.mob.tools.gui.BitmapProcessor;
import com.mob.tools.gui.PullToRefreshListAdapter;
import com.mob.tools.gui.PullToRefreshView;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import java.util.ArrayList;
import java.util.HashMap;

public class FollowListPage extends FollowerListFakeActivity
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{
    private static class FollowAdapter extends PullToRefreshListAdapter
        implements PlatformActionListener, android.os.Handler.Callback
    {

        private static final int FOLLOW_LIST_EMPTY = 2;
        private Bitmap bmChd;
        private Bitmap bmUnch;
        private int curPage;
        private ArrayList follows;
        private boolean hasNext;
        private PRTHeader llHeader;
        private HashMap map;
        private Platform platform;

        private void next()
        {
            if (hasNext)
            {
                platform.listFriend(15, curPage + 1, null);
            }
        }

        public int getCount()
        {
            if (follows == null)
            {
                return 0;
            } else
            {
                return follows.size();
            }
        }

        public View getHeaderView()
        {
            return llHeader;
        }

        public cn.sharesdk.onekeyshare.FollowerListFakeActivity.Following getItem(int i)
        {
            return (cn.sharesdk.onekeyshare.FollowerListFakeActivity.Following)follows.get(i);
        }

        public volatile Object getItem(int i)
        {
            return getItem(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            boolean flag = "FacebookMessenger".equals(platform.getName());
            Bitmap bitmap;
            cn.sharesdk.onekeyshare.FollowerListFakeActivity.Following following;
            ImageView imageview;
            if (view == null)
            {
                LinearLayout linearlayout = new LinearLayout(viewgroup.getContext());
                FollowListItem followlistitem = new FollowListItem(null);
                linearlayout.setTag(followlistitem);
                view = linearlayout;
                int j = R.dipToPx(getContext(), 52);
                int k = R.dipToPx(viewgroup.getContext(), 10);
                int l = R.dipToPx(viewgroup.getContext(), 5);
                if (!flag)
                {
                    followlistitem.aivIcon = new AsyncImageView(getContext());
                    android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(j, j);
                    layoutparams.gravity = 16;
                    layoutparams.setMargins(k, l, k, l);
                    followlistitem.aivIcon.setLayoutParams(layoutparams);
                    linearlayout.addView(followlistitem.aivIcon);
                }
                LinearLayout linearlayout1 = new LinearLayout(viewgroup.getContext());
                linearlayout1.setPadding(0, k, k, k);
                linearlayout1.setOrientation(1);
                android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -2);
                layoutparams1.gravity = 16;
                layoutparams1.weight = 1.0F;
                linearlayout1.setLayoutParams(layoutparams1);
                linearlayout.addView(linearlayout1);
                followlistitem.tvName = new TextView(viewgroup.getContext());
                followlistitem.tvName.setTextColor(0xff000000);
                followlistitem.tvName.setTextSize(1, 18F);
                followlistitem.tvName.setSingleLine();
                if (flag)
                {
                    followlistitem.tvName.setPadding(k, 0, 0, 0);
                }
                linearlayout1.addView(followlistitem.tvName);
                if (!flag)
                {
                    followlistitem.tvSign = new TextView(viewgroup.getContext());
                    followlistitem.tvSign.setTextColor(0x7f000000);
                    followlistitem.tvSign.setTextSize(1, 14F);
                    followlistitem.tvSign.setSingleLine();
                    linearlayout1.addView(followlistitem.tvSign);
                }
                followlistitem.ivCheck = new ImageView(viewgroup.getContext());
                followlistitem.ivCheck.setPadding(0, 0, k, 0);
                viewgroup = new android.widget.LinearLayout.LayoutParams(-2, -2);
                viewgroup.gravity = 16;
                followlistitem.ivCheck.setLayoutParams(viewgroup);
                linearlayout.addView(followlistitem.ivCheck);
                viewgroup = followlistitem;
            } else
            {
                viewgroup = (FollowListItem)view.getTag();
            }
            following = getItem(i);
            ((FollowListItem) (viewgroup)).tvName.setText(following.screenName);
            if (!flag)
            {
                ((FollowListItem) (viewgroup)).tvSign.setText(following.description);
            }
            imageview = ((FollowListItem) (viewgroup)).ivCheck;
            if (following.checked)
            {
                bitmap = bmChd;
            } else
            {
                bitmap = bmUnch;
            }
            imageview.setImageBitmap(bitmap);
            if (!flag)
            {
                if (isFling())
                {
                    bitmap = BitmapProcessor.getBitmapFromCache(following.icon);
                    if (bitmap != null && !bitmap.isRecycled())
                    {
                        ((FollowListItem) (viewgroup)).aivIcon.setImageBitmap(bitmap);
                    } else
                    {
                        ((FollowListItem) (viewgroup)).aivIcon.execute(null, 0);
                    }
                } else
                {
                    ((FollowListItem) (viewgroup)).aivIcon.execute(following.icon, 0);
                }
            }
            if (i == getCount() - 1)
            {
                next();
            }
            return view;
        }

        public boolean handleMessage(Message message)
        {
            if (message.what < 0)
            {
                ((Activity)getContext()).finish();
            } else
            if (message.what == 2)
            {
                notifyDataSetChanged();
            } else
            {
                if (curPage <= 0)
                {
                    follows.clear();
                }
                message = (ArrayList)message.obj;
                follows.addAll(message);
                notifyDataSetChanged();
            }
            return false;
        }

        public void onCancel(Platform platform1, int i)
        {
            UIHandler.sendEmptyMessage(-1, this);
        }

        public void onComplete(Platform platform1, int i, HashMap hashmap)
        {
            platform1 = FollowListPage.parseFollowers(platform.getName(), hashmap, map);
            if (platform1 == null)
            {
                UIHandler.sendEmptyMessage(2, this);
            } else
            {
                hasNext = ((cn.sharesdk.onekeyshare.FollowerListFakeActivity.FollowersResult) (platform1)).hasNextPage;
                if (((cn.sharesdk.onekeyshare.FollowerListFakeActivity.FollowersResult) (platform1)).list != null && ((cn.sharesdk.onekeyshare.FollowerListFakeActivity.FollowersResult) (platform1)).list.size() > 0)
                {
                    curPage = curPage + 1;
                    hashmap = new Message();
                    hashmap.what = 1;
                    hashmap.obj = ((cn.sharesdk.onekeyshare.FollowerListFakeActivity.FollowersResult) (platform1)).list;
                    UIHandler.sendMessage(hashmap, this);
                    return;
                }
            }
        }

        public void onError(Platform platform1, int i, Throwable throwable)
        {
            throwable.printStackTrace();
        }

        public void onPullDown(int i)
        {
            llHeader.onPullDown(i);
        }

        public void onRequest()
        {
            llHeader.onRequest();
            curPage = -1;
            hasNext = true;
            map.clear();
            next();
        }

        public void onReversed()
        {
            super.onReversed();
            llHeader.reverse();
        }

        public void setPlatform(Platform platform1)
        {
            platform = platform1;
            platform1.setPlatformActionListener(this);
        }

        public FollowAdapter(PullToRefreshView pulltorefreshview)
        {
            super(pulltorefreshview);
            curPage = -1;
            hasNext = true;
            map = new HashMap();
            follows = new ArrayList();
            llHeader = new PRTHeader(getContext());
            int i = R.getBitmapRes(getContext(), "auth_follow_cb_chd");
            if (i > 0)
            {
                bmChd = BitmapFactory.decodeResource(pulltorefreshview.getResources(), i);
            }
            i = R.getBitmapRes(getContext(), "auth_follow_cb_unc");
            if (i > 0)
            {
                bmUnch = BitmapFactory.decodeResource(pulltorefreshview.getResources(), i);
            }
        }
    }

    private static class FollowListItem
    {

        public AsyncImageView aivIcon;
        public ImageView ivCheck;
        public TextView tvName;
        public TextView tvSign;

        private FollowListItem()
        {
        }

        FollowListItem(FollowListItem followlistitem)
        {
            this();
        }
    }

    private static class PRTHeader extends LinearLayout
    {

        private RotateImageView ivArrow;
        private ProgressBar pbRefreshing;
        private TextView tvHeader;

        public void onPullDown(int i)
        {
            if (i > 100)
            {
                int k = ((i - 100) * 180) / 20;
                int j = k;
                if (k > 180)
                {
                    j = 180;
                }
                k = j;
                if (j < 0)
                {
                    k = 0;
                }
                ivArrow.setRotation(k);
            } else
            {
                ivArrow.setRotation(0);
            }
            if (i < 100)
            {
                i = R.getStringRes(getContext(), "pull_to_refresh");
                if (i > 0)
                {
                    tvHeader.setText(i);
                }
            } else
            {
                i = R.getStringRes(getContext(), "release_to_refresh");
                if (i > 0)
                {
                    tvHeader.setText(i);
                    return;
                }
            }
        }

        public void onRequest()
        {
            ivArrow.setVisibility(8);
            pbRefreshing.setVisibility(0);
            int i = R.getStringRes(getContext(), "refreshing");
            if (i > 0)
            {
                tvHeader.setText(i);
            }
        }

        public void reverse()
        {
            pbRefreshing.setVisibility(8);
            ivArrow.setRotation(180);
            ivArrow.setVisibility(0);
        }

        public PRTHeader(Context context)
        {
            super(context);
            setOrientation(1);
            LinearLayout linearlayout = new LinearLayout(context);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams.gravity = 1;
            addView(linearlayout, layoutparams);
            ivArrow = new RotateImageView(context);
            int i = R.getBitmapRes(context, "ssdk_oks_ptr_ptr");
            if (i > 0)
            {
                ivArrow.setImageResource(i);
            }
            i = R.dipToPx(context, 32);
            layoutparams = new android.widget.LinearLayout.LayoutParams(i, i);
            layoutparams.gravity = 16;
            linearlayout.addView(ivArrow, layoutparams);
            pbRefreshing = new ProgressBar(context);
            linearlayout.addView(pbRefreshing, layoutparams);
            pbRefreshing.setVisibility(8);
            tvHeader = new TextView(getContext());
            tvHeader.setTextSize(1, 18F);
            tvHeader.setGravity(17);
            i = R.dipToPx(getContext(), 10);
            tvHeader.setPadding(i, i, i, i);
            tvHeader.setTextColor(0xff000000);
            context = new android.widget.LinearLayout.LayoutParams(-2, -2);
            context.gravity = 16;
            linearlayout.addView(tvHeader, context);
        }
    }

    private static class RotateImageView extends ImageView
    {

        private int rotation;

        protected void onDraw(Canvas canvas)
        {
            canvas.rotate(rotation, getWidth() / 2, getHeight() / 2);
            super.onDraw(canvas);
        }

        public void setRotation(int i)
        {
            rotation = i;
            invalidate();
        }

        public RotateImageView(Context context)
        {
            super(context);
        }
    }


    private FollowAdapter adapter;
    private int lastPosition;
    private TitleLayout llTitle;

    public FollowListPage()
    {
        lastPosition = -1;
    }

    public void onClick(View view)
    {
        if (!view.equals(llTitle.getBtnRight())) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        view = new ArrayList();
        i = 0;
        j = adapter.getCount();
_L6:
        if (i < j) goto _L4; else goto _L3
_L3:
        setResultForChecked(view);
_L2:
        finish();
        return;
_L4:
        if (adapter.getItem(i).checked)
        {
            view.add(adapter.getItem(i).atName);
        }
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onCreate()
    {
        Object obj = new LinearLayout(getContext());
        ((LinearLayout) (obj)).setBackgroundColor(0xfff5f5f5);
        ((LinearLayout) (obj)).setOrientation(1);
        activity.setContentView(((View) (obj)));
        llTitle = new TitleLayout(getContext());
        int i = R.getBitmapRes(getContext(), "title_back");
        if (i > 0)
        {
            llTitle.setBackgroundResource(i);
        }
        llTitle.getBtnBack().setOnClickListener(this);
        i = R.getStringRes(getContext(), "multi_share");
        if (i > 0)
        {
            llTitle.getTvTitle().setText(i);
        }
        llTitle.getBtnRight().setVisibility(0);
        i = R.getStringRes(getContext(), "finish");
        if (i > 0)
        {
            llTitle.getBtnRight().setText(i);
        }
        llTitle.getBtnRight().setOnClickListener(this);
        llTitle.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        ((LinearLayout) (obj)).addView(llTitle);
        FrameLayout framelayout = new FrameLayout(getContext());
        Object obj1 = new android.widget.LinearLayout.LayoutParams(-1, -2);
        obj1.weight = 1.0F;
        framelayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        ((LinearLayout) (obj)).addView(framelayout);
        obj = new PullToRefreshView(getContext());
        ((PullToRefreshView) (obj)).setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        framelayout.addView(((View) (obj)));
        adapter = new FollowAdapter(((PullToRefreshView) (obj)));
        adapter.setPlatform(platform);
        ((PullToRefreshView) (obj)).setAdapter(adapter);
        adapter.getListView().setOnItemClickListener(this);
        obj1 = new ImageView(getContext());
        i = R.getBitmapRes(getContext(), "title_shadow");
        if (i > 0)
        {
            ((ImageView) (obj1)).setBackgroundResource(i);
        }
        ((ImageView) (obj1)).setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -2));
        framelayout.addView(((View) (obj1)));
        ((PullToRefreshView) (obj)).performPulling(true);
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        boolean flag = false;
        if (isRadioMode(platform.getName()))
        {
            if (lastPosition >= 0)
            {
                adapter.getItem(lastPosition).checked = false;
            }
            lastPosition = i;
        }
        adapterview = adapter.getItem(i);
        if (!((cn.sharesdk.onekeyshare.FollowerListFakeActivity.Following) (adapterview)).checked)
        {
            flag = true;
        }
        adapterview.checked = flag;
        adapter.notifyDataSetChanged();
    }
}
