// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import java.util.HashMap;

// Referenced classes of package com.pubinfo.izhejiang:
//            CountryListActivity

class this._cls0
    implements android.view.tivity._cls3
{

    final CountryListActivity this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i = (int)(motionevent.getY() / (float)CountryListActivity.access$7(CountryListActivity.this));
        if (i > -1 && i < CountryListActivity.access$4(CountryListActivity.this).length)
        {
            view = CountryListActivity.access$4(CountryListActivity.this)[i];
            if (CountryListActivity.access$6(CountryListActivity.this).containsKey(view))
            {
                int j = ((Integer)CountryListActivity.access$6(CountryListActivity.this).get(view)).intValue();
                if (CountryListActivity.access$8(CountryListActivity.this).getHeaderViewsCount() > 0)
                {
                    CountryListActivity.access$8(CountryListActivity.this).setSelectionFromTop(CountryListActivity.access$8(CountryListActivity.this).getHeaderViewsCount() + j, 0);
                } else
                {
                    CountryListActivity.access$8(CountryListActivity.this).setSelectionFromTop(j, 0);
                }
                CountryListActivity.access$9(CountryListActivity.this).setVisibility(0);
                CountryListActivity.access$9(CountryListActivity.this).setText(CountryListActivity.access$4(CountryListActivity.this)[i]);
            }
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 172
    //                   0 190
    //                   1 208
    //                   2 172;
           goto _L1 _L2 _L3 _L1
_L1:
        return true;
_L2:
        CountryListActivity.access$10(CountryListActivity.this).setBackgroundColor(Color.parseColor("#606060"));
        continue; /* Loop/switch isn't completed */
_L3:
        CountryListActivity.access$10(CountryListActivity.this).setBackgroundColor(Color.parseColor("#00ffffff"));
        CountryListActivity.access$9(CountryListActivity.this).setVisibility(8);
        if (true) goto _L1; else goto _L4
_L4:
    }

    ()
    {
        this$0 = CountryListActivity.this;
        super();
    }
}
