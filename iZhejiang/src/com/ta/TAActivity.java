// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import com.ta.mvc.command.TAIdentityCommand;
import com.ta.mvc.common.TAIResponseListener;
import com.ta.mvc.common.TARequest;
import com.ta.mvc.common.TAResponse;
import com.ta.util.TAInjector;
import com.ta.util.TALogger;
import com.ta.util.layoutloader.TAILayoutLoader;

// Referenced classes of package com.ta:
//            TAApplication, TAAppManager

public abstract class TAActivity extends Activity
{

    private static final int DIALOG_ID_PROGRESS_DEFAULT = 0x174980;
    private static final String TAIDENTITYCOMMAND = "taidentitycommand";
    private String layouName;
    private String moduleName;

    public TAActivity()
    {
        moduleName = "";
        layouName = "";
    }

    private void initActivity()
    {
        getModuleName();
        getLayouName();
        initInjector();
        loadDefautLayout();
    }

    private void initInjector()
    {
        getTAApplication().getInjector().injectResource(this);
        getTAApplication().getInjector().inject(this);
    }

    private void loadDefautLayout()
    {
        try
        {
            setContentView(getTAApplication().getLayoutLoader().getLayoutID(layouName));
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    private void notifiyApplicationActivityCreated()
    {
        getTAApplication().onActivityCreated(this);
    }

    private void notifiyApplicationActivityCreating()
    {
        getTAApplication().onActivityCreating(this);
    }

    public final void back()
    {
        getTAApplication().back();
    }

    public final void doActivity(int i)
    {
        doActivity(i, null);
    }

    public final void doActivity(int i, Bundle bundle)
    {
        TARequest tarequest = new TARequest();
        tarequest.setData(bundle);
        tarequest.setActivityKeyResID(i);
        doCommand("taidentitycommand", tarequest);
    }

    public final void doCommand(int i, TARequest tarequest)
    {
        doCommand(getString(i), tarequest, null, true);
    }

    public final void doCommand(int i, TARequest tarequest, TAIResponseListener tairesponselistener)
    {
        doCommand(getString(i), tarequest, tairesponselistener, true);
    }

    public final void doCommand(int i, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag)
    {
        String s = getString(i);
        TALogger.i(this, (new StringBuilder("go with cmdid=")).append(s).append(", request: ").append(tarequest).toString());
        doCommand(s, tarequest, tairesponselistener, flag, true);
    }

    public final void doCommand(int i, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag, boolean flag1)
    {
        String s = getString(i);
        TALogger.i(this, (new StringBuilder("go with cmdid=")).append(s).append(", record: ").append(flag1).append(", request: ").append(tarequest).toString());
        doCommand(s, tarequest, tairesponselistener, flag, flag1, false);
    }

    public final void doCommand(int i, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag, boolean flag1, boolean flag2)
    {
        doCommand(getString(i), tarequest, tairesponselistener, flag, flag1, flag2);
    }

    public final void doCommand(String s, TARequest tarequest)
    {
        doCommand(s, tarequest, null, true);
    }

    public final void doCommand(String s, TARequest tarequest, TAIResponseListener tairesponselistener)
    {
        doCommand(s, tarequest, tairesponselistener, true);
    }

    public final void doCommand(String s, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag)
    {
        TALogger.i(this, (new StringBuilder("go with cmdid=")).append(s).append(", request: ").append(tarequest).toString());
        doCommand(s, tarequest, tairesponselistener, flag, true);
    }

    public final void doCommand(String s, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag, boolean flag1)
    {
        TALogger.i(this, (new StringBuilder("go with cmdid=")).append(s).append(", record: ").append(flag1).append(", request: ").append(tarequest).toString());
        doCommand(s, tarequest, tairesponselistener, flag, flag1, false);
    }

    public final void doCommand(String s, TARequest tarequest, TAIResponseListener tairesponselistener, boolean flag, boolean flag1, boolean flag2)
    {
        if (flag)
        {
            showProgress();
        }
        getTAApplication().doCommand(s, tarequest, tairesponselistener, flag1, flag2);
    }

    public void exitApp()
    {
        getTAApplication().exitApp(Boolean.valueOf(false));
    }

    public void exitApp(Boolean boolean1)
    {
        getTAApplication().exitApp(boolean1);
    }

    public void exitAppToBackground()
    {
        getTAApplication().exitApp(Boolean.valueOf(true));
    }

    public void finish()
    {
        super.finish();
    }

    public String getLayouName()
    {
        String s = layouName;
        if (s == null || s.equalsIgnoreCase(""))
        {
            layouName = moduleName;
        }
        return s;
    }

    public String getModuleName()
    {
        Object obj;
label0:
        {
            String s = moduleName;
            if (s != null)
            {
                obj = s;
                if (!s.equalsIgnoreCase(""))
                {
                    break label0;
                }
            }
            obj = getClass().getName().substring(0, getClass().getName().length() - 8).split("\\.");
            obj = obj[obj.length - 1].toLowerCase();
            moduleName = ((String) (obj));
        }
        return ((String) (obj));
    }

    public TAApplication getTAApplication()
    {
        return (TAApplication)getApplication();
    }

    protected void hideProgress()
    {
        try
        {
            removeDialog(0x174980);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return;
        }
    }

    protected void onAfterOnCreate(Bundle bundle)
    {
    }

    protected void onAfterSetContentView()
    {
    }

    public void onBackPressed()
    {
        back();
    }

    public void onConnect(com.ta.util.netstate.TANetWorkUtil.netType nettype)
    {
    }

    protected void onCreate(Bundle bundle)
    {
        notifiyApplicationActivityCreating();
        onPreOnCreate(bundle);
        super.onCreate(bundle);
        getTAApplication().getAppManager().addActivity(this);
        initActivity();
        onAfterOnCreate(bundle);
        notifiyApplicationActivityCreated();
    }

    protected Dialog onCreateDialog(int i)
    {
        ProgressDialog progressdialog;
        switch (i)
        {
        default:
            return super.onCreateDialog(i);

        case 1526144: 
            progressdialog = new ProgressDialog(this);
            break;
        }
        progressdialog.setMessage("\u6B63\u5728\u52A0\u8F7D...");
        progressdialog.setCancelable(true);
        return progressdialog;
    }

    public void onDisConnect()
    {
    }

    protected void onPreOnCreate(Bundle bundle)
    {
        getTAApplication().registerCommand("taidentitycommand", com/ta/mvc/command/TAIdentityCommand);
    }

    public void preProcessData(TAResponse taresponse)
    {
    }

    public void processData(TAResponse taresponse)
    {
    }

    public void setContentView(int i)
    {
        super.setContentView(i);
        getTAApplication().getInjector().injectView(this);
        onAfterSetContentView();
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        getTAApplication().getInjector().injectView(this);
        onAfterSetContentView();
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        getTAApplication().getInjector().injectView(this);
        onAfterSetContentView();
    }

    protected void setLayouName(String s)
    {
        layouName = s;
    }

    public void setModuleName(String s)
    {
        moduleName = s;
    }

    protected void showProgress()
    {
        showDialog(0x174980);
    }
}
