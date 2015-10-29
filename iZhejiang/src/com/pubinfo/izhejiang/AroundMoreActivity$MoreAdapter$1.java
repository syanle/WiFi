// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;
import com.cat.data.MapCustom;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            AroundMoreActivity, WebviewPage

class val.position
    implements android.view.dapter._cls1
{

    final this._cls1 this$1;
    private final int val$position;

    public void onClick(View view)
    {
        view = new Intent(cess._mth1(this._cls1.this).getApplicationContext(), com/pubinfo/izhejiang/WebviewPage);
        view.putExtra("activity", "AroundMoreActivity");
        view.putExtra("name", ((MapCustom)cess._mth0(this._cls1.this).get(val$position)).getName());
        view.putExtra("url", ((MapCustom)cess._mth0(this._cls1.this).get(val$position)).getBusiness_url());
        cess._mth1(this._cls1.this).startActivity(view);
    }

    ()
    {
        this$1 = final_;
        val$position = I.this;
        super();
    }
}
