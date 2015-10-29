// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.os.Handler;
import android.os.Message;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.cat.data.ComData;
import com.cat.data.MapData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            AroundFragment

class this._cls0 extends Handler
{

    final AroundFragment this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 6: default 48
    //                   0 49
    //                   1 86
    //                   2 104
    //                   3 186
    //                   4 243
    //                   5 281
    //                   6 364;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        return;
_L2:
        layout_more.setVisibility(0);
        if (isAdded())
        {
            AroundFragment.access$0(AroundFragment.this, true);
            AroundFragment.access$5(AroundFragment.this);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (isAdded())
        {
            initOverlay();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (isAdded())
        {
            AroundFragment.access$4(AroundFragment.this);
            md = ComData.getInstance().getMapData();
            if (md != null && md.size() > 0)
            {
                AroundFragment.access$6(AroundFragment.this, ((MapData)md.get(0)).getName());
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (isAdded())
        {
            AroundFragment.access$4(AroundFragment.this);
            relativelayout_Map.setVisibility(8);
            scrollView.setVisibility(8);
            layout1.setVisibility(0);
            AroundFragment.access$3(true);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (isAdded())
        {
            AroundFragment.access$3(true);
            AroundFragment.access$4(AroundFragment.this);
            showMsgToast(getString(0x7f060032));
            return;
        }
        if (true) goto _L1; else goto _L7
_L7:
        if (!isAdded()) goto _L10; else goto _L9
_L9:
        AroundFragment.access$4(AroundFragment.this);
        message = ComData.getInstance().getpError();
        if (message == null || message.size() <= 0) goto _L10; else goto _L11
_L11:
        int i = 0;
_L13:
        if (i < message.size()) goto _L12; else goto _L10
_L10:
        AroundFragment.access$3(true);
        return;
_L12:
        String s = ((PublicError)message.get(i)).getMessage();
        showMsgToast(s);
        i++;
        if (true) goto _L13; else goto _L8
_L8:
        if (isAdded())
        {
            initOverlay2();
            return;
        }
        if (true) goto _L1; else goto _L14
_L14:
    }

    ()
    {
        this$0 = AroundFragment.this;
        super();
    }
}
