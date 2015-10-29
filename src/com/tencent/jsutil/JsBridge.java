// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class JsBridge
{

    private static final String TAG = "JsBridge";
    public static JsBridge instance = null;
    Handler handler;
    private List jsNameList;
    private Context mContext;
    private String mJsPath;
    private int mLoadProgress;
    private WebView mWebView;

    public JsBridge(Context context, String s)
    {
        mLoadProgress = 0;
        handler = new _cls1();
        mContext = context;
        mWebView = new WebView(mContext);
        mWebView.setWebViewClient(new MyWebViewClient());
        mWebView.setWebChromeClient(new WebChromeClient());
        mJsPath = s;
        jsNameList = new ArrayList();
        setJsEnabled();
    }

    public static JsBridge getInstance(Context context, String s)
    {
        if (instance != null) goto _L2; else goto _L1
_L1:
        com/tencent/jsutil/JsBridge;
        JVM INSTR monitorenter ;
        if (instance == null)
        {
            instance = new JsBridge(context, s);
        }
        com/tencent/jsutil/JsBridge;
        JVM INSTR monitorexit ;
_L2:
        return instance;
        context;
        com/tencent/jsutil/JsBridge;
        JVM INSTR monitorexit ;
        throw context;
    }

    private String transSpec(String s)
    {
        return s.replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
    }

    public void WebViewReload()
    {
        mLoadProgress = 0;
        mWebView.reload();
    }

    public void clearCache()
    {
        instance = null;
        mWebView.clearCache(true);
        mWebView.clearFormData();
        mWebView.clearHistory();
        mWebView.removeAllViews();
        mWebView.destroy();
    }

    public void excuteMethod(final String method)
    {
        Log.i("JsBridge", "excuteMethod(method)");
        (new Thread(new _cls3())).start();
    }

    public transient void executeMethod(final String method, final String params[])
    {
        Log.i("JsBridge", "excuteMethod(method,params)");
        (new Thread(new _cls2())).start();
    }

    public List getAllObjNames()
    {
        return new ArrayList(jsNameList);
    }

    public int getDownloadProgress()
    {
        return mLoadProgress;
    }

    public String getWebViewCurrentUrl()
    {
        return mWebView.getUrl();
    }

    public String getmJsPath()
    {
        return mJsPath;
    }

    public void jsReload()
    {
        mLoadProgress = 0;
        mWebView.loadUrl("javascript:window.location.reload( true )");
    }

    public void loadUrl(String s)
    {
        Log.d("loadurl", s);
        mWebView.loadUrl(s);
    }

    public void regiesterObj(Object obj, String s)
    {
        if (obj != null)
        {
            try
            {
                android/webkit/WebView.getMethod("addJavascriptInterface", new Class[] {
                    java/lang/Object, java/lang/String
                }).invoke(mWebView, new Object[] {
                    obj, s
                });
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((NoSuchMethodException) (obj)).getMessage());
                ((NoSuchMethodException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((IllegalArgumentException) (obj)).getMessage());
                ((IllegalArgumentException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((IllegalAccessException) (obj)).getMessage());
                ((IllegalAccessException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((InvocationTargetException) (obj)).getMessage());
                ((InvocationTargetException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((Exception) (obj)).getMessage());
            }
            jsNameList.add(s);
        }
    }

    public void registerObj(Object obj)
    {
        if (obj != null)
        {
            String s = obj.getClass().getSimpleName();
            char c = Character.toLowerCase(s.charAt(0));
            if (s.length() == 1)
            {
                s = (new StringBuilder()).append("").append(c).toString();
            } else
            {
                s = (new StringBuilder()).append("").append(c).append(s.substring(1)).toString();
            }
            Log.i("JsBridge", (new StringBuilder()).append("register:").append(s).toString());
            try
            {
                android/webkit/WebView.getMethod("addJavascriptInterface", new Class[] {
                    java/lang/Object, java/lang/String
                }).invoke(mWebView, new Object[] {
                    obj, s
                });
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((NoSuchMethodException) (obj)).getMessage());
                ((NoSuchMethodException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((IllegalArgumentException) (obj)).getMessage());
                ((IllegalArgumentException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((IllegalAccessException) (obj)).getMessage());
                ((IllegalAccessException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((InvocationTargetException) (obj)).getMessage());
                ((InvocationTargetException) (obj)).printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("JsBridge", ((Exception) (obj)).getMessage());
            }
            jsNameList.add(s);
        }
    }

    public void registerObjs(Map map)
    {
        map = map.entrySet().iterator();
        do
        {
            Object obj;
            Object obj1;
label0:
            {
                if (map.hasNext())
                {
                    obj1 = (java.util.Map.Entry)map.next();
                    obj = ((java.util.Map.Entry) (obj1)).getKey();
                    obj1 = ((String)((java.util.Map.Entry) (obj1)).getValue()).toString();
                    if (obj != null && obj1 != null)
                    {
                        break label0;
                    }
                }
                return;
            }
            regiesterObj(obj, ((String) (obj1)));
        } while (true);
    }

    public void setJsDisabled()
    {
        mWebView.getSettings().setJavaScriptEnabled(false);
    }

    public void setJsEnabled()
    {
        Log.i("JsBridge", "setJsEnabled");
        WebSettings websettings = mWebView.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setDefaultTextEncodingName("utf-8");
    }





/*
    static int access$102(JsBridge jsbridge, int i)
    {
        jsbridge.mLoadProgress = i;
        return i;
    }

*/


    private class _cls1 extends Handler
    {

        final JsBridge this$0;

        public void handleMessage(Message message)
        {
            Log.i("JsBridge", "handleMessage");
            if (message.what == 0)
            {
                message = (String)message.obj;
                Log.i("JsBridge", (new StringBuilder()).append("url =").append(message).toString());
                mWebView.loadUrl(message);
            }
        }

        _cls1()
        {
            this$0 = JsBridge.this;
            super();
        }
    }


    private class MyWebViewClient extends WebViewClient
    {

        final JsBridge this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            mLoadProgress = 100;
            long l = System.nanoTime() / 0xf4240L;
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
            mLoadProgress = 0;
            long l = System.nanoTime() / 0xf4240L;
        }

        MyWebViewClient()
        {
            this$0 = JsBridge.this;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final JsBridge this$0;
        final String val$method;

        public void run()
        {
            while (mLoadProgress < 100) ;
            String s = (new StringBuilder()).append("javascript:").append(method).append(";").toString();
            Message message = new Message();
            message.what = 0;
            message.obj = s;
            handler.sendMessage(message);
        }

        _cls3()
        {
            this$0 = JsBridge.this;
            method = s;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final JsBridge this$0;
        final String val$method;
        final String val$params[];

        public void run()
        {
            while (mLoadProgress < 100) ;
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append("javascript:");
            stringbuffer.append(method);
            stringbuffer.append("(");
            if (params != null)
            {
                int i = 0;
                while (i < params.length) 
                {
                    try
                    {
                        Integer.valueOf(params[i]);
                        stringbuffer.append(params[i]);
                    }
                    catch (Exception exception)
                    {
                        stringbuffer.append((new StringBuilder()).append("'").append(transSpec(params[i])).append("'").toString());
                    }
                    if (i != params.length - 1)
                    {
                        stringbuffer.append(",");
                    }
                    i++;
                }
            }
            stringbuffer.append(");");
            Log.i("JsBridge", (new StringBuilder()).append("excuteMethod:").append(stringbuffer.toString()).toString());
            Message message = new Message();
            message.what = 0;
            message.obj = stringbuffer.toString();
            handler.sendMessage(message);
        }

        _cls2()
        {
            this$0 = JsBridge.this;
            method = s;
            params = as;
            super();
        }
    }

}
