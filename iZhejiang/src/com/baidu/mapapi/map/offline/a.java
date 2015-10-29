// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map.offline;

import com.baidu.platform.comapi.map.q;
import com.baidu.platform.comapi.map.u;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map.offline:
//            MKOfflineMap, MKOfflineMapListener, MKOLUpdateElement

class a
    implements u
{

    final MKOfflineMap a;

    a(MKOfflineMap mkofflinemap)
    {
        a = mkofflinemap;
        super();
    }

    public void a(int i, int j)
    {
        i;
        JVM INSTR tableswitch 4 12: default 52
    //                   4 83
    //                   5 52
    //                   6 67
    //                   7 52
    //                   8 151
    //                   9 52
    //                   10 52
    //                   11 52
    //                   12 53;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L1 _L1 _L1 _L5
_L1:
        return;
_L5:
        MKOfflineMap.a(a).a(true, false);
        return;
_L3:
        Object obj;
        MKOfflineMap.b(a).onGetOfflineMapState(6, j);
        return;
_L2:
        if ((obj = a.getAllUpdateInfo()) != null)
        {
            obj = ((List) (obj)).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                MKOLUpdateElement mkolupdateelement = (MKOLUpdateElement)((Iterator) (obj)).next();
                if (mkolupdateelement.update)
                {
                    MKOfflineMap.b(a).onGetOfflineMapState(4, mkolupdateelement.cityID);
                }
            }
        }
          goto _L1
_L4:
        MKOfflineMap.b(a).onGetOfflineMapState(0, 0xffff & j >> 16);
        return;
    }
}
