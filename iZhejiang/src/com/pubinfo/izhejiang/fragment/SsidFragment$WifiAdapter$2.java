// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.content.Intent;
import android.view.View;
import com.cat.data.SsidData;
import com.pubinfo.izhejiang.ConnectActivity;
import com.pubinfo.izhejiang.LoginActivity;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

class val.position
    implements android.view.ent.WifiAdapter._cls2
{

    final orResult this$1;
    private final int val$position;

    public void onClick(View view)
    {
        if (!cess._mth3(this._cls1.this).username.equals(""))
        {
            view = new Intent(cess._mth3(this._cls1.this).getActivity(), com/pubinfo/izhejiang/ConnectActivity);
            view.putExtra("type", ((SsidData)cess._mth0(this._cls1.this).get(val$position)).getNettype());
            view.putExtra("logourl", ((SsidData)cess._mth0(this._cls1.this).get(val$position)).getLogo());
            view.putExtra("ssidclick", ((SsidData)cess._mth0(this._cls1.this).get(val$position)).getSsid());
            view.putExtra("ssidconnect", cess._mth1(this._cls1.this));
            view.putExtra("macclick", ((SsidData)cess._mth0(this._cls1.this).get(val$position)).getMac());
            view.putExtra("macconnect", cess._mth2(this._cls1.this));
            cess._mth3(this._cls1.this).startActivityForResult(view, 3);
            return;
        } else
        {
            view = new Intent(cess._mth3(this._cls1.this).getActivity(), com/pubinfo/izhejiang/LoginActivity);
            view.putExtra("Activity", "SsidFragment");
            cess._mth3(this._cls1.this).startActivityForResult(view, 2);
            return;
        }
    }

    ()
    {
        this$1 = final_;
        val$position = I.this;
        super();
    }
}
