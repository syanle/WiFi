// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.widget.TextView;
import com.cat.data.ApInfoData;
import com.cat.data.ComData;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class this._cls0
    implements Runnable
{

    final ConnectActivity this$0;

    public void run()
    {
        tv3.setText("");
        tv5.setText("");
        ApInfoData apinfodata = (ApInfoData)ComData.getInstance().getApInfoData().get(0);
        tv1.setText(apinfodata.getName());
        tv3.setText(apinfodata.getLoad());
        tv4.setText(apinfodata.getCurrentconnect());
        tv5.setText(apinfodata.getAppraisal());
    }

    ()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
