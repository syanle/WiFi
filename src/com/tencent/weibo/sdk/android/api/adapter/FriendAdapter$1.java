// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.adapter;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.model.Firend;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

// Referenced classes of package com.tencent.weibo.sdk.android.api.adapter:
//            FriendAdapter

class val.t extends AsyncTask
{

    final FriendAdapter this$0;
    private final int val$childPosition;
    private final int val$groupPosition;
    private final View val$t;

    protected transient Bitmap doInBackground(String as[])
    {
        try
        {
            Log.d("image urel", (new StringBuilder(String.valueOf(((Firend)getChild(val$groupPosition, val$childPosition)).getHeadurl()))).toString());
            as = new URL(((Firend)getChild(val$groupPosition, val$childPosition)).getHeadurl());
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
        ImageView imageview = (ImageView)((LinearLayout)val$t.getTag()).findViewById(4502);
        if (bitmap == null)
        {
            imageview.setImageDrawable(BackGroudSeletor.getdrawble("logo", FriendAdapter.access$0(FriendAdapter.this)));
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

    ()
    {
        this$0 = final_friendadapter;
        val$groupPosition = i;
        val$childPosition = j;
        val$t = View.this;
        super();
    }
}
