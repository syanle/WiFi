// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;


public class Constant
{

    public static final String apsEncryptKey = "autonavi00spas$#@!666666";
    public static final int apsNetworkTimeout = 20;
    public static final String apsPreferencesName = "APS_Preferences";
    public static final String apsServer = "http://aps.amap.com/APS/r";
    public static int apsVerion = 0;
    public static final int defaultCgiSignal = 10;
    public static final boolean enableApsLog = false;
    public static final int gpsScanSpan = 5;
    public static final int imeiMaxSalt = 10000;
    public static final String imeiSaltPreferencesKey = "imeisalt";
    public static final int minRequestDuration = 2;
    public static final long minSdcardAvaliableSizeToWrite = 50L;
    public static final int requestSystemNetworkLocationMinTime = 20;
    public static final int requestSystemNetworkLocationTimeout = 3;
    public static final String sdcardLogPath = "/apsapi/tmp.dat";
    public static final String version = "1.0.201208161816";

    public Constant()
    {
    }

    static 
    {
        apsVerion = 2;
    }
}
