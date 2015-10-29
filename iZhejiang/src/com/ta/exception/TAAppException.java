// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.exception;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Looper;
import android.os.Process;

public class TAAppException
    implements Thread.UncaughtExceptionHandler
{

    public static final String TAG = "CrashHandler";
    private static TAAppException instance;
    private Context mContext;
    private Thread.UncaughtExceptionHandler mDefaultHandler;

    private TAAppException(Context context)
    {
        init(context);
    }

    public static TAAppException getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new TAAppException(context);
        }
        return instance;
    }

    private boolean handleException(Throwable throwable)
    {
        if (throwable == null)
        {
            return true;
        } else
        {
            (new Thread() {

                final TAAppException this$0;

                public void run()
                {
                    Looper.prepare();
                    (new android.app.AlertDialog.Builder(mContext)).setTitle("\u63D0\u793A").setCancelable(false).setMessage("\u7A0B\u5E8F\u5D29\u6E83\u4E86...").setNeutralButton("\u6211\u77E5\u9053\u4E86", new android.content.DialogInterface.OnClickListener() {

                        final _cls1 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            Process.killProcess(Process.myPid());
                            System.exit(10);
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }).create().show();
                    Looper.loop();
                }

            
            {
                this$0 = TAAppException.this;
                super();
            }
            }).start();
            return true;
        }
    }

    private void init(Context context)
    {
        mContext = context;
        mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        if (!handleException(throwable) && mDefaultHandler != null)
        {
            mDefaultHandler.uncaughtException(thread, throwable);
            return;
        } else
        {
            Process.killProcess(Process.myPid());
            System.exit(10);
            return;
        }
    }

}
