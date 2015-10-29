// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.QQToken;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            BrowserAuth, Util, HttpUtils, JsonUtil

public class TDialog extends Dialog
{

    public static final String CANCEL_URI = "auth://cancel";
    public static final String CLOSE_URI = "auth://close";
    static final String DISPLAY_STRING = "touch";
    public static final String DOWNLOAD_URI = "download://";
    static final android.widget.FrameLayout.LayoutParams FILL = new android.widget.FrameLayout.LayoutParams(-1, -1);
    private static final int MSG_CANCEL = 2;
    private static final int MSG_COMPLETE = 1;
    private static final int MSG_ON_LOAD = 4;
    private static final int MSG_SHOW_PROCESS = 5;
    private static final int MSG_SHOW_TIPS = 3;
    public static final String REDIRECT_BROWSER_URI = "auth://browser";
    private static final String TAG = "TDialog";
    static Toast sToast = null;
    private static WeakReference sWeakContext;
    private static WeakReference sWeakProcessBar;
    private static WeakReference sWeakProcessDialog;
    private boolean isBrowserStarted;
    private IUiListener listener;
    private String mAction;
    private FrameLayout mFlMain;
    private LinearLayout mFlProcess;
    private Handler mHandler;
    private OnTimeListener mListener;
    private ProgressBar mPbProcess;
    private FrameLayout mProcessContainer;
    private QQToken mQQToken;
    private String mUrl;
    private WebView mWebView;

    public TDialog(Context context, String s, String s1, IUiListener iuilistener, QQToken qqtoken)
    {
        super(context, 0x1030010);
        isBrowserStarted = false;
        mQQToken = null;
        sWeakContext = new WeakReference(context);
        mUrl = s1;
        mListener = new OnTimeListener(context, s, s1, qqtoken.getAppId(), iuilistener);
        mHandler = new THandler(mListener, context.getMainLooper());
        listener = iuilistener;
        mQQToken = qqtoken;
        mAction = s;
    }

    private boolean authWithBrowser()
    {
        boolean flag1 = false;
        Object obj = BrowserAuth.getInstance();
        String s = ((BrowserAuth) (obj)).makeKey();
        Object obj1 = new BrowserAuth.Auth();
        obj1.listener = listener;
        obj1.dialog = this;
        obj1.key = s;
        obj = ((BrowserAuth) (obj)).set(((BrowserAuth.Auth) (obj1)));
        obj1 = mUrl.substring(0, mUrl.indexOf("?"));
        Log.v("rootUrl", ((String) (obj1)));
        Bundle bundle = Util.parseUrl(mUrl);
        bundle.putString("token_key", s);
        bundle.putString("serial", ((String) (obj)));
        bundle.putString("browser", "1");
        mUrl = (new StringBuilder()).append(((String) (obj1))).append("?").append(Util.encodeUrl(bundle)).toString();
        boolean flag = flag1;
        if (sWeakContext != null)
        {
            flag = flag1;
            if (sWeakContext.get() != null)
            {
                flag = (new HttpUtils((Context)sWeakContext.get(), mQQToken)).openBrowser(mUrl);
            }
        }
        return flag;
    }

    private void createProgress()
    {
        mPbProcess = new ProgressBar((Context)sWeakContext.get());
        Object obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        mPbProcess.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        mFlProcess = new LinearLayout((Context)sWeakContext.get());
        obj = null;
        if (mAction.equals("action_login"))
        {
            Object obj1 = new android.widget.LinearLayout.LayoutParams(-2, -2);
            obj1.gravity = 16;
            obj1.leftMargin = 5;
            obj = new TextView((Context)sWeakContext.get());
            if (Locale.getDefault().getLanguage().equals("zh"))
            {
                ((TextView) (obj)).setText("\u767B\u5F55\u4E2D...");
            } else
            {
                ((TextView) (obj)).setText("Logging in...");
            }
            ((TextView) (obj)).setTextColor(Color.rgb(255, 255, 255));
            ((TextView) (obj)).setTextSize(18F);
            ((TextView) (obj)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        }
        obj1 = new android.widget.FrameLayout.LayoutParams(-2, -2);
        obj1.gravity = 17;
        mFlProcess.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        mFlProcess.addView(mPbProcess);
        if (obj != null)
        {
            mFlProcess.addView(((View) (obj)));
        }
        mProcessContainer = new FrameLayout((Context)sWeakContext.get());
        obj = new android.widget.FrameLayout.LayoutParams(-1, -2);
        obj.leftMargin = 80;
        obj.rightMargin = 80;
        obj.topMargin = 40;
        obj.bottomMargin = 40;
        obj.gravity = 17;
        mProcessContainer.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        mProcessContainer.setBackgroundResource(0x1080000);
        mProcessContainer.addView(mFlProcess);
    }

    private void createViews()
    {
        createProgress();
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
        mWebView = new WebView((Context)sWeakContext.get());
        mWebView.setLayoutParams(layoutparams);
        mFlMain = new FrameLayout((Context)sWeakContext.get());
        layoutparams.gravity = 17;
        mFlMain.setLayoutParams(layoutparams);
        mFlMain.addView(mWebView);
        mFlMain.addView(mProcessContainer);
        sWeakProcessBar = new WeakReference(mProcessContainer);
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
            Log.e("TDialog", nosuchmethodexception.getMessage());
            nosuchmethodexception.printStackTrace();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e("TDialog", illegalargumentexception.getMessage());
            illegalargumentexception.printStackTrace();
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            Log.e("TDialog", illegalaccessexception.getMessage());
            illegalaccessexception.printStackTrace();
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Log.e("TDialog", invocationtargetexception.getMessage());
            invocationtargetexception.printStackTrace();
        }
        catch (Exception exception)
        {
            Log.e("TDialog", exception.getMessage());
        }
        mWebView.loadUrl(mUrl);
        mWebView.setLayoutParams(FILL);
        mWebView.setVisibility(4);
        mWebView.getSettings().setSavePassword(false);
    }

    private static void showProcessDialog(Context context, String s)
    {
        if (context != null && s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        try
        {
            s = JsonUtil.parseJson(s);
            i = s.getInt("action");
            s = s.getString("msg");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        if (i != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (sWeakProcessDialog == null)
        {
            context = new ProgressDialog(context);
            context.setMessage(s);
            sWeakProcessDialog = new WeakReference(context);
            context.show();
            return;
        }
        ((ProgressDialog)sWeakProcessDialog.get()).setMessage(s);
        if (((ProgressDialog)sWeakProcessDialog.get()).isShowing()) goto _L1; else goto _L3
_L3:
        ((ProgressDialog)sWeakProcessDialog.get()).show();
        return;
        if (i != 0) goto _L1; else goto _L4
_L4:
        if (sWeakProcessDialog == null || sWeakProcessDialog.get() == null || !((ProgressDialog)sWeakProcessDialog.get()).isShowing()) goto _L1; else goto _L5
_L5:
        ((ProgressDialog)sWeakProcessDialog.get()).dismiss();
        sWeakProcessDialog = null;
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
        s = (new StringBuilder()).append("javascript:").append(s).append("(").append(s1).append(");void(").append(System.currentTimeMillis()).append(");").toString();
        mWebView.loadUrl(s);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        createViews();
        initViews();
    }

    protected void onStop()
    {
        if (!isBrowserStarted)
        {
            mListener.onCancel();
        }
        super.onStop();
    }





/*
    static String access$1084(TDialog tdialog, Object obj)
    {
        obj = (new StringBuilder()).append(tdialog.mUrl).append(obj).toString();
        tdialog.mUrl = ((String) (obj));
        return ((String) (obj));
    }

*/









/*
    static boolean access$802(TDialog tdialog, boolean flag)
    {
        tdialog.isBrowserStarted = flag;
        return flag;
    }

*/


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
        //                       4 99
        //                       5 129;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
            return;
_L2:
            mL.onComplete((String)message.obj);
            return;
_L3:
            mL.onCancel();
            return;
_L4:
            if (TDialog.sWeakContext != null && TDialog.sWeakContext.get() != null)
            {
                TDialog.showTips((Context)TDialog.sWeakContext.get(), (String)message.obj);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L5:
            if (TDialog.sWeakProcessBar != null && TDialog.sWeakProcessBar.get() != null)
            {
                ((View)TDialog.sWeakProcessBar.get()).setVisibility(8);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L6:
            if (TDialog.sWeakContext != null && TDialog.sWeakContext.get() != null)
            {
                TDialog.showProcessDialog((Context)TDialog.sWeakContext.get(), (String)message.obj);
                return;
            }
            if (true) goto _L1; else goto _L7
_L7:
        }

        public THandler(OnTimeListener ontimelistener, Looper looper)
        {
            super(looper);
            mL = ontimelistener;
        }
    }


    private class FbWebViewClient extends WebViewClient
    {

        final TDialog this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (TDialog.sWeakProcessBar != null && TDialog.sWeakProcessBar.get() != null)
            {
                ((View)TDialog.sWeakProcessBar.get()).setVisibility(8);
            }
            mWebView.setVisibility(0);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
            if (TDialog.sWeakProcessBar != null && TDialog.sWeakProcessBar.get() != null)
            {
                ((View)TDialog.sWeakProcessBar.get()).setVisibility(0);
            }
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            super.onReceivedError(webview, i, s, s1);
            mListener.onError(new UiError(i, s, s1));
            if (TDialog.sWeakContext != null && TDialog.sWeakContext.get() != null)
            {
                Toast.makeText((Context)TDialog.sWeakContext.get(), "\u7F51\u7EDC\u8FDE\u63A5\u5F02\u5E38\u6216\u7CFB\u7EDF\u9519\u8BEF", 0).show();
            }
            dismiss();
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            sslerrorhandler.proceed();
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (!s.startsWith("auth://browser")) goto _L2; else goto _L1
_L1:
            webview = Util.parseUrlToJson(s);
            Log.i("olddata", webview.toString());
            isBrowserStarted = authWithBrowser();
            if (!isBrowserStarted) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            if (webview.optString("fail_cb", null) != null)
            {
                callJs(webview.optString("fail_cb"), "");
            } else
            if (webview.optInt("fall_to_wv") == 1)
            {
                s = TDialog.this;
                if (mUrl.indexOf("?") > -1)
                {
                    webview = "&";
                } else
                {
                    webview = "?";
                }
                webview = (new StringBuilder()).append(((proceed) (this)).proceed).append(webview).toString();
                webview = (new StringBuilder()).append(((proceed) (this)).proceed).append(webview).toString();
                mWebView.loadUrl(mUrl);
            } else
            {
                webview = webview.optString("redir", null);
                if (webview != null)
                {
                    mWebView.loadUrl(webview);
                }
            }
            if (true) goto _L3; else goto _L2
_L2:
            if (s.startsWith(ServerSetting.getInstance().getSettingUrl((Context)TDialog.sWeakContext.get(), 1)))
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
            }
            if (s.startsWith("download://"))
            {
                webview = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(s.substring("download://".length()))));
                if (TDialog.sWeakContext != null && TDialog.sWeakContext.get() != null)
                {
                    ((Context)TDialog.sWeakContext.get()).startActivity(webview);
                }
                return true;
            } else
            {
                return false;
            }
        }

        private FbWebViewClient()
        {
            this$0 = TDialog.this;
            super();
        }

        FbWebViewClient(_cls1 _pcls1)
        {
            this();
        }
    }


    private class JsListener
    {

        final TDialog this$0;

        public void onAddShare(String s)
        {
            onComplete(s);
        }

        public void onCancel(String s)
        {
            mHandler.obtainMessage(2, s).sendToTarget();
            dismiss();
        }

        public void onCancelAddShare(int i)
        {
            onCancel(null);
        }

        public void onCancelInvite()
        {
            onCancel(null);
        }

        public void onCancelLogin()
        {
            onCancel(null);
        }

        public void onComplete(String s)
        {
            mHandler.obtainMessage(1, s).sendToTarget();
            Log.e("onComplete", s);
            dismiss();
        }

        public void onInvite(String s)
        {
            onComplete(s);
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
            this$0 = TDialog.this;
            super();
        }

        JsListener(_cls1 _pcls1)
        {
            this();
        }
    }

}
