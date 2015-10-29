// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            f, ShareSDK, PlatformDb, PlatformActionListener, 
//            d

public abstract class Platform
{
    public static class ShareParams extends d
    {

        public String imagePath;
        public String text;

        public ShareParams()
        {
        }

        public ShareParams(String s)
        {
            super(s);
        }

        public ShareParams(HashMap hashmap)
        {
            super(hashmap);
        }
    }


    public static final int ACTION_AUTHORIZING = 1;
    protected static final int ACTION_CUSTOMER = 0xa0000;
    public static final int ACTION_FOLLOWING_USER = 6;
    public static final int ACTION_GETTING_FRIEND_LIST = 2;
    public static final int ACTION_SENDING_DIRECT_MESSAGE = 5;
    public static final int ACTION_SHARE = 9;
    public static final int ACTION_TIMELINE = 7;
    public static final int ACTION_USER_INFOR = 8;
    public static final int CUSTOMER_ACTION_MASK = 65535;
    public static final int SHARE_APPS = 7;
    public static final int SHARE_EMOJI = 9;
    public static final int SHARE_FILE = 8;
    public static final int SHARE_IMAGE = 2;
    public static final int SHARE_MUSIC = 5;
    public static final int SHARE_TEXT = 1;
    public static final int SHARE_VIDEO = 6;
    public static final int SHARE_WEBPAGE = 4;
    private f a;
    protected final Context context;
    protected final PlatformDb db;
    protected PlatformActionListener listener;

    public Platform(Context context1)
    {
        context = context1;
        a = new f(this, context1);
        db = a.g();
        listener = a.i();
    }

    public void SSOSetting(boolean flag)
    {
        a.a(flag);
    }

    void a()
    {
        a.a(false);
        a.a(getName());
    }

    protected void afterRegister(int i, Object obj)
    {
        a.b(i, obj);
    }

    public void authorize()
    {
        authorize(null);
    }

    public void authorize(String as[])
    {
        a.a(as);
    }

    boolean b()
    {
        return a.f();
    }

    protected abstract boolean checkAuthorize(int i, Object obj);

    protected void copyDevinfo(String s, String s1)
    {
        ShareSDK.a(s, s1);
    }

    protected void copyNetworkDevinfo(int i, int j)
    {
        ShareSDK.a(i, j);
    }

    public void customerProtocol(String s, String s1, short word0, HashMap hashmap, HashMap hashmap1)
    {
        a.a(s, s1, word0, hashmap, hashmap1);
    }

    protected abstract void doAuthorize(String as[]);

    protected abstract void doCustomerProtocol(String s, String s1, int i, HashMap hashmap, HashMap hashmap1);

    protected abstract void doShare(ShareParams shareparams);

    protected abstract cn.sharesdk.framework.statistics.b.f.a filterShareContent(ShareParams shareparams, HashMap hashmap);

    protected abstract void follow(String s);

    public void followFriend(String s)
    {
        a.b(s);
    }

    public Context getContext()
    {
        return context;
    }

    public PlatformDb getDb()
    {
        return db;
    }

    public String getDevinfo(String s)
    {
        return getDevinfo(getName(), s);
    }

    public String getDevinfo(String s, String s1)
    {
        return ShareSDK.b(s, s1);
    }

    protected abstract void getFriendList(int i, int j, String s);

    public int getId()
    {
        return a.a();
    }

    public abstract String getName();

    protected String getNetworkDevinfo(int i, String s, String s1)
    {
        return a.a(i, s, s1);
    }

    protected String getNetworkDevinfo(String s, String s1)
    {
        return getNetworkDevinfo(getPlatformId(), s, s1);
    }

    public PlatformActionListener getPlatformActionListener()
    {
        return a.c();
    }

    protected abstract int getPlatformId();

    public String getShortLintk(String s, boolean flag)
    {
        return a.a(s, flag);
    }

    public int getSortId()
    {
        return a.b();
    }

    public void getTimeLine(String s, int i, int j)
    {
        a.a(s, i, j);
    }

    public abstract int getVersion();

    protected abstract void initDevInfo(String s);

    protected void innerAuthorize(int i, Object obj)
    {
        a.a(i, obj);
    }

    public boolean isAuthValid()
    {
        return a.d();
    }

    public boolean isClientValid()
    {
        return false;
    }

    public boolean isSSODisable()
    {
        return a.e();
    }

    public boolean isValid()
    {
        return a.d();
    }

    public void listFriend(int i, int j, String s)
    {
        a.a(i, j, s);
    }

    public void removeAccount()
    {
        a.h();
    }

    public void removeAccount(boolean flag)
    {
        a.h();
        ShareSDK.removeCookieOnAuthorize(flag);
    }

    protected abstract void setNetworkDevinfo();

    public void setPlatformActionListener(PlatformActionListener platformactionlistener)
    {
        a.a(platformactionlistener);
    }

    public void share(ShareParams shareparams)
    {
        a.a(shareparams);
    }

    public void showUser(String s)
    {
        a.c(s);
    }

    protected abstract void timeline(int i, int j, String s);

    protected String uploadImageToFileServer(Bitmap bitmap)
    {
        return a.a(bitmap);
    }

    protected String uploadImageToFileServer(String s)
    {
        return a.d(s);
    }

    protected abstract void userInfor(String s);
}
