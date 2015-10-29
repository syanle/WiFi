// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.PaintDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.sdkutil.HttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            IUiListener, Tencent, UiError

class userListener
    implements IUiListener
{

    private String KEY_SHOWFEED;
    private String KEY_WORDING;
    private String SEND_INSTALL_APP_FEED_CGI;
    final Tencent this$0;
    IUiListener userListener;

    private View createContentView(Context context, Drawable drawable, String s, android.view.ener ener, android.view.ener ener1)
    {
        Object obj = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(((DisplayMetrics) (obj)));
        float f = ((DisplayMetrics) (obj)).density;
        obj = new RelativeLayout(context);
        Object obj1 = new ImageView(context);
        ((ImageView) (obj1)).setImageDrawable(drawable);
        ((ImageView) (obj1)).setScaleType(android.widget.y);
        ((ImageView) (obj1)).setId(1);
        int i = (int)(60F * f);
        int j = (int)(60F * f);
        int k = (int)(14F * f);
        k = (int)(18F * f);
        int l = (int)(6F * f);
        int i1 = (int)(18F * f);
        drawable = new android.widget.<init>(i, j);
        drawable.addRule(9);
        drawable.setMargins(0, k, l, i1);
        ((RelativeLayout) (obj)).addView(((View) (obj1)), drawable);
        drawable = new TextView(context);
        drawable.setText(s);
        drawable.setTextSize(14F);
        drawable.setGravity(3);
        drawable.setIncludeFontPadding(false);
        drawable.setPadding(0, 0, 0, 0);
        drawable.setLines(2);
        drawable.setId(5);
        drawable.setMinWidth((int)(185F * f));
        s = new android.widget.<init>(-2, -2);
        s.addRule(1, 1);
        s.addRule(6, 1);
        i = (int)(10F * f);
        s.setMargins(0, 0, (int)(5F * f), 0);
        ((RelativeLayout) (obj)).addView(drawable, s);
        drawable = new View(context);
        drawable.setBackgroundColor(Color.rgb(214, 214, 214));
        drawable.setId(3);
        s = new android.widget.<init>(-2, 2);
        s.addRule(3, 1);
        s.addRule(5, 1);
        s.addRule(7, 5);
        s.setMargins(0, 0, 0, (int)(12F * f));
        ((RelativeLayout) (obj)).addView(drawable, s);
        drawable = new LinearLayout(context);
        s = new android.widget.<init>(-2, -2);
        s.addRule(5, 1);
        s.addRule(7, 5);
        s.addRule(3, 3);
        obj1 = new Button(context);
        ((Button) (obj1)).setText("\u8DF3\u8FC7");
        ((Button) (obj1)).setBackgroundDrawable(getDrawable("buttonNegt.png", context));
        ((Button) (obj1)).setTextColor(Color.rgb(36, 97, 131));
        ((Button) (obj1)).setTextSize(20F);
        ((Button) (obj1)).setOnClickListener(ener1);
        ((Button) (obj1)).setId(4);
        ener1 = new android.widget.nit>(0, (int)(45F * f));
        ener1.ghtMargin = (int)(14F * f);
        ener1.ftMargin = (int)(4F * f);
        ener1.ight = 1.0F;
        drawable.addView(((View) (obj1)), ener1);
        ener1 = new Button(context);
        ener1.setText("\u786E\u5B9A");
        ener1.setTextSize(20F);
        ener1.setTextColor(Color.rgb(255, 255, 255));
        ener1.setBackgroundDrawable(getDrawable("buttonPost.png", context));
        ener1.setOnClickListener(ener);
        context = new android.widget.nit>(0, (int)(45F * f));
        context.ight = 1.0F;
        context.ghtMargin = (int)(4F * f);
        drawable.addView(ener1, context);
        ((RelativeLayout) (obj)).addView(drawable, s);
        context = new android.widget.it>((int)(279F * f), (int)(163F * f));
        ((RelativeLayout) (obj)).setPadding((int)(14F * f), 0, (int)(12F * f), (int)(12F * f));
        ((RelativeLayout) (obj)).setLayoutParams(context);
        ((RelativeLayout) (obj)).setBackgroundColor(Color.rgb(247, 251, 247));
        context = new PaintDrawable(Color.rgb(247, 251, 247));
        context.setCornerRadius(f * 5F);
        ((RelativeLayout) (obj)).setBackgroundDrawable(context);
        return ((View) (obj));
    }

    private Drawable getDrawable(String s, Context context)
    {
        context = context.getApplicationContext().getAssets();
        context = context.open(s);
        if (context == null)
        {
            return null;
        }
        if (!s.endsWith(".9.png")) goto _L2; else goto _L1
_L1:
        s = BitmapFactory.decodeStream(context);
        if (s == null) goto _L4; else goto _L3
_L3:
        context = s.getNinePatchChunk();
        NinePatch.isNinePatchChunk(context);
        s = new NinePatchDrawable(s, context, new Rect(), null);
        return s;
        context;
        s = null;
_L6:
        context.printStackTrace();
        return s;
_L4:
        return null;
_L2:
        s = Drawable.createFromStream(context, s);
        context.close();
        return s;
        context;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void showFeedConfrimDialog(String s, final IUiListener userListener, final JSONObject response)
    {
        Drawable drawable = null;
        final Dialog final_dialog = new Dialog(Tencent.access$200(Tencent.this));
        final_dialog.requestWindowFeature(1);
        Object obj1 = Tencent.access$200(Tencent.this).getPackageManager();
        class _cls1 extends ButtonListener
        {

            final Tencent.FeedConfirmListener this$1;
            final JSONObject val$response;
            final IUiListener val$userListener;

            public void onClick(View view)
            {
                sendFeedConfirmCgi();
                if (dialog != null && dialog.isShowing())
                {
                    dialog.dismiss();
                }
                if (userListener != null)
                {
                    userListener.onComplete(response);
                }
            }

            _cls1(JSONObject jsonobject)
            {
                this$1 = Tencent.FeedConfirmListener.this;
                userListener = iuilistener;
                response = jsonobject;
                class ButtonListener
                    implements android.view.View.OnClickListener
                {

                    Dialog dialog;
                    final Tencent.FeedConfirmListener this$1;

                        ButtonListener(Dialog dialog1)
                        {
                            this$1 = Tencent.FeedConfirmListener.this;
                            super();
                            dialog = dialog1;
                        }
                }

                super(final_dialog);
            }
        }

        class _cls2 extends ButtonListener
        {

            final Tencent.FeedConfirmListener this$1;
            final JSONObject val$response;
            final IUiListener val$userListener;

            public void onClick(View view)
            {
                if (dialog != null && dialog.isShowing())
                {
                    dialog.dismiss();
                }
                if (userListener != null)
                {
                    userListener.onComplete(response);
                }
            }

            _cls2(JSONObject jsonobject)
            {
                this$1 = Tencent.FeedConfirmListener.this;
                userListener = iuilistener;
                response = jsonobject;
                super(final_dialog);
            }
        }

        class _cls3
            implements android.content.DialogInterface.OnCancelListener
        {

            final Tencent.FeedConfirmListener this$1;
            final JSONObject val$response;
            final IUiListener val$userListener;

            public void onCancel(DialogInterface dialoginterface)
            {
                if (userListener != null)
                {
                    userListener.onComplete(response);
                }
            }

            _cls3()
            {
                this$1 = Tencent.FeedConfirmListener.this;
                userListener = iuilistener;
                response = jsonobject;
                super();
            }
        }

        Object obj;
        ColorDrawable colordrawable;
        try
        {
            obj = ((PackageManager) (obj1)).getPackageInfo(Tencent.access$200(Tencent.this).getPackageName(), 0);
        }
        catch (android.content.pm.xception xception)
        {
            xception.printStackTrace();
            xception = null;
        }
        if (obj != null)
        {
            drawable = ((PackageInfo) (obj)).applicationInfo.loadIcon(((PackageManager) (obj1)));
        }
        obj = new _cls1(response);
        obj1 = new _cls2(response);
        colordrawable = new ColorDrawable();
        colordrawable.setAlpha(0);
        final_dialog.getWindow().setBackgroundDrawable(colordrawable);
        final_dialog.setContentView(createContentView(Tencent.access$200(Tencent.this), drawable, s, ((android.view.ener.this._cls0) (obj)), ((android.view.ener.this._cls0) (obj1))));
        final_dialog.setOnCancelListener(new _cls3());
        if (Tencent.access$200(Tencent.this) != null && !Tencent.access$200(Tencent.this).isFinishing())
        {
            final_dialog.show();
        }
    }

    public void onCancel()
    {
        if (userListener != null)
        {
            userListener.onCancel();
        }
    }

    public void onComplete(JSONObject jsonobject)
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = false;
        if (jsonobject == null) goto _L2; else goto _L1
_L1:
        if (jsonobject == null) goto _L4; else goto _L3
_L3:
        String s = "";
        if (jsonobject.getInt(KEY_SHOWFEED) == 1)
        {
            flag = true;
        }
        flag1 = flag;
        String s1 = jsonobject.getString(KEY_WORDING);
        s = s1;
_L10:
        s = URLDecoder.decode(s);
        Log.d("TAG", (new StringBuilder()).append(" WORDING = ").append(s).append("xx").toString());
        if (!flag || TextUtils.isEmpty(s)) goto _L6; else goto _L5
_L5:
        showFeedConfrimDialog(s, userListener, jsonobject);
_L4:
        return;
_L6:
        if (userListener == null) goto _L4; else goto _L7
_L7:
        userListener.onComplete(jsonobject);
        return;
_L2:
        if (userListener == null) goto _L4; else goto _L8
_L8:
        userListener.onComplete(null);
        return;
        JSONException jsonexception;
        jsonexception;
        flag = flag1;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void onError(UiError uierror)
    {
        if (userListener != null)
        {
            userListener.onError(uierror);
        }
    }

    protected void sendFeedConfirmCgi()
    {
        android.os.Bundle bundle = composeActivityParams();
        HttpUtils.requestAsync(Tencent.access$300(Tencent.this), Tencent.access$200(Tencent.this), SEND_INSTALL_APP_FEED_CGI, bundle, "POST", null);
    }

    public Exception(IUiListener iuilistener)
    {
        this$0 = Tencent.this;
        super();
        KEY_SHOWFEED = "sendinstall";
        KEY_WORDING = "installwording";
        SEND_INSTALL_APP_FEED_CGI = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";
        userListener = iuilistener;
    }
}
