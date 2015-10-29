// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.View;
import com.pubinfo.izhejiang.fragment.ApplicationFragment;
import com.pubinfo.izhejiang.fragment.AroundFragment;
import com.pubinfo.izhejiang.fragment.MyFragment;
import com.pubinfo.izhejiang.fragment.SsidFragment;

// Referenced classes of package com.pubinfo.izhejiang:
//            MainActivity

class this._cls0
    implements android.view.tener
{

    final MainActivity this$0;

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131361815 2131361818: default 36
    //                   2131361815 37
    //                   2131361816 99
    //                   2131361817 161
    //                   2131361818 223;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        if (tag != 1)
        {
            MainActivity.access$0(MainActivity.this, new SsidFragment());
            changeFrament(MainActivity.access$1(MainActivity.this), null, "ssidFragment");
            changeRadioButtonImage(view.getId());
            tag = 1;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (tag != 3)
        {
            MainActivity.access$2(MainActivity.this, new AroundFragment());
            changeFrament(MainActivity.access$3(MainActivity.this), null, "aroundFragment");
            changeRadioButtonImage(view.getId());
            tag = 3;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (tag != 4)
        {
            MainActivity.access$4(MainActivity.this, new ApplicationFragment());
            changeFrament(MainActivity.access$5(MainActivity.this), null, "applicationFragment");
            changeRadioButtonImage(view.getId());
            tag = 4;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (tag != 5)
        {
            MainActivity.access$6(MainActivity.this, new MyFragment());
            changeFrament(MainActivity.access$7(MainActivity.this), null, "myFragment");
            changeRadioButtonImage(view.getId());
            tag = 5;
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    ment()
    {
        this$0 = MainActivity.this;
        super();
    }
}
