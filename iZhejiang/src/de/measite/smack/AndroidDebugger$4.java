// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.measite.smack;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.ConnectionListener;

// Referenced classes of package de.measite.smack:
//            AndroidDebugger

class this._cls0
    implements ConnectionListener
{

    final AndroidDebugger this$0;

    public void connectionClosed()
    {
        Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" Connection closed (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append(")").toString());
    }

    public void connectionClosedOnError(Exception exception)
    {
        Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" Connection closed due to an exception (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append(")").toString());
        exception.printStackTrace();
    }

    public void reconnectingIn(int i)
    {
        Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" Connection (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append(") will reconnect in ").append(i).toString());
    }

    public void reconnectionFailed(Exception exception)
    {
        Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" Reconnection failed due to an exception (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append(")").toString());
        exception.printStackTrace();
    }

    public void reconnectionSuccessful()
    {
        Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" Connection reconnected (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append(")").toString());
    }

    stener()
    {
        this$0 = AndroidDebugger.this;
        super();
    }
}
