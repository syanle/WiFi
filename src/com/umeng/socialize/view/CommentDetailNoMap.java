// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socom.net.p;

// Referenced classes of package com.umeng.socialize.view:
//            p

public class CommentDetailNoMap extends Activity
{

    private UMComment a;
    private Button b;
    private Button c;
    private TextView d;

    public CommentDetailNoMap()
    {
    }

    private void a()
    {
        b = (Button)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        b.setOnClickListener(new com.umeng.socialize.view.p(this));
        c = (Button)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        c.setVisibility(8);
        d = (TextView)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"));
        d.setText("\u8BC4\u8BBA");
    }

    private void b()
    {
        View view = findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item"));
        view.setBackgroundDrawable(null);
        TextView textview = (TextView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_name"));
        TextView textview1 = (TextView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_content"));
        ImageView imageview = (ImageView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_avatar"));
        int i = ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar");
        if (!TextUtils.isEmpty(a.mUserIcon))
        {
            p.a(this, imageview, a.mUserIcon, false, null, null, SocializeConstants.ROUNDER_ICON);
        } else
        {
            imageview.setImageResource(i);
        }
        textview.setText(a.mUname);
        textview1.setText(a.mText);
        ((TextView)view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_time"))).setText(SocializeUtils.beforeData(this, a.mDt));
        view = view.findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_has_location"));
        if (a.mLocation == null)
        {
            view.setVisibility(4);
            return;
        } else
        {
            view.setVisibility(0);
            return;
        }
    }

    public void finish()
    {
        super.finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_comment_detail_nomap"));
        a();
        a = (UMComment)getIntent().getExtras().get("Comment");
        b();
    }
}
