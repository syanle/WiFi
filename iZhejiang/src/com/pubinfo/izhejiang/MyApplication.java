// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.app.Application;
import com.baidu.mapapi.SDKInitializer;
import com.qihoo.linker.logcollector.LogCollector;
import com.qihoo.linker.logcollector.upload.HttpParameters;

public class MyApplication extends Application
{

    private static final String UPLOAD_URL = "http://xxxxxxxx";

    public MyApplication()
    {
    }

    public void onCreate()
    {
        super.onCreate();
        SDKInitializer.initialize(getApplicationContext());
        HttpParameters httpparameters = new HttpParameters();
        httpparameters.add("key1", "value1");
        httpparameters.add("key2", "value2");
        httpparameters.add("key3", "value3");
        LogCollector.setDebugMode(true);
        LogCollector.init(getApplicationContext(), "http://xxxxxxxx", httpparameters);
    }
}
