// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.navi;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import java.net.URISyntaxException;

// Referenced classes of package com.baidu.mapapi.navi:
//            NaviPara, IllegalNaviArgumentException, BaiduMapAppNotSupportNaviException

public class BaiduMapNavigation
{

    public BaiduMapNavigation()
    {
    }

    private static int a(Context context)
    {
        context = context.getPackageManager().getPackageInfo("com.baidu.BaiduMap", 0).versionName;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (context.length() <= 0)
        {
            return 0;
        }
        int i = Integer.valueOf(context.trim().replace(".", "").trim()).intValue();
        return i;
        context;
        return 0;
    }

    private static String a(NaviPara navipara)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("intent://map/direction?");
        stringbuffer.append("origin=");
        if (navipara.startName != null)
        {
            stringbuffer.append((new StringBuilder()).append("name:").append(navipara.startName).append("|").toString());
        }
        stringbuffer.append(String.format("latlng:%f,%f", new Object[] {
            Double.valueOf(navipara.startPoint.latitude), Double.valueOf(navipara.startPoint.longitude)
        }));
        stringbuffer.append("&destination=");
        if (navipara.endName != null)
        {
            stringbuffer.append((new StringBuilder()).append("name:").append(navipara.endName).append("|").toString());
        }
        stringbuffer.append(String.format("latlng:%f,%f", new Object[] {
            Double.valueOf(navipara.endPoint.latitude), Double.valueOf(navipara.endPoint.longitude)
        }));
        stringbuffer.append("&coord_type=bd09ll");
        stringbuffer.append("&mode=navigation");
        stringbuffer.append("#Intent;scheme=bdapp;");
        stringbuffer.append("package=com.baidu.BaiduMap;");
        stringbuffer.append("end");
        return stringbuffer.toString();
    }

    private static String b(Context context)
    {
label0:
        {
            Object obj = null;
            PackageManager packagemanager;
            try
            {
                packagemanager = context.getApplicationContext().getPackageManager();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                packagemanager = null;
                context = obj;
                if (false)
                {
                } else
                {
                    break label0;
                }
            }
            try
            {
                context = packagemanager.getApplicationInfo(context.getPackageName(), 0);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context = obj;
            }
        }
        return (String)packagemanager.getApplicationLabel(context);
    }

    public static void getLatestBaiduMapApp(Context context)
    {
        if (context == null)
        {
            return;
        } else
        {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse("http://mo.baidu.com/map/"));
            context.startActivity(intent);
            return;
        }
    }

    public static void openBaiduMapNavi(NaviPara navipara, Context context)
    {
        if (navipara == null || context == null)
        {
            return;
        }
        if (navipara.endPoint == null || navipara.startPoint == null)
        {
            throw new IllegalNaviArgumentException("start point or end point can not be null.");
        }
        int i = a(context);
        if (i == 0)
        {
            throw new BaiduMapAppNotSupportNaviException("BaiduMap app is not installed");
        }
        if (i < 500)
        {
            throw new BaiduMapAppNotSupportNaviException("current baidumap app version not support navigation.");
        }
        try
        {
            context.startActivity(Intent.parseUri(a(navipara), 0));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (NaviPara navipara)
        {
            navipara.printStackTrace();
        }
    }

    public static void openWebBaiduMapNavi(NaviPara navipara, Context context)
        throws IllegalNaviArgumentException
    {
        if (navipara == null || context == null)
        {
            return;
        }
        if (navipara.startPoint != null && navipara.endPoint != null)
        {
            Object obj = com.baidu.mapapi.model.a.a(navipara.startPoint);
            navipara = com.baidu.mapapi.model.a.a(navipara.endPoint);
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("http://daohang.map.baidu.com/mobile/#navi/naving/start=");
            stringbuilder.append(((b) (obj)).b());
            stringbuilder.append(",");
            stringbuilder.append(((b) (obj)).a());
            stringbuilder.append("&endp=");
            stringbuilder.append(navipara.b());
            stringbuilder.append(",");
            stringbuilder.append(navipara.a());
            stringbuilder.append("&fromprod=");
            stringbuilder.append(b(context));
            stringbuilder.append("/vt=map&state=entry");
            navipara = Uri.parse(stringbuilder.toString());
            obj = new Intent();
            ((Intent) (obj)).setAction("android.intent.action.VIEW");
            ((Intent) (obj)).setData(navipara);
            context.startActivity(((Intent) (obj)));
            return;
        }
        if (navipara.startName != null && !navipara.startName.equals("") && navipara.endName != null && !navipara.endName.equals(""))
        {
            Object obj1 = new StringBuilder();
            ((StringBuilder) (obj1)).append("http://daohang.map.baidu.com/mobile/#search/search/qt=nav&sn=2$$$$$$");
            ((StringBuilder) (obj1)).append(navipara.startName);
            ((StringBuilder) (obj1)).append("$$$$$$&en=2$$$$$$");
            ((StringBuilder) (obj1)).append(navipara.endName);
            ((StringBuilder) (obj1)).append("$$$$$$&fromprod=");
            ((StringBuilder) (obj1)).append(b(context));
            navipara = Uri.parse(((StringBuilder) (obj1)).toString());
            obj1 = new Intent();
            ((Intent) (obj1)).setAction("android.intent.action.VIEW");
            ((Intent) (obj1)).setData(navipara);
            context.startActivity(((Intent) (obj1)));
            return;
        } else
        {
            throw new IllegalNaviArgumentException("you must set start and end point or set the start and end name.");
        }
    }
}
