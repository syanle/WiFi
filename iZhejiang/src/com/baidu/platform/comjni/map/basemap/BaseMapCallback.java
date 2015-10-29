// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.basemap;

import android.os.Bundle;
import android.util.SparseArray;

// Referenced classes of package com.baidu.platform.comjni.map.basemap:
//            b

public class BaseMapCallback
{

    private static SparseArray a = new SparseArray();

    public BaseMapCallback()
    {
    }

    public static int ReqLayerData(Bundle bundle, int i, int j, Bundle bundle1)
    {
        int l = a.size();
        for (int k = 0; k < l; k++)
        {
            b b1 = (b)a.valueAt(k);
            if (b1 != null && b1.a(i))
            {
                return b1.a(bundle, i, j, bundle1);
            }
        }

        return 0;
    }

    public static void addLayerDataInterface(int i, b b1)
    {
        a.put(i, b1);
    }

    public static void removeLayerDataInterface(int i)
    {
        a.remove(i);
    }

}
