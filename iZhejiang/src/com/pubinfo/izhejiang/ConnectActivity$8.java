// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cat.list.ImageDownloader;
import com.cat.list.OnImageDownload;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class val.logourl
    implements Runnable
{

    final ConnectActivity this$0;
    private final String val$content;
    private final int val$drawable;
    private final int val$i;
    private final String val$logourl;
    private final String val$msg;
    private final String val$type;

    public void run()
    {
        hideWifiLoading();
        iv_tag.setVisibility(0);
        iv_tag.setBackgroundDrawable(null);
        iv_tag.setImageResource(val$drawable);
        tv_msg.setText(val$msg);
        btn_commit.setVisibility(0);
        btn_commit.setText(val$content);
        if (val$i != 0) goto _L2; else goto _L1
_L1:
        tag_yesno = "yes";
        if (!val$type.equals("1")) goto _L4; else goto _L3
_L3:
        rl_logo.setBackgroundDrawable(null);
        rl_logo.setBackgroundResource(0x7f020026);
        iv_type.setBackgroundDrawable(null);
        iv_type.setBackgroundResource(0x7f02002e);
        tv_safety.setBackgroundDrawable(null);
        tv_safety.setBackgroundResource(0x7f02002d);
_L6:
        return;
_L4:
        if (val$type.equals("2"))
        {
            tv_safety.setBackgroundDrawable(null);
            tv_safety.setBackgroundResource(0x7f02002d);
            if (val$logourl != null && !val$logourl.equals(""))
            {
                rl_logo.setTag(val$logourl);
                if (mDownloader == null)
                {
                    mDownloader = new ImageDownloader();
                }
                mDownloader.imageDownload(val$logourl, rl_logo, "/Awifi", ConnectActivity.this, new OnImageDownload() {

                    final ConnectActivity._cls8 this$1;

                    public void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout)
                    {
                        s = (RelativeLayout)rl_logo.findViewWithTag(s);
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
                this$1 = ConnectActivity._cls8.this;
                super();
            }
                });
                return;
            } else
            {
                rl_logo.setBackgroundDrawable(null);
                rl_logo.setBackgroundResource(0x7f020031);
                iv_type.setBackgroundDrawable(null);
                iv_type.setBackgroundResource(0x7f02002e);
                return;
            }
        }
        if (val$type.equals("3"))
        {
            rl_logo.setBackgroundDrawable(null);
            rl_logo.setBackgroundResource(0x7f02002b);
            iv_type.setBackgroundDrawable(null);
            iv_type.setBackgroundResource(0x7f02002f);
            tv_safety.setBackgroundDrawable(null);
            tv_safety.setBackgroundResource(0x7f020032);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (val$i == 1)
        {
            tag_yesno = "no";
            rl_logo.setBackgroundDrawable(null);
            rl_logo.setBackgroundResource(0x7f020028);
            iv_type.setBackgroundDrawable(null);
            iv_type.setBackgroundResource(0x7f020030);
            tv_safety.setBackgroundDrawable(null);
            tv_safety.setBackgroundResource(0x7f020032);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }


    _cls1.this._cls1()
    {
        this$0 = final_connectactivity;
        val$drawable = j;
        val$msg = s;
        val$content = s1;
        val$i = k;
        val$type = s2;
        val$logourl = String.this;
        super();
    }
}
