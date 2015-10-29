// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.google.android.maps.OverlayItem;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.view.map.UItemizedOverlay;
import com.umeng.socom.net.p;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            o

public class CommentDetail extends MapActivity
{

    private UMComment mComment;
    private MapView mMapView;
    private Button mTitleLeftBt;
    private TextView mTitleMidTv;
    private Button mTitleRightBt;

    public CommentDetail()
    {
    }

    private void initCommentInfo()
    {
        View view = findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item"));
        view.setBackgroundDrawable(null);
        TextView textview = (TextView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_name"));
        TextView textview1 = (TextView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_content"));
        ImageView imageview = (ImageView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_avatar"));
        int i = ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar");
        if (!TextUtils.isEmpty(mComment.mUserIcon))
        {
            p.a(this, imageview, mComment.mUserIcon, false, null, null, SocializeConstants.ROUNDER_ICON);
        } else
        {
            imageview.setImageResource(i);
        }
        textview.setText(mComment.mUname);
        textview1.setText(mComment.mText);
        ((TextView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_time"))).setText(SocializeUtils.beforeData(this, mComment.mDt));
        view = view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_has_location"));
        if (mComment.mLocation == null)
        {
            view.setVisibility(4);
            return;
        } else
        {
            view.setVisibility(0);
            return;
        }
    }

    private void initMapView(UMLocation umlocation)
    {
        mMapView = (MapView)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_map"));
        List list = mMapView.getOverlays();
        UItemizedOverlay uitemizedoverlay = new UItemizedOverlay(getResources().getDrawable(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_location_mark")), this);
        MapController mapcontroller = mMapView.getController();
        if (umlocation != null)
        {
            umlocation = new GeoPoint((int)(umlocation.getLatitude() * 1000000D), (int)(umlocation.getLongitude() * 1000000D));
            uitemizedoverlay.addOverlay(new OverlayItem(umlocation, mComment.mUname, null));
            list.add(uitemizedoverlay);
            mapcontroller.setCenter(umlocation);
            mapcontroller.setZoom(15);
            return;
        } else
        {
            mapcontroller.setZoom(4);
            return;
        }
    }

    private void initView()
    {
        mTitleLeftBt = (Button)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        mTitleLeftBt.setOnClickListener(new o(this));
        mTitleRightBt = (Button)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        mTitleRightBt.setVisibility(8);
        mTitleMidTv = (TextView)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"));
        mTitleMidTv.setText("\u8BC4\u8BBA");
    }

    public void finish()
    {
        super.finish();
    }

    protected boolean isRouteDisplayed()
    {
        return false;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_comment_detail"));
        initView();
        mComment = (UMComment)getIntent().getExtras().get("Comment");
        initCommentInfo();
        bundle = mComment.mLocation;
        if (SocializeUtils.isGoogleMapExist() && bundle != null)
        {
            findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_map_invisable")).setVisibility(8);
            initMapView(bundle);
            return;
        } else
        {
            findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_map")).setVisibility(8);
            return;
        }
    }
}
