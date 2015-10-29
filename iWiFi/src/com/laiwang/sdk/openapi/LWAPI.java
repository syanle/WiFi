// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.laiwang.sdk.channel.IILWAPIChannelProxy;
import com.laiwang.sdk.message.IILWMessage;
import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.utils.LWAPINotification;
import com.laiwang.sdk.utils.LWAPIUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.laiwang.sdk.openapi:
//            ILWAPI, LWAPIAccount, IILWAPICallbackImpl, LwSecurity

public class LWAPI
    implements ILWAPI
{

    public static boolean DEBUG = false;
    public static final String TAG = "LWAPI";
    private static Application sApp;
    private static LWAPI sLWAPI;
    private String mAppName;
    private int mAppVersion;
    private IILWAPICallbackImpl mIILWAPICallbackImpl;
    private IILWAPIChannelProxy mIILWAPIChannelPorxy;
    private boolean mIsLaiwangInited;
    private boolean mIsLaiwangServiceBinding;
    private boolean mIsLaiwangSupport;
    private boolean mIsLossVersion;
    private boolean mIsNewsVersion;
    private LWAPIAccount mLWAPIAccount;
    private int mLWVersion;
    private Handler mMainHandler;
    private String mPackageName;

    public LWAPI(Context context, String s, String s1, int i, String s2, String s3)
    {
        mLWAPIAccount = new LWAPIAccount();
        mIsLaiwangServiceBinding = false;
        mIsLaiwangSupport = true;
        mIsLaiwangInited = false;
        mIsLossVersion = false;
        mIsNewsVersion = false;
        mIILWAPIChannelPorxy = new IILWAPIChannelProxy();
        mIILWAPICallbackImpl = new IILWAPICallbackImpl();
        mMainHandler = new Handler(Looper.getMainLooper());
        initLWAPI(context, s, s1, i, s2, s3);
    }

    private int canTransact(Context context)
    {
        initLWAPI(context, mLWAPIAccount.getLwapiToken(), mLWAPIAccount.getLwapiSecret(), mAppVersion, mPackageName, mAppName);
        char c;
        if (!isLWAppInstalled())
        {
            downloadLaiwangAPK(context, mAppVersion);
            c = '\uFFFF';
        } else
        {
            c = '\0';
            if (!mIsLaiwangServiceBinding || !mIILWAPIChannelPorxy.isConnected())
            {
                connectLaiwangService(mAppVersion, mAppName);
                c = '\u07D0';
            }
            if (!mIsLaiwangServiceBinding)
            {
                downloadLaiwangAPK(context, mAppVersion);
                return -1;
            }
        }
        return c;
    }

    public static void downloadLaiwangAPK(Context context, int i)
    {
        if (i == 0x20131120)
        {
            context = new android.app.AlertDialog.Builder(context);
            context.setTitle("\u4EB2,\u4F60\u8FD8\u6CA1\u5B89\u88C5\u6765\u5F80\u5BA2\u6237\u7AEF\u54E6");
            context.setMessage("\u901F\u901F\u4E0B\u8F7D\u5373\u90012\u5143,\u53C2\u52A0\u5206\u4EAB\u8FD8\u53EF\u8D62\u514D\u5355!");
            context.setPositiveButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    dialoginterface.dismiss();
                }

            });
            context.setNegativeButton("\u4E0B\u8F7D", new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    dialoginterface.dismiss();
                    LWAPIUtils.invokeBrowser(LWAPI.getApplication(), "http://m.laiwang.com");
                }

            });
            context.create().show();
            return;
        } else
        {
            LWAPINotification.showToast("\u8BF7\u4E0B\u8F7D\u6700\u65B0\u7248\u672C\u7684\u6765\u5F80", getApplication());
            LWAPIUtils.invokeBrowser(getApplication(), "http://m.laiwang.com");
            return;
        }
    }

    public static Application getApplication()
    {
        return sApp;
    }

    public static LWAPI getInstance(Context context, String s, String s1, int i, String s2, String s3)
    {
        if (sLWAPI == null)
        {
            sLWAPI = new LWAPI(context, s, s1, i, s2, s3);
        }
        return sLWAPI;
    }

    private boolean initLWAPI(Context context, String s, String s1, int i, String s2, String s3)
    {
        mLWAPIAccount.setLwapiToken(s);
        mLWAPIAccount.setLwapiSecret(s1);
        mIILWAPICallbackImpl.setLWAPIAccount(mLWAPIAccount);
        mAppName = s3;
        mAppVersion = i;
        mPackageName = s2;
        prepare((Application)context.getApplicationContext());
        if (mIsLaiwangInited)
        {
            return true;
        }
        if (!mIsLaiwangServiceBinding || !mIILWAPIChannelPorxy.isConnected())
        {
            connectLaiwangService(i, mAppName);
        }
        mIsLaiwangInited = true;
        return true;
    }

    private void intentLaiwang(Context context, String s, String s1, IILWMessage iilwmessage, boolean flag)
    {
        if ("DYNAMIC2".equals(s1))
        {
            intentApp(context, "com.alibaba.android.babylon", "com.alibaba.android.babylon.biz.im.activity.LaiwangShareActivity", iilwmessage, flag);
            return;
        } else
        {
            intentApp(context, "com.alibaba.android.babylon", "com.alibaba.android.babylon.biz.im.activity.RecentIMListActivity", iilwmessage, flag);
            return;
        }
    }

    public static boolean prepare(Application application)
    {
        sApp = application;
        return true;
    }

    public boolean answerLWResponced(final Context apiContext, final String fromLink, final ILWAPI.IILaiwangApiCallback iLaiwangApiCallback)
    {
        if (!LwSecurity.isLWAPPImpl(apiContext, "com.alibaba.android.babylon"))
        {
            return false;
        }
        if (apiContext == null)
        {
            return false;
        }
        int i = canTransact(apiContext);
        if (i == -1)
        {
            return false;
        }
        fromLink = ((Activity)apiContext).getIntent().getStringExtra("link");
        if (TextUtils.isEmpty(fromLink))
        {
            return false;
        } else
        {
            mMainHandler.postDelayed(new Runnable() {

                final LWAPI this$0;
                private final Context val$apiContext;
                private final String val$fromLink;
                private final ILWAPI.IILaiwangApiCallback val$iLaiwangApiCallback;

                public void run()
                {
                    if (!mIILWAPIChannelPorxy.isConnected())
                    {
                        LWAPINotification.showToast("\u6765\u5F80\u5F88\u5FD9,\u8BF7\u7A0D\u540E\u518D\u8BD5", LWAPI.getApplication());
                    }
                    if (!mIsLaiwangSupport)
                    {
                        LWAPI.downloadLaiwangAPK(apiContext, mAppVersion);
                    } else
                    {
                        if (mIsLossVersion)
                        {
                            LWAPINotification.showToast("\u53CA\u65F6\u66F4\u65B0\u6765\u5F80\u54E6,\u60CA\u559C\u5728\u540E\u9762", LWAPI.getApplication());
                        }
                        Intent intent = new Intent();
                        intent.putExtra("shareType", "ANSEWR");
                        intent.putExtra("reqeustURI", fromLink);
                        int j = mIILWAPIChannelPorxy.requestData(mLWAPIAccount, intent.getExtras(), mAppVersion);
                        if (iLaiwangApiCallback != null)
                        {
                            iLaiwangApiCallback.onResponceAnswer(j);
                            return;
                        }
                    }
                }

            
            {
                this$0 = LWAPI.this;
                apiContext = context;
                fromLink = s;
                iLaiwangApiCallback = iilaiwangapicallback;
                super();
            }
            }, i);
            return true;
        }
    }

    public boolean connectLaiwangService(final int version, final String appName)
    {
        mIsLaiwangServiceBinding = mIILWAPIChannelPorxy.bindLaiwangService(new com.laiwang.sdk.channel.IILWAPIChannelProxy.ISDKConnListener() {

            final LWAPI this$0;
            private final String val$appName;
            private final int val$version;

            public void onError(int i)
            {
                if (i == -1)
                {
                    mIsLaiwangSupport = false;
                }
            }

            public void onStart()
            {
                mLWVersion = mIILWAPIChannelPorxy.registerAPP(mLWAPIAccount, mIILWAPICallbackImpl, version, appName);
                if (version > mLWVersion)
                {
                    mIsLossVersion = true;
                    return;
                } else
                {
                    mIsNewsVersion = true;
                    return;
                }
            }

            public void onStop()
            {
            }

            
            {
                this$0 = LWAPI.this;
                version = i;
                appName = s;
                super();
            }
        });
        return mIsLaiwangServiceBinding;
    }

    public void deleteCallback()
    {
        mIILWAPICallbackImpl.setIIApiCallback(null);
    }

    protected void dialog(Context context)
    {
        context = new android.app.AlertDialog.Builder(context);
        context.setTitle("\u63D0\u793A");
        context.setMessage("\u786E\u8BA4\u9000\u51FA\u5417\uFF1F");
        context.setPositiveButton("\u786E\u8BA4", new android.content.DialogInterface.OnClickListener() {

            final LWAPI this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = LWAPI.this;
                super();
            }
        });
        context.setNegativeButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

            final LWAPI this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = LWAPI.this;
                super();
            }
        });
        context.create().show();
    }

    public Context getApp()
    {
        return sApp;
    }

    public boolean intentApp(Context context, String s, String s1, IILWMessage iilwmessage, boolean flag)
    {
        s = LWAPIUtils.getAppPackageInfo(context, s);
        if (s == null)
        {
            return false;
        }
        Object obj = new Intent("android.intent.action.MAIN", null);
        ((Intent) (obj)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj)).setPackage(((PackageInfo) (s)).packageName);
        s = (ResolveInfo)context.getPackageManager().queryIntentActivities(((Intent) (obj)), 0).iterator().next();
        if (s == null)
        {
            return false;
        }
        obj = ((ResolveInfo) (s)).activityInfo.packageName;
        s = new Intent("android.intent.action.MAIN");
        s.setAction("com.laiwang.recent.im.share.sdk");
        s.addCategory("android.intent.category.LAUNCHER");
        s1 = new ComponentName(((String) (obj)), s1);
        if (flag)
        {
            iilwmessage.setAppkey(mLWAPIAccount.getLwapiToken());
            iilwmessage.setSecret(mLWAPIAccount.getLwapiSecret());
            s.putExtras(iilwmessage.toBundle());
        } else
        {
            s.putExtra("appToken", mLWAPIAccount.getLwapiToken());
            s.putExtra("randomKey", mLWAPIAccount.getLwapiRandomKey());
        }
        s.setComponent(s1);
        context.startActivity(s);
        return true;
    }

    public boolean isLWAppInstalled()
    {
        boolean flag;
        boolean flag1;
        if (LWAPIUtils.getAppPackageInfo(getApplication(), "com.alibaba.android.babylon") != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = flag;
        if (LwSecurity.sIsSecuritySahreSDK)
        {
            flag1 = flag | LwSecurity.getInstance().checkCertificate("com.alibaba.android.babylon");
        }
        return flag1;
    }

    public boolean isLWSupported(int i)
    {
        return 3 != i && 4 != i || mLWVersion >= 0x20140101;
    }

    public boolean openLWAPP()
    {
        if (!isLWAppInstalled())
        {
            return false;
        }
        try
        {
            getApp().startActivity(getApp().getPackageManager().getLaunchIntentForPackage("com.alibaba.android.babylon"));
        }
        catch (Exception exception)
        {
            return false;
        }
        return true;
    }

    public void registCallback(ILWAPI.IILaiwangApiCallback iilaiwangapicallback)
    {
        mIILWAPICallbackImpl.setIIApiCallback(iilaiwangapicallback);
    }

    public boolean requestData(Context context, final IILWMessage message, final int version)
    {
        final Object apiContext = context;
        if (context == null)
        {
            apiContext = sApp;
        }
        int i = canTransact(((Context) (apiContext)));
        if (i == -1)
        {
            return false;
        } else
        {
            mMainHandler.postDelayed(new Runnable() {

                final LWAPI this$0;
                private final Context val$apiContext;
                private final IILWMessage val$message;
                private final int val$version;

                public void run()
                {
                    if (!mIILWAPIChannelPorxy.isConnected())
                    {
                        LWAPINotification.showToast("\u6765\u5F80\u5F88\u5FD9,\u8BF7\u7A0D\u540E\u518D\u8BD5", LWAPI.getApplication());
                    }
                    if (!mIsLaiwangSupport)
                    {
                        LWAPI.downloadLaiwangAPK(apiContext, version);
                    } else
                    {
                        if (mIsLossVersion)
                        {
                            if (!isLWSupported(message.getMessageType()))
                            {
                                LWAPINotification.showToast("\u6682\u4E0D\u652F\u6301\u6B64\u7C7B\u7684\u5206\u4EAB\uFF0C\u8BF7\u66F4\u65B0\u60A8\u7684\u6765\u5F80", LWAPI.getApplication());
                                LWAPI.downloadLaiwangAPK(apiContext, version);
                                return;
                            }
                            LWAPINotification.showToast("\u53CA\u65F6\u66F4\u65B0\u6765\u5F80\u54E6,\u60CA\u559C\u5728\u540E\u9762", LWAPI.getApplication());
                        }
                        android.os.Bundle bundle = message.toBundle();
                        if (mIILWAPIChannelPorxy.requestData(mLWAPIAccount, bundle, version) == 0 && !"RESPONCE".equals(message.getShareType()))
                        {
                            intentLaiwang(apiContext, "com.alibaba.android.babylon", message.getShareType(), message, false);
                            return;
                        }
                    }
                }

            
            {
                this$0 = LWAPI.this;
                apiContext = context;
                version = i;
                message = iilwmessage;
                super();
            }
            }, i);
            return true;
        }
    }

    public boolean transactData(Context context, final IILWMessage message, final int version)
    {
        final Object apiContext = context;
        if (context == null)
        {
            apiContext = sApp;
        }
        int i = canTransact(((Context) (apiContext)));
        if (i == -1)
        {
            return false;
        } else
        {
            mMainHandler.postDelayed(new Runnable() {

                final LWAPI this$0;
                private final Context val$apiContext;
                private final IILWMessage val$message;
                private final int val$version;

                public void run()
                {
                    if (!mIILWAPIChannelPorxy.isConnected())
                    {
                        LWAPINotification.showToast("\u6765\u5F80\u5F88\u5FD9,\u8BF7\u7A0D\u540E\u518D\u8BD5", LWAPI.getApplication());
                    }
                    if (!mIsLaiwangSupport)
                    {
                        LWAPI.downloadLaiwangAPK(apiContext, version);
                    } else
                    {
                        if (mIsLossVersion)
                        {
                            if (!isLWSupported(message.getMessageType()))
                            {
                                LWAPINotification.showToast("\u6682\u4E0D\u652F\u6301\u6B64\u7C7B\u7684\u5206\u4EAB\uFF0C\u8BF7\u66F4\u65B0\u60A8\u7684\u6765\u5F80", LWAPI.getApplication());
                                LWAPI.downloadLaiwangAPK(apiContext, version);
                                return;
                            }
                            LWAPINotification.showToast("\u53CA\u65F6\u66F4\u65B0\u6765\u5F80\u54E6,\u60CA\u559C\u5728\u540E\u9762", LWAPI.getApplication());
                        }
                        if (mLWVersion >= 0x20140101)
                        {
                            android.os.Bundle bundle = message.toBundle();
                            if (mIILWAPIChannelPorxy.requestData(mLWAPIAccount, bundle, version) == 0 && !"RESPONCE".equals(message.getShareType()))
                            {
                                intentLaiwang(apiContext, "com.alibaba.android.babylon", message.getShareType(), message, false);
                                return;
                            }
                        } else
                        if (mIILWAPIChannelPorxy.transportData(mLWAPIAccount, (LWMessage)message, version) == 0)
                        {
                            intentLaiwang(apiContext, "com.alibaba.android.babylon", message.getShareType(), message, false);
                            return;
                        } else
                        {
                            intentLaiwang(apiContext, "com.alibaba.android.babylon", message.getShareType(), message, true);
                            return;
                        }
                    }
                }

            
            {
                this$0 = LWAPI.this;
                apiContext = context;
                version = i;
                message = iilwmessage;
                super();
            }
            }, i);
            return true;
        }
    }

    static 
    {
        DEBUG = false;
    }












}
