// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.connect.a;

import android.content.Context;
import com.tencent.jsutil.JsConfig;
import com.tencent.sdkutil.HttpUtils;
import com.tencent.sdkutil.Security;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.connect.a:
//            a

public class b
{

    private static String b = "0";
    JsConfig a;
    private Context c;

    public b(Context context)
    {
        c = context;
        a = JsConfig.getInstance(c);
    }

    public void a()
    {
        JSONObject jsonobject = a.getConfig();
        long l;
        try
        {
            l = jsonobject.getLong("frequency");
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if ((System.currentTimeMillis() - a.getLastUpdateTime()) / 60000L < l)
        {
            return;
        }
        b = a.getJsVersion();
        if (b == null)
        {
            b = "0";
        }
        b();
    }

    public boolean a(File file)
    {
        com.tencent.connect.a.a.a(file, new File(a.getDirZipTemp()));
        return Security.verify(a.getDirZipTemp());
    }

    public void b()
    {
        Object obj = HttpUtils.getFromUrl((new StringBuilder()).append("http://s.p.qq.com/pub/check_bizup?qver=").append("2.0").append("&hver=").append(b).append("&pf=3").append("&biz=").append("107").append("&uin=").append(0).append("&t=").append(System.currentTimeMillis()).toString());
        if (obj != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (((JSONObject) (obj = new JSONObject(((String) (obj))))).getInt("r") != 0 || ((JSONObject) (obj)).getInt("type") <= 0 || (obj = ((JSONObject) (obj)).getString("url")) == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!com.tencent.connect.a.a.a(((String) (obj)), a.getDirZipTemp(), "js.zip"))
        {
            continue; /* Loop/switch isn't completed */
        }
        a.setLastUpdateTime(System.currentTimeMillis());
        obj = a.readConfigFromZip(new File((new StringBuilder()).append(a.getDirZipTemp()).append(File.separator).append("js.zip").toString()));
        if (obj != null)
        {
            try
            {
                a.setJsVersion(((JSONObject) (obj)).getString("version"));
                a.setFrequency(((JSONObject) (obj)).getLong("frequency"));
                return;
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean c()
    {
        File file;
        for (file = new File((new StringBuilder()).append(a.getDirZipTemp()).append(File.separator).append("js.zip").toString()); !file.exists() || !a(file);)
        {
            return false;
        }

        com.tencent.connect.a.a.a(file, new File(a.getDirJsRoot()));
        com.tencent.connect.a.a.a(a.getDirZipTemp());
        return true;
    }

}
