// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import cn.com.chinatelecom.ctpass.aidl.ServiceAIDL;

// Referenced classes of package com.pubinfo.izhejiang:
//            NFCDemo

class this._cls0
    implements ServiceConnection
{

    final NFCDemo this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        Log.d("--ServiceConnected--", "onServiceConnected");
        NFCDemo.access$4(NFCDemo.this, cn.com.chinatelecom.ctpass.aidl.L.Stub.asInterface(ibinder));
        try
        {
            if (NFCDemo.access$0(NFCDemo.this) != null)
            {
                NFCDemo.access$0(NFCDemo.this).registerCallback(NFCDemo.access$5(NFCDemo.this));
            }
            componentname = NFCDemo.access$0(NFCDemo.this);
        }
        // Misplaced declaration of an exception variable
        catch (ComponentName componentname)
        {
            return;
        }
        if (componentname == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        NFCDemo.access$0(NFCDemo.this).connectCTPassService();
        return;
        componentname;
        componentname.printStackTrace();
        return;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        Log.d("--ServiceDisconnected--", "onServiceDisconnected");
    }

    ServiceAIDL()
    {
        this$0 = NFCDemo.this;
        super();
    }
}
