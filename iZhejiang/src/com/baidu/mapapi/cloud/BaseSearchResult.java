// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseSearchResult
{

    public static final int STATUS_CODE_AK_ERROR = 5;
    public static final int STATUS_CODE_PARAM_ERROR = 2;
    public static final int STATUS_CODE_PERMISSION_AND_QUOTA_ERROR = 201;
    public static final int STATUS_CODE_PERMISSION_ERROR = 3;
    public static final int STATUS_CODE_QUOTA_ERROR = 4;
    public static final int STATUS_CODE_SECURITY_CODE_ERROR = 102;
    public static final int STATUS_CODE_SERVER_ERROR = 1;
    public static final int STATUS_CODE_SERVICE_DISABLED = 101;
    public static final int STATUS_CODE_SUCCEED = 0;
    public int size;
    public int status;
    public int total;

    public BaseSearchResult()
    {
        status = -1;
    }

    void a(JSONObject jsonobject)
        throws JSONException
    {
        status = jsonobject.optInt("status");
        if (status >= 202)
        {
            status = 201;
        }
        size = jsonobject.optInt("size");
        total = jsonobject.optInt("total");
    }
}
