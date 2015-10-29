// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta;

import android.app.Application;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.ta.exception.TAAppException;
import com.ta.exception.TANoSuchCommandException;
import com.ta.mvc.command.TACommandExecutor;
import com.ta.mvc.command.TAIdentityCommand;
import com.ta.mvc.common.TAIResponseListener;
import com.ta.mvc.common.TARequest;
import com.ta.mvc.common.TAResponse;
import com.ta.mvc.controller.ActivityStackInfo;
import com.ta.mvc.controller.NavigationDirection;
import com.ta.util.TAInjector;
import com.ta.util.TALogger;
import com.ta.util.cache.TAFileCache;
import com.ta.util.config.TAIConfig;
import com.ta.util.config.TAPreferenceConfig;
import com.ta.util.config.TAPropertiesConfig;
import com.ta.util.db.TASQLiteDatabasePool;
import com.ta.util.layoutloader.TAILayoutLoader;
import com.ta.util.layoutloader.TALayoutLoader;
import com.ta.util.netstate.TANetChangeObserver;
import com.ta.util.netstate.TANetworkStateReceiver;
import java.util.HashMap;
import java.util.Stack;

// Referenced classes of package com.ta:
//            TAActivity, TAAppManager

public class TAApplication extends Application
    implements TAIResponseListener
{

    private static int $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection[];
    public static final int PREFERENCECONFIG = 0;
    public static final int PROPERTIESCONFIG = 1;
    private static final String SYSTEMCACHE = "thinkandroid";
    private static final String TAIDENTITYCOMMAND = "TAIdentityCommand";
    private static TAApplication application;
    private Stack activityStack;
    private TAActivity currentActivity;
    private NavigationDirection currentNavigationDirection;
    private Handler handler;
    private TAAppManager mAppManager;
    private TACommandExecutor mCommandExecutor;
    private TAIConfig mCurrentConfig;
    private TAFileCache mFileCache;
    private TAInjector mInjector;
    private TAILayoutLoader mLayoutLoader;
    private TASQLiteDatabasePool mSQLiteDatabasePool;
    private Boolean networkAvailable;
    private final HashMap registeredActivities = new HashMap();
    private TANetChangeObserver taNetChangeObserver;
    private Thread.UncaughtExceptionHandler uncaughtExceptionHandler;

    static int[] $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection()
    {
        int ai[] = $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[NavigationDirection.values().length];
        try
        {
            ai[NavigationDirection.Backward.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[NavigationDirection.Forward.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection = ai;
        return ai;
    }

    public TAApplication()
    {
        activityStack = new Stack();
        networkAvailable = Boolean.valueOf(false);
        handler = new Handler() {

            final TAApplication this$0;

            public void handleMessage(Message message)
            {
                processResponse(message);
            }

            
            {
                this$0 = TAApplication.this;
                super();
            }
        };
    }

    private void doOncreate()
    {
        application = this;
        Thread.setDefaultUncaughtExceptionHandler(getUncaughtExceptionHandler());
        mCommandExecutor = TACommandExecutor.getInstance();
        taNetChangeObserver = new TANetChangeObserver() {

            final TAApplication this$0;

            public void onConnect(com.ta.util.netstate.TANetWorkUtil.netType nettype)
            {
                super.onConnect(nettype);
                TAApplication.this.onConnect(nettype);
            }

            public void onDisConnect()
            {
                super.onDisConnect();
                TAApplication.this.onDisConnect();
            }

            
            {
                this$0 = TAApplication.this;
                super();
            }
        };
        TANetworkStateReceiver.registerObserver(taNetChangeObserver);
        registerCommand("TAIdentityCommand", com/ta/mvc/command/TAIdentityCommand);
    }

    public static TAApplication getApplication()
    {
        return application;
    }

    private Thread.UncaughtExceptionHandler getUncaughtExceptionHandler()
    {
        if (uncaughtExceptionHandler == null)
        {
            uncaughtExceptionHandler = TAAppException.getInstance(this);
        }
        return uncaughtExceptionHandler;
    }

    private void handleResponse(TAResponse taresponse)
    {
        Message message = new Message();
        message.what = 0;
        message.obj = taresponse;
        handler.sendMessage(message);
    }

    private void processResponse(Message message)
    {
        ActivityStackInfo activitystackinfo;
        TAResponse taresponse;
        taresponse = (TAResponse)message.obj;
        activitystackinfo = (ActivityStackInfo)activityStack.peek();
        activitystackinfo.setResponse(taresponse);
        if (taresponse == null) goto _L2; else goto _L1
_L1:
        int i;
        i = taresponse.getActivityKeyResID();
        message = "";
        if (i != 0)
        {
            message = getString(i);
        }
        Object obj = message;
        if (message != null)
        {
            obj = message;
            if (message.equalsIgnoreCase(""))
            {
                obj = taresponse.getActivityKey();
            }
        }
        taresponse.setTag(((Object[])taresponse.getTag())[0]);
        message = (Class)registeredActivities.get(obj);
        TALogger.i(this, (new StringBuilder("Launching new activity // else, current Direction: ")).append(currentNavigationDirection).toString());
        i = activityStack.size();
        TALogger.i(this, (new StringBuilder("Current Stack Size (before processing): ")).append(i).toString());
        $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection()[currentNavigationDirection.ordinal()];
        JVM INSTR tableswitch 1 2: default 188
    //                   1 252
    //                   2 276;
           goto _L3 _L4 _L5
_L3:
        TALogger.i(this, (new StringBuilder("Current Stack Size (after processing): ")).append(activityStack.size()).toString());
        if (message != null)
        {
            Intent intent = new Intent(currentActivity, message);
            currentActivity.startActivity(intent);
            currentActivity.finish();
            activitystackinfo.setActivityClass(message);
        }
_L2:
        return;
_L4:
        if (i >= 2 && !activitystackinfo.isRecord())
        {
            activityStack.pop();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        currentNavigationDirection = NavigationDirection.Forward;
        if (true) goto _L3; else goto _L6
_L6:
    }

    public void back()
    {
        ActivityStackInfo activitystackinfo;
        TALogger.i(this, (new StringBuilder("ActivityStack Size: ")).append(activityStack.size()).toString());
        if (activityStack == null || activityStack.size() == 0)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        if (activityStack.size() >= 2)
        {
            activityStack.pop();
        }
        currentNavigationDirection = NavigationDirection.Backward;
        activitystackinfo = (ActivityStackInfo)activityStack.peek();
        TACommandExecutor.getInstance().enqueueCommand(activitystackinfo.getCommandKey(), activitystackinfo.getRequest(), this);
        return;
        TANoSuchCommandException tanosuchcommandexception;
        tanosuchcommandexception;
        tanosuchcommandexception.printStackTrace();
        return;
    }

    public void doCommand(String s, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag, boolean flag1)
    {
        if (tairesponselistener != null)
        {
            try
            {
                TACommandExecutor.getInstance().enqueueCommand(s, tarequest, tairesponselistener);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            return;
        }
        TALogger.i(this, (new StringBuilder("go with cmdid=")).append(s).append(", record: ").append(flag).append(",rs: ").append(flag1).append(", request: ").append(tarequest).toString());
        if (flag1)
        {
            activityStack.clear();
        }
        currentNavigationDirection = NavigationDirection.Forward;
        ActivityStackInfo activitystackinfo = new ActivityStackInfo(s, tarequest, flag, flag1);
        activityStack.add(activitystackinfo);
        tarequest.setTag(((Object) (new Object[] {
            tarequest.getTag(), tairesponselistener
        })));
        TALogger.i(this, "Enqueue-ing command");
        try
        {
            TACommandExecutor.getInstance().enqueueCommand(s, tarequest, this);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        TALogger.i(this, "Enqueued command");
    }

    public void exitApp(Boolean boolean1)
    {
        mAppManager.AppExit(this, boolean1);
    }

    public TAAppManager getAppManager()
    {
        if (mAppManager == null)
        {
            mAppManager = TAAppManager.getAppManager();
        }
        return mAppManager;
    }

    public TAIConfig getConfig(int i)
    {
        if (i == 0)
        {
            mCurrentConfig = TAPreferenceConfig.getPreferenceConfig(this);
        } else
        if (i == 1)
        {
            mCurrentConfig = TAPropertiesConfig.getPropertiesConfig(this);
        } else
        {
            mCurrentConfig = TAPropertiesConfig.getPropertiesConfig(this);
        }
        if (!mCurrentConfig.isLoadConfig().booleanValue())
        {
            mCurrentConfig.loadConfig();
        }
        return mCurrentConfig;
    }

    public TAIConfig getCurrentConfig()
    {
        if (mCurrentConfig == null)
        {
            getPreferenceConfig();
        }
        return mCurrentConfig;
    }

    public TAFileCache getFileCache()
    {
        if (mFileCache == null)
        {
            TAFileCache tafilecache = new TAFileCache(new com.ta.util.cache.TAFileCache.TACacheParams(this, "thinkandroid"));
            application.setFileCache(tafilecache);
        }
        return mFileCache;
    }

    public TAInjector getInjector()
    {
        if (mInjector == null)
        {
            mInjector = TAInjector.getInstance();
        }
        return mInjector;
    }

    public TAILayoutLoader getLayoutLoader()
    {
        if (mLayoutLoader == null)
        {
            mLayoutLoader = TALayoutLoader.getInstance(this);
        }
        return mLayoutLoader;
    }

    public TAIConfig getPreferenceConfig()
    {
        return getConfig(0);
    }

    public TAIConfig getPropertiesConfig()
    {
        return getConfig(1);
    }

    public TASQLiteDatabasePool getSQLiteDatabasePool()
    {
        if (mSQLiteDatabasePool == null)
        {
            mSQLiteDatabasePool = TASQLiteDatabasePool.getInstance(this);
            mSQLiteDatabasePool.createPool();
        }
        return mSQLiteDatabasePool;
    }

    public Boolean isNetworkAvailable()
    {
        return networkAvailable;
    }

    public void onActivityCreated(TAActivity taactivity)
    {
        if (currentActivity != null)
        {
            currentActivity.finish();
        }
        currentActivity = taactivity;
        int i = activityStack.size();
        if (i > 0)
        {
            ActivityStackInfo activitystackinfo = (ActivityStackInfo)activityStack.peek();
            if (activitystackinfo != null)
            {
                taactivity.processData(activitystackinfo.getResponse());
                if (i >= 2 && !activitystackinfo.isRecord())
                {
                    activityStack.pop();
                }
            }
        }
    }

    public void onActivityCreating(TAActivity taactivity)
    {
        if (activityStack.size() > 0)
        {
            ActivityStackInfo activitystackinfo = (ActivityStackInfo)activityStack.peek();
            if (activitystackinfo != null)
            {
                taactivity.preProcessData(activitystackinfo.getResponse());
            }
        }
    }

    protected void onAfterCreateApplication()
    {
    }

    protected void onConnect(com.ta.util.netstate.TANetWorkUtil.netType nettype)
    {
        networkAvailable = Boolean.valueOf(true);
        if (currentActivity != null)
        {
            currentActivity.onConnect(nettype);
        }
    }

    public void onCreate()
    {
        onPreCreateApplication();
        super.onCreate();
        doOncreate();
        onAfterCreateApplication();
        getAppManager();
    }

    public void onDisConnect()
    {
        networkAvailable = Boolean.valueOf(false);
        if (currentActivity != null)
        {
            currentActivity.onDisConnect();
        }
    }

    public void onFailure(TAResponse taresponse)
    {
        handleResponse(taresponse);
    }

    public void onFinish()
    {
    }

    protected void onPreCreateApplication()
    {
    }

    public void onRuning(TAResponse taresponse)
    {
    }

    public void onStart()
    {
    }

    public void onSuccess(TAResponse taresponse)
    {
        handleResponse(taresponse);
    }

    public void registerActivity(int i, Class class1)
    {
        String s = getString(i);
        registeredActivities.put(s, class1);
    }

    public void registerActivity(String s, Class class1)
    {
        registeredActivities.put(s, class1);
    }

    public void registerCommand(int i, Class class1)
    {
        registerCommand(getString(i), class1);
    }

    public void registerCommand(String s, Class class1)
    {
        if (class1 != null)
        {
            mCommandExecutor.registerCommand(s, class1);
        }
    }

    public void setFileCache(TAFileCache tafilecache)
    {
        mFileCache = tafilecache;
    }

    public void setInjector(TAInjector tainjector)
    {
        mInjector = tainjector;
    }

    public void setLayoutLoader(TAILayoutLoader tailayoutloader)
    {
        mLayoutLoader = tailayoutloader;
    }

    public void setSQLiteDatabasePool(TASQLiteDatabasePool tasqlitedatabasepool)
    {
        mSQLiteDatabasePool = tasqlitedatabasepool;
    }

    public void setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        uncaughtExceptionHandler = uncaughtexceptionhandler;
    }

    public void unregisterActivity(int i)
    {
        unregisterActivity(getString(i));
    }

    public void unregisterActivity(String s)
    {
        registeredActivities.remove(s);
    }

    public void unregisterCommand(int i)
    {
        unregisterCommand(getString(i));
    }

    public void unregisterCommand(String s)
    {
        mCommandExecutor.unregisterCommand(s);
    }

}
