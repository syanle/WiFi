// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.qqconnect.dataprovider;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import com.tencent.qqconnect.dataprovider.datatype.TextAndMediaPath;
import com.tencent.qqconnect.dataprovider.datatype.TextOnly;
import java.io.File;
import java.lang.ref.WeakReference;

public final class CallbackManager
{

    private static final String HTTP_PREFIX = "http://";
    private String mAppid;
    private WeakReference mContext;
    private Uri mData;
    private String mFromActivityClassName;
    private String mFromPackageName;
    private boolean mIsCallFromTencentApp;
    private int mRequestDataTypeFlag;
    private String mSrcAction;

    public CallbackManager(Activity activity)
    {
        mIsCallFromTencentApp = false;
        mContext = new WeakReference(activity.getApplicationContext());
        activity = activity.getIntent();
        if (activity != null)
        {
            mData = activity.getData();
            mFromPackageName = activity.getStringExtra("srcPackageName");
            mFromActivityClassName = activity.getStringExtra("srcClassName");
            mSrcAction = activity.getStringExtra("srcAction");
            mRequestDataTypeFlag = activity.getIntExtra("requestDataTypeFlag", 0);
            mAppid = activity.getStringExtra("params_appid");
            if (mData != null && mFromActivityClassName != null)
            {
                mIsCallFromTencentApp = true;
            }
        }
    }

    private int BackToTencentApp(Bundle bundle)
    {
        if (!mIsCallFromTencentApp)
        {
            return -2;
        } else
        {
            Intent intent = new Intent();
            intent.setClassName(mFromPackageName, mFromActivityClassName);
            intent.setAction(mSrcAction);
            bundle.putString("params_appid", mAppid);
            intent.putExtras(bundle);
            intent.setFlags(0x10000000);
            ((Context)mContext.get()).startActivity(intent);
            return 0;
        }
    }

    private int checkFilePath(String s)
    {
        boolean flag = false;
        byte byte0;
        if (s == null)
        {
            byte0 = -7;
        } else
        {
            String s1 = s.toLowerCase();
            byte0 = flag;
            if (!s1.startsWith("http://"))
            {
                if (Environment.getExternalStorageState().equals("mounted"))
                {
                    if (!s1.startsWith(Environment.getExternalStorageDirectory().toString().toLowerCase()))
                    {
                        return -5;
                    }
                } else
                {
                    return -10;
                }
                s = new File(s);
                if (!s.exists() || s.isDirectory())
                {
                    return -8;
                }
                long l = s.length();
                if (l == 0L)
                {
                    return -9;
                }
                byte0 = flag;
                if (l > 0x40000000L)
                {
                    return -6;
                }
            }
        }
        return byte0;
    }

    public int getRequestDateTypeFlag()
    {
        return mRequestDataTypeFlag;
    }

    public boolean isCallFromTencentApp()
    {
        return mIsCallFromTencentApp;
    }

    public boolean isSupportType(int i)
    {
        return (getRequestDateTypeFlag() & i) != 0;
    }

    public int sendTextAndImagePath(String s, String s1)
    {
        int i;
        if (!isSupportType(1))
        {
            i = -1;
        } else
        {
            int j = checkFilePath(s1);
            i = j;
            if (j == 0)
            {
                s = new TextAndMediaPath(s, s1);
                s1 = new Bundle();
                s1.putInt("contentDataType", 1);
                s1.putParcelable("contentData", s);
                return BackToTencentApp(s1);
            }
        }
        return i;
    }

    public int sendTextAndVideoPath(String s, String s1)
    {
        int i;
        if (!isSupportType(2))
        {
            i = -1;
        } else
        {
            int j = checkFilePath(s1);
            i = j;
            if (j == 0)
            {
                s = new TextAndMediaPath(s, s1);
                s1 = new Bundle();
                s1.putInt("contentDataType", 2);
                s1.putParcelable("contentData", s);
                return BackToTencentApp(s1);
            }
        }
        return i;
    }

    public int sendTextOnly(String s)
    {
        if (!isSupportType(4))
        {
            return -1;
        } else
        {
            s = new TextOnly(s);
            Bundle bundle = new Bundle();
            bundle.putInt("contentDataType", 4);
            bundle.putParcelable("contentData", s);
            return BackToTencentApp(bundle);
        }
    }
}
