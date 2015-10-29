// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.QQToken;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            KeyboardDetectorRelativeLayout, JsonUtil

public class PKDialog extends Dialog
    implements KeyboardDetectorRelativeLayout.IKeyboardChanged
{

    public static final String CANCEL_URI = "auth://cancel";
    public static final String CLOSE_URI = "auth://close";
    public static final String DOWNLOAD_URI = "download://";
    private static final int MSG_CANCEL = 2;
    private static final int MSG_COMPLETE = 1;
    private static final int MSG_ON_LOAD = 4;
    private static final int MSG_SHOW_PROCESS = 5;
    private static final int MSG_SHOW_TIPS = 3;
    public static final String REDIRECT_BROWSER_URI = "auth://browser";
    private static final String TAG = com/tencent/sdkutil/PKDialog.getName();
    private static final int WEBVIEW_HEIGHT = 185;
    static Toast sToast = null;
    private static WeakReference sWeakContext;
    private KeyboardDetectorRelativeLayout mFlMain;
    private Handler mHandler;
    private OnTimeListener mListener;
    private String mUrl;
    private WebView mWebView;
    private int mWebviewHeight;

    public PKDialog(Context context, String s, String s1, IUiListener iuilistener, QQToken qqtoken)
    {
        super(context, 0x1030010);
        sWeakContext = new WeakReference(context);
        mUrl = s1;
        mListener = new OnTimeListener(context, s, s1, qqtoken.getAppId(), iuilistener);
        mHandler = new THandler(mListener, context.getMainLooper());
        mWebviewHeight = Math.round(185F * context.getResources().getDisplayMetrics().density);
        Log.e(TAG, (new StringBuilder()).append("density=").append(context.getResources().getDisplayMetrics().density).append("; webviewHeight=").append(mWebviewHeight).toString());
    }

    private void createViews()
    {
        mFlMain = new KeyboardDetectorRelativeLayout((Context)sWeakContext.get());
        mFlMain.setBackgroundColor(0x66000000);
        mFlMain.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        mWebView = new WebView((Context)sWeakContext.get());
        mWebView.setBackgroundColor(0);
        mWebView.setBackgroundDrawable(null);
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            try
            {
                android/view/View.getMethod("setLayerType", new Class[] {
                    Integer.TYPE, android/graphics/Paint
                }).invoke(mWebView, new Object[] {
                    Integer.valueOf(1), new Paint()
                });
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, mWebviewHeight);
        layoutparams.addRule(13, -1);
        mWebView.setLayoutParams(layoutparams);
        mFlMain.addView(mWebView);
        mFlMain.addKeyboardStateChangedListener(this);
        setContentView(mFlMain);
    }

    private void initViews()
    {
        mWebView.setVerticalScrollBarEnabled(false);
        mWebView.setHorizontalScrollBarEnabled(false);
        mWebView.setWebViewClient(new FbWebViewClient(null));
        mWebView.setWebChromeClient(new WebChromeClient());
        mWebView.clearFormData();
        WebSettings websettings = mWebView.getSettings();
        websettings.setSavePassword(false);
        websettings.setSaveFormData(false);
        websettings.setCacheMode(-1);
        websettings.setNeedInitialFocus(false);
        websettings.setBuiltInZoomControls(true);
        websettings.setSupportZoom(true);
        websettings.setRenderPriority(android.webkit.WebSettings.RenderPriority.HIGH);
        websettings.setJavaScriptEnabled(true);
        if (sWeakContext != null && sWeakContext.get() != null)
        {
            websettings.setDatabaseEnabled(true);
            websettings.setDatabasePath(((Context)sWeakContext.get()).getApplicationContext().getDir("databases", 0).getPath());
        }
        websettings.setDomStorageEnabled(true);
        try
        {
            android/webkit/WebView.getMethod("addJavascriptInterface", new Class[] {
                java/lang/Object, java/lang/String
            }).invoke(mWebView, new Object[] {
                new JsListener(null), "sdk_js_if"
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, nosuchmethodexception.getMessage());
            nosuchmethodexception.printStackTrace();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e(TAG, illegalargumentexception.getMessage());
            illegalargumentexception.printStackTrace();
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            Log.e(TAG, illegalaccessexception.getMessage());
            illegalaccessexception.printStackTrace();
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Log.e(TAG, invocationtargetexception.getMessage());
            invocationtargetexception.printStackTrace();
        }
        catch (Exception exception)
        {
            Log.e(TAG, exception.getMessage());
        }
        mWebView.clearView();
        mWebView.loadUrl(mUrl);
        mWebView.getSettings().setSavePassword(false);
    }

    private static void showProcessDialog(Context context, String s)
    {
        if (context != null && s != null) goto _L2; else goto _L1
_L1:
        int i;
        return;
_L2:
        if ((i = JsonUtil.parseJson(s).getInt("action")) != 1) goto _L1; else goto _L3
_L3:
        return;
        context;
        context.printStackTrace();
        return;
    }

    private static void showTips(Context context, String s)
    {
        int i;
        try
        {
            s = JsonUtil.parseJson(s);
            i = s.getInt("type");
            s = s.getString("msg");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        if (sToast != null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        sToast = Toast.makeText(context, s, 0);
_L2:
        sToast.show();
        return;
        sToast.setView(sToast.getView());
        sToast.setText(s);
        sToast.setDuration(0);
        if (true) goto _L2; else goto _L1
_L1:
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        if (sToast != null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        sToast = Toast.makeText(context, s, 1);
_L4:
        sToast.show();
        return;
        sToast.setView(sToast.getView());
        sToast.setText(s);
        sToast.setDuration(1);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void callJs(String s, String s1)
    {
        s = (new StringBuilder()).append("javascript:").append(s).append("(").append(s1).append(")").toString();
        mWebView.loadUrl(s);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setSoftInputMode(16);
        getWindow().setSoftInputMode(1);
        createViews();
        initViews();
    }

    public void onKeyboardHidden()
    {
        mWebView.getLayoutParams().height = mWebviewHeight;
        Log.e(TAG, "keyboard hide");
    }

    public void onKeyboardShown(int i)
    {
        if (sWeakContext != null && sWeakContext.get() != null)
        {
            if (i < mWebviewHeight && 2 == ((Context)sWeakContext.get()).getResources().getConfiguration().orientation)
            {
                mWebView.getLayoutParams().height = i;
            } else
            {
                mWebView.getLayoutParams().height = mWebviewHeight;
            }
        }
        Log.e(TAG, "keyboard show");
    }









    private class OnTimeListener
        implements IUiListener
    {

        private String mAction;
        String mAppid;
        String mUrl;
        private WeakReference mWeakCtx;
        private IUiListener mWeakL;

        private void onComplete(String s)
        {
            try
            {
                onComplete(JsonUtil.parseJson(s));
                return;
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
            onError(new UiError(-4, "\u670D\u52A1\u5668\u8FD4\u56DE\u6570\u636E\u683C\u5F0F\u6709\u8BEF!", s));
        }

        public void onCancel()
        {
            if (mWeakL != null)
            {
                mWeakL.onCancel();
                mWeakL = null;
            }
        }

        public void onComplete(JSONObject jsonobject)
        {
            ReportManager.getInstance().report((Context)mWeakCtx.get(), (new StringBuilder()).append(mAction).append("_H5").toString(), SystemClock.elapsedRealtime(), 0L, 0L, jsonobject.optInt("ret", -6), mAppid, mUrl, "1000067");
            if (mWeakL != null)
            {
                mWeakL.onComplete(jsonobject);
                mWeakL = null;
            }
        }

        public void onError(UiError uierror)
        {
            String s;
            if (uierror.errorMessage != null)
            {
                s = (new StringBuilder()).append(uierror.errorMessage).append(mUrl).toString();
            } else
            {
                s = mUrl;
            }
            ReportManager.getInstance().report((Context)mWeakCtx.get(), (new StringBuilder()).append(mAction).append("_H5").toString(), SystemClock.elapsedRealtime(), 0L, 0L, uierror.errorCode, mAppid, s, "1000067");
            if (mWeakL != null)
            {
                mWeakL.onError(uierror);
                mWeakL = null;
            }
        }


        public OnTimeListener(Context context, String s, String s1, String s2, IUiListener iuilistener)
        {
            mWeakCtx = new WeakReference(context);
            mAction = s;
            mUrl = s1;
            mAppid = s2;
            mWeakL = iuilistener;
        }
    }


    private class THandler extends Handler
    {

        private OnTimeListener mL;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 1 5: default 40
        //                       1 41
        //                       2 56
        //                       3 64
        //                       4 40
        //                       5 99;
               goto _L1 _L2 _L3 _L4 _L1 _L5
_L1:
            return;
_L2:
            mL.onComplete((String)message.obj);
            return;
_L3:
            mL.onCancel();
            return;
_L4:
            if (PKDialog.sWeakContext != null && PKDialog.sWeakContext.get() != null)
            {
                PKDialog.showTips((Context)PKDialog.sWeakContext.get(), (String)message.obj);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L5:
            if (PKDialog.sWeakContext != null && PKDialog.sWeakContext.get() != null)
            {
                PKDialog.showProcessDialog((Context)PKDialog.sWeakContext.get(), (String)message.obj);
                return;
            }
            if (true) goto _L1; else goto _L6
_L6:
        }

        public THandler(OnTimeListener ontimelistener, Looper looper)
        {
            super(looper);
            mL = ontimelistener;
        }
    }


    private class FbWebViewClient extends WebViewClient
    {

        final PKDialog this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            mWebView.setVisibility(0);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            Log.d(PKDialog.TAG, (new StringBuilder()).append("Webview loading URL: ").append(s).toString());
            super.onPageStarted(webview, s, bitmap);
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            super.onReceivedError(webview, i, s, s1);
            mListener.onError(new UiError(i, s, s1));
            if (PKDialog.sWeakContext != null && PKDialog.sWeakContext.get() != null)
            {
                Toast.makeText((Context)PKDialog.sWeakContext.get(), "\u7F51\u7EDC\u8FDE\u63A5\u5F02\u5E38\u6216\u7CFB\u7EDF\u9519\u8BEF", 0).show();
            }
            dismiss();
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            sslerrorhandler.proceed();
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            Log.d(PKDialog.TAG, (new StringBuilder()).append("Redirect URL: ").append(s).toString());
            if (s.startsWith(ServerSetting.getInstance().getSettingUrl((Context)PKDialog.sWeakContext.get(), 1)))
            {
                mListener.onComplete(Util.parseUrlToJson(s));
                dismiss();
                return true;
            }
            if (s.startsWith("auth://cancel"))
            {
                mListener.onCancel();
                dismiss();
                return true;
            }
            if (s.startsWith("auth://close"))
            {
                dismiss();
                return true;
            } else
            {
                return false;
            }
        }

        private FbWebViewClient()
        {
            this$0 = PKDialog.this;
            super();
        }

        FbWebViewClient(_cls1 _pcls1)
        {
            this();
        }
    }


    private class JsListener
    {

        final PKDialog this$0;

        public void onCancel(String s)
        {
            mHandler.obtainMessage(2, s).sendToTarget();
            dismiss();
        }

        public void onComplete(String s)
        {
            mHandler.obtainMessage(1, s).sendToTarget();
            Log.e("onComplete", s);
            dismiss();
        }

        public void onLoad(String s)
        {
            mHandler.obtainMessage(4, s).sendToTarget();
        }

        public void showMsg(String s)
        {
            mHandler.obtainMessage(3, s).sendToTarget();
        }

        private JsListener()
        {
            this$0 = PKDialog.this;
            super();
        }

        JsListener(_cls1 _pcls1)
        {
            this();
        }
    }

}
