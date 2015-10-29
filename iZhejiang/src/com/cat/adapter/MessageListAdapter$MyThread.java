// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import com.cat.impl.DoReadPushConn;

// Referenced classes of package com.cat.adapter:
//            MessageListAdapter

public class this._cls0 extends Thread
{

    final MessageListAdapter this$0;

    public void run()
    {
        try
        {
            Looper.prepare();
            SharedPreferences sharedpreferences = mContext.getSharedPreferences("LoginSucess", 0);
            new DoReadPushConn(sharedpreferences.getString("username", ""), sharedpreferences.getString("countrycode", ""), pushid, mContext);
        }
        catch (Exception exception) { }
        Looper.loop();
    }

    public ()
    {
        this$0 = MessageListAdapter.this;
        super();
    }
}
