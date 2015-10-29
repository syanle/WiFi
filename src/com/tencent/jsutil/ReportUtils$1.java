// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.mta.TencentStat;

// Referenced classes of package com.tencent.jsutil:
//            ReportUtils

class this._cls0 extends Handler
{

    final ReportUtils this$0;

    public void handleMessage(Message message)
    {
        Object obj;
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            TencentStat.c(mContext, mQqToken);
            return;

        case 1: // '\001'
            Bundle bundle = message.getData();
            message = bundle.getString("eventId");
            String as[] = bundle.getString("array").split(",");
            TencentStat.a(mContext, mQqToken, message, as);
            return;

        case 2: // '\002'
            obj = message.getData();
            break;
        }
        long l = ((Bundle) (obj)).getLong("costTime");
        message = ((Bundle) (obj)).getString("reportId");
        obj = ((Bundle) (obj)).getString("appId");
        ReportUtils.reportBernoulli(mContext, message, l, ((String) (obj)));
    }

    ()
    {
        this$0 = ReportUtils.this;
        super();
    }
}
