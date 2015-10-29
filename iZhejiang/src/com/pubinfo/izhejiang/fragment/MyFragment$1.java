// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.content.Intent;
import android.view.View;
import com.pubinfo.izhejiang.LoginActivity;
import com.pubinfo.izhejiang.PersonInfomationActivity;
import com.pubinfo.izhejiang.PushMessageActivity;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            MyFragment

class this._cls0
    implements android.view.istener
{

    final MyFragment this$0;

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131361912: 41
    //                   2131361941: 77
    //                   2131361943: 122;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        view = new Intent(getActivity(), com/pubinfo/izhejiang/LoginActivity);
        view.putExtra("Activity", "MyFragment");
        startActivityForResult(view, 2);
        return;
_L3:
        if (btn_click)
        {
            view = new Intent(getActivity(), com/pubinfo/izhejiang/PushMessageActivity);
            startActivityForResult(view, 4);
            btn_click = false;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (btn_click)
        {
            view = new Intent(getActivity(), com/pubinfo/izhejiang/PersonInfomationActivity);
            startActivityForResult(view, 3);
            btn_click = false;
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    ty()
    {
        this$0 = MyFragment.this;
        super();
    }
}
