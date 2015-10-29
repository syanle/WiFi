// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import com.baidu.mapapi.map.offline.MKOLSearchRecord;
import com.baidu.mapapi.map.offline.MKOLUpdateElement;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.a.d;
import com.baidu.platform.comapi.map.p;
import com.baidu.platform.comapi.map.s;
import java.util.ArrayList;
import java.util.Iterator;

public class c
{

    public static MKOLSearchRecord a(p p1)
    {
        if (p1 == null)
        {
            return null;
        }
        MKOLSearchRecord mkolsearchrecord = new MKOLSearchRecord();
        mkolsearchrecord.cityID = p1.a;
        mkolsearchrecord.cityName = p1.b;
        mkolsearchrecord.cityType = p1.d;
        int j;
        if (p1.a() != null)
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = p1.a().iterator();
            int i = 0;
            do
            {
                j = i;
                if (!iterator.hasNext())
                {
                    break;
                }
                p p2 = (p)iterator.next();
                arraylist.add(a(p2));
                j = p2.c;
                mkolsearchrecord.childCities = arraylist;
                i = j + i;
            } while (true);
        } else
        {
            j = 0;
        }
        if (mkolsearchrecord.cityType == 1)
        {
            mkolsearchrecord.size = j;
        } else
        {
            mkolsearchrecord.size = p1.c;
        }
        return mkolsearchrecord;
    }

    public static MKOLUpdateElement a(s s1)
    {
        if (s1 == null)
        {
            return null;
        }
        MKOLUpdateElement mkolupdateelement = new MKOLUpdateElement();
        mkolupdateelement.cityID = s1.a;
        mkolupdateelement.cityName = s1.b;
        if (s1.g != null)
        {
            mkolupdateelement.geoPt = com.baidu.mapapi.model.a.a(new b(s1.g.b(), s1.g.a()));
        }
        mkolupdateelement.level = s1.e;
        mkolupdateelement.ratio = s1.i;
        mkolupdateelement.serversize = s1.h;
        if (s1.i == 100)
        {
            mkolupdateelement.size = s1.h;
        } else
        {
            mkolupdateelement.size = (s1.h * s1.i) / 100;
        }
        mkolupdateelement.status = s1.l;
        mkolupdateelement.update = s1.j;
        return mkolupdateelement;
    }
}
