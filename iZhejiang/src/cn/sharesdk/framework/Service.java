// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            ShareSDK, Platform

public abstract class Service
{
    public static abstract class ServiceEvent
    {

        private final int PLATFORM = 1;
        protected Service service;

        protected HashMap filterShareContent(int i, Platform.ShareParams shareparams, HashMap hashmap)
        {
            shareparams = ShareSDK.getPlatform(ShareSDK.platformIdToName(i)).filterShareContent(shareparams, hashmap);
            hashmap = new HashMap();
            hashmap.put("shareID", ((cn.sharesdk.framework.statistics.b.f.a) (shareparams)).a);
            hashmap.put("shareContent", (new Hashon()).fromJson(shareparams.toString()));
            Ln.e("filterShareContent ==>>%s", new Object[] {
                hashmap
            });
            return hashmap;
        }

        protected HashMap toMap()
        {
            HashMap hashmap = new HashMap();
            DeviceHelper devicehelper = DeviceHelper.getInstance(Service.a(service));
            hashmap.put("deviceid", devicehelper.getDeviceKey());
            hashmap.put("appkey", service.getAppKey());
            hashmap.put("apppkg", devicehelper.getPackageName());
            hashmap.put("appver", Integer.valueOf(devicehelper.getAppVersion()));
            hashmap.put("sdkver", Integer.valueOf(service.getServiceVersionInt()));
            hashmap.put("plat", Integer.valueOf(1));
            hashmap.put("networktype", devicehelper.getDetailNetworkTypeForStatic());
            hashmap.put("deviceData", devicehelper.getDeviceDataNotAES());
            return hashmap;
        }

        public final String toString()
        {
            return (new Hashon()).fromHashMap(toMap());
        }

        public ServiceEvent(Service service1)
        {
            service = service1;
        }
    }


    private Context a;
    private String b;

    public Service()
    {
    }

    static Context a(Service service)
    {
        return service.a;
    }

    void a(Context context)
    {
        a = context;
    }

    void a(String s)
    {
        b = s;
    }

    public String getAppKey()
    {
        return b;
    }

    public Context getContext()
    {
        return a;
    }

    public String getDeviceKey()
    {
        return DeviceHelper.getInstance(a).getDeviceKey();
    }

    protected abstract int getServiceVersionInt();

    public abstract String getServiceVersionName();

    public void onBind()
    {
    }

    public void onUnbind()
    {
    }
}
