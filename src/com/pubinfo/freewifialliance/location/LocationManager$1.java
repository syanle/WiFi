// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.location;

import android.os.Handler;
import android.os.Message;
import java.util.List;

// Referenced classes of package com.pubinfo.freewifialliance.location:
//            LocationManager

class this._cls0
    implements Runnable
{

    final LocationManager this$0;

    public void run()
    {
        try
        {
            if (LocationManager.access$0(LocationManager.this) != null || LocationManager.access$0(LocationManager.this).size() > 0)
            {
                LocationManager.access$1(LocationManager.this).sendMessage(Message.obtain(LocationManager.access$1(LocationManager.this), 2));
            }
            return;
        }
        catch (Exception exception)
        {
            LocationManager.access$1(LocationManager.this).sendMessage(Message.obtain(LocationManager.access$1(LocationManager.this), 3));
        }
    }

    ()
    {
        this$0 = LocationManager.this;
        super();
    }
}
