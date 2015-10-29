// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


public final class BDLocationStatusCodes
{

    public static final int ERROR = 1;
    public static final int GEOFENCE_NOT_AVAIABLE = 1000;
    public static final int GEOFENCE_SERVICE_NO_ALIVIABLE = 1002;
    public static final int GEOFENCE_TOO_MANY_GEOFENCES = 1001;
    public static final int SUCCESS = 0;

    public BDLocationStatusCodes()
    {
    }

    public static int getStatusCode(int i)
    {
        if (i >= 0 && i <= 1 || 1000 <= i && i <= 1002)
        {
            return i;
        } else
        {
            return 1;
        }
    }
}
