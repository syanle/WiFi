// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socom.util.StatisticsDataUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.net:
//            x

public class w extends b
{

    private static final String k = "/app/oper/";
    private static final String l = "StatisticsDataRequest";
    private Context a;
    private SocializeEntity j;

    public w(Context context, SocializeEntity socializeentity)
    {
        super(context, "", com/umeng/socialize/net/x, socializeentity, 0, com.umeng.socialize.net.a.b.b.b);
        a = context;
        j = socializeentity;
    }

    protected String a()
    {
        return (new StringBuilder("/app/oper/")).append(SocializeUtils.getAppkey(a)).append("/").toString();
    }

    protected Map a(Map map)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Iterator iterator;
        try
        {
            StatisticsDataUtils.getStatisticsData(a);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        StatisticsDataUtils.getStatisticsData(a);
        obj2 = j.getStatisticsData();
        map.remove("opid");
        map = new HashMap();
        iterator = ((Map) (obj2)).keySet().iterator();
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        obj = j.getOauthStatisticsData();
        obj1 = ((Map) (obj)).keySet().iterator();
_L6:
        if (((Iterator) (obj1)).hasNext()) goto _L4; else goto _L3
_L3:
        obj = j.getSharkStatisticsData(a);
        if (((Map) (obj)).containsKey("shake"))
        {
            map.put("shake", ((Map) (obj)).get("shake"));
        }
        obj = new JSONObject();
        obj1 = map.keySet().iterator();
_L7:
        if (!((Iterator) (obj1)).hasNext())
        {
            map = new JSONObject();
            JSONException jsonexception1;
            int i;
            try
            {
                map.put("param", ((JSONObject) (obj)).toString());
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
            return a("StatisticsDataRequest", map.toString());
        }
        break MISSING_BLOCK_LABEL_360;
_L2:
        obj = (SHARE_MEDIA)iterator.next();
        obj1 = (StringBuilder)((Map) (obj2)).get(obj);
        if (!TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            if (obj == SHARE_MEDIA.GENERIC)
            {
                i = 0;
            } else
            {
                i = SHARE_MEDIA.getPlatformOperation(((SHARE_MEDIA) (obj)));
            }
            obj = obj1;
            if (((StringBuilder) (obj1)).substring(((StringBuilder) (obj1)).length() - 1, ((StringBuilder) (obj1)).length()).equals("+"))
            {
                obj = ((StringBuilder) (obj1)).deleteCharAt(((StringBuilder) (obj1)).length() - 1);
            }
            map = StatisticsDataUtils.convertStatisticsData(String.valueOf(i), ((StringBuilder) (obj)).toString(), map);
        }
          goto _L5
_L4:
        obj2 = (String)((Iterator) (obj1)).next();
        i = ((Integer)((Map) (obj)).get(obj2)).intValue();
        if (i > 0)
        {
            map.put(obj2, (new StringBuilder(String.valueOf(i))).toString());
        }
          goto _L6
        obj2 = (String)((Iterator) (obj1)).next();
        try
        {
            ((JSONObject) (obj)).put(((String) (obj2)), Integer.parseInt(map.get(obj2).toString()));
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
        }
          goto _L7
    }
}
