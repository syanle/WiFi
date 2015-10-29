// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import com.facebook.AppEventsLogger;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.internal.SessionAuthorizationType;
import com.facebook.internal.SessionTracker;
import com.facebook.model.GraphUser;

// Referenced classes of package com.facebook.widget:
//            LoginButton

private class <init>
    implements android.view.stener
{

    final LoginButton this$0;

    public void onClick(View view)
    {
        Object obj2 = getContext();
        final Session openSession = LoginButton.access$1(LoginButton.this).getOpenSession();
        int i;
        if (openSession != null)
        {
            if (LoginButton.access$2(LoginButton.this))
            {
                Object obj = getResources().getString(com.facebook.android._log_out_action);
                String s = getResources().getString(com.facebook.android._cancel_action);
                if (LoginButton.access$3(LoginButton.this) != null && LoginButton.access$3(LoginButton.this).getName() != null)
                {
                    view = String.format(getResources().getString(com.facebook.android._logged_in_as), new Object[] {
                        LoginButton.access$3(LoginButton.this).getName()
                    });
                } else
                {
                    view = getResources().getString(com.facebook.android._logged_in_using_facebook);
                }
                obj2 = new android.app.ook(((android.content.Context) (obj2)));
                ((android.app.ook) (obj2)).ook(view).le(true).Button(((CharSequence) (obj)), new android.content.DialogInterface.OnClickListener() {

                    final LoginButton.LoginClickListener this$1;
                    private final Session val$openSession;

                    public void onClick(DialogInterface dialoginterface, int j)
                    {
                        openSession.closeAndClearTokenInformation();
                    }

            
            {
                this$1 = LoginButton.LoginClickListener.this;
                openSession = session;
                super();
            }
                }).Button(s, null);
                ((android.app.ener) (obj2)).ener().show();
            } else
            {
                openSession.closeAndClearTokenInformation();
            }
        } else
        {
            Object obj1;
label0:
            {
                view = LoginButton.access$1(LoginButton.this).getSession();
                if (view != null)
                {
                    obj1 = view;
                    if (!view.getState().isClosed())
                    {
                        break label0;
                    }
                }
                LoginButton.access$1(LoginButton.this).setSession(null);
                obj1 = (new com.facebook.ion(((android.content.Context) (obj2)))).d(LoginButton.access$4(LoginButton.this))._mth0();
                Session.setActiveSession(((Session) (obj1)));
            }
            if (!((Session) (obj1)).isOpened())
            {
                view = null;
                if (LoginButton.access$5(LoginButton.this) != null)
                {
                    view = new com.facebook.stener.this._cls0(LoginButton.access$5(LoginButton.this));
                } else
                if (obj2 instanceof Activity)
                {
                    view = new com.facebook.stener.this._cls0((Activity)obj2);
                }
                if (view != null)
                {
                    view.udience(es.access._mth0(LoginButton.access$6(LoginButton.this)));
                    view.ons(es.access._mth1(LoginButton.access$6(LoginButton.this)));
                    view.avior(es.access._mth2(LoginButton.access$6(LoginButton.this)));
                    if (SessionAuthorizationType.PUBLISH.equals(es.access._mth3(LoginButton.access$6(LoginButton.this))))
                    {
                        ((Session) (obj1)).openForPublish(view);
                    } else
                    {
                        ((Session) (obj1)).openForRead(view);
                    }
                }
            }
        }
        view = AppEventsLogger.newLogger(getContext());
        obj = new Bundle();
        if (openSession != null)
        {
            i = 0;
        } else
        {
            i = 1;
        }
        ((Bundle) (obj)).putInt("logging_in", i);
        view.logSdkEvent(LoginButton.access$7(LoginButton.this), null, ((Bundle) (obj)));
    }

    private _cls1.val.openSession()
    {
        this$0 = LoginButton.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
