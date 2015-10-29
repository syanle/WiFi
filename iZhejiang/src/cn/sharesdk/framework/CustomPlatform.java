// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            Platform

public abstract class CustomPlatform extends Platform
{

    public CustomPlatform(Context context)
    {
        super(context);
    }

    protected abstract boolean checkAuthorize(int i, Object obj);

    protected void doAuthorize(String as[])
    {
    }

    protected void doCustomerProtocol(String s, String s1, int i, HashMap hashmap, HashMap hashmap1)
    {
    }

    protected void doShare(Platform.ShareParams shareparams)
    {
    }

    protected final cn.sharesdk.framework.statistics.b.f.a filterShareContent(Platform.ShareParams shareparams, HashMap hashmap)
    {
        return null;
    }

    protected void follow(String s)
    {
    }

    protected int getCustomPlatformId()
    {
        return 1;
    }

    protected void getFriendList(int i, int j, String s)
    {
    }

    public abstract String getName();

    protected final int getPlatformId()
    {
        return -Math.abs(getCustomPlatformId());
    }

    public int getVersion()
    {
        return 0;
    }

    protected final void initDevInfo(String s)
    {
    }

    protected final void setNetworkDevinfo()
    {
    }

    protected void timeline(int i, int j, String s)
    {
    }

    protected void userInfor(String s)
    {
    }
}
