// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.tools;

import android.os.Bundle;
import com.baidu.platform.comapi.a.d;
import java.util.ArrayList;

// Referenced classes of package com.baidu.platform.comjni.tools:
//            JNITools, ParcelItem

public class a
{

    public static double a(d d1, d d2)
    {
        Bundle bundle = new Bundle();
        bundle.putDouble("x1", d1.a);
        bundle.putDouble("y1", d1.b);
        bundle.putDouble("x2", d2.a);
        bundle.putDouble("y2", d2.b);
        JNITools.GetDistanceByMC(bundle);
        return bundle.getDouble("distance");
    }

    public static com.baidu.platform.comapi.a.a a(String s)
    {
        if (s == null || s.equals(""))
        {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("strkey", s);
        JNITools.TransGeoStr2ComplexPt(bundle);
        s = new com.baidu.platform.comapi.a.a();
        Bundle bundle1 = bundle.getBundle("map_bound");
        if (bundle1 != null)
        {
            Bundle bundle2 = bundle1.getBundle("ll");
            if (bundle2 != null)
            {
                s.b = new d((int)bundle2.getDouble("ptx"), (int)bundle2.getDouble("pty"));
            }
            bundle1 = bundle1.getBundle("ru");
            if (bundle1 != null)
            {
                s.c = new d((int)bundle1.getDouble("ptx"), (int)bundle1.getDouble("pty"));
            }
        }
        ParcelItem aparcelitem[] = (ParcelItem[])(ParcelItem[])bundle.getParcelableArray("poly_line");
        for (int i = 0; i < aparcelitem.length; i++)
        {
            if (((com.baidu.platform.comapi.a.a) (s)).d == null)
            {
                s.d = new ArrayList();
            }
            Bundle bundle3 = aparcelitem[i].getBundle();
            if (bundle3 == null)
            {
                continue;
            }
            ParcelItem aparcelitem1[] = (ParcelItem[])(ParcelItem[])bundle3.getParcelableArray("point_array");
            ArrayList arraylist = new ArrayList();
            for (int j = 0; j < aparcelitem1.length; j++)
            {
                Bundle bundle4 = aparcelitem1[j].getBundle();
                if (bundle4 != null)
                {
                    arraylist.add(new d((int)bundle4.getDouble("ptx"), (int)bundle4.getDouble("pty")));
                }
            }

            arraylist.trimToSize();
            ((com.baidu.platform.comapi.a.a) (s)).d.add(arraylist);
        }

        ((com.baidu.platform.comapi.a.a) (s)).d.trimToSize();
        s.a = (int)bundle.getDouble("type");
        return s;
    }
}
