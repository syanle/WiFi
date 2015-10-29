// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.os.Handler;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            AroundFragment

public class this._cls0 extends Thread
{

    final AroundFragment this$0;

    public void run()
    {
        if (isAdded() && checkNetWork())
        {
            initMap();
            if (md != null && md.size() > 0)
            {
                AroundFragment.access$0(AroundFragment.this, false);
                listHandler.sendEmptyMessage(1);
                return;
            } else
            {
                AroundFragment.access$0(AroundFragment.this, false);
                AroundFragment.access$1(AroundFragment.this, "0", getActivity());
                return;
            }
        } else
        {
            listHandler.sendEmptyMessage(3);
            return;
        }
    }

    public ()
    {
        this$0 = AroundFragment.this;
        super();
    }
}
