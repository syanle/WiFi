// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.graphics.Point;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comjni.map.basemap.a;
import org.json.JSONException;
import org.json.JSONObject;

public class B
{

    private a a;

    public B(a a1)
    {
        a = a1;
    }

    public Point a(b b1)
    {
        if (b1 == null)
        {
            b1 = null;
        } else
        {
            Point point = new Point(0, 0);
            String s = a.b(b1.b(), b1.a());
            b1 = point;
            if (s != null)
            {
                try
                {
                    b1 = new JSONObject(s);
                    point.x = b1.getInt("scrx");
                    point.y = b1.getInt("scry");
                }
                // Misplaced declaration of an exception variable
                catch (b b1)
                {
                    b1.printStackTrace();
                    return point;
                }
                return point;
            }
        }
        return b1;
    }

    public b a(int i, int j)
    {
        b b1;
        Object obj;
        obj = a.a(i, j);
        b1 = new b(0, 0);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        obj = new JSONObject(((String) (obj)));
        b1.b(((JSONObject) (obj)).getInt("geox"));
        b1.a(((JSONObject) (obj)).getInt("geoy"));
        return b1;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return null;
    }
}
