// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import org.androidpn.client.LogUtil;

public class BroadcastUtil
{

    public static final String ANDROIDPN_MSG_RECEIVER_READY = "org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY";
    public static final String APN_ACTION_CONNECT = "org.androidpn.client.ANDROIDPN_ACTION_CONNECT";
    public static final String APN_ACTION_DISCONNECT = "org.androidpn.client.ANDORIDPN_ACTION_DISCONNECT";
    public static final String APN_ACTION_LOGIN = "org.androidpn.client.ANDROIDPN_ACTION_LOGIN";
    public static final String APN_ACTION_RECEIPT = "org.androidpn.client.ANDROIDPN_ACTION_RECEIPT";
    public static final String APN_ACTION_RECONNECT = "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT";
    public static final String APN_ACTION_REGISTER = "org.androidpn.client.ANDROIDPN_ACTION_REGISTER";
    public static final String APN_ACTION_REQUEST_STATUS = "org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS";
    public static final String APN_STATUS_CONNECTED = "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED";
    public static final String APN_STATUS_CONNECTING = "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING";
    public static final String APN_STATUS_CONNECT_FAILED = "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED";
    public static final String APN_STATUS_DISCONNECT = "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT";
    public static final String APN_STATUS_LOGINED = "org.androidpn.client.ANDROIDPN_STATUS_LOGINED";
    public static final String APN_STATUS_LOGINING = "org.androdipn.client.ANDROIDPN_STATUS_LOGINING";
    public static final String APN_STATUS_LOGIN_FAIL = "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL";
    public static final String APN_STATUS_LOGIN_SUCCESS = "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS";
    public static final String APN_STATUS_RECONNECTING = "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING";
    public static final String APN_STATUS_RECONNECT_SUCCESS = "org.androidpn.client.ANDROIDPN_STATUS_RECONNECT_SUCCESS";
    private static final String LOG_TAG = LogUtil.makeLogTag(com/githang/android/apnbb/BroadcastUtil);

    public BroadcastUtil()
    {
    }

    public static final void sendBroadcast(Context context, Intent intent)
    {
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static final void sendBroadcast(Context context, String s)
    {
        LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent(s));
    }

}
