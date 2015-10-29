// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.debugger;

import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.ConnectionListener;

// Referenced classes of package org.jivesoftware.smack.debugger:
//            ConsoleDebugger

class this._cls0
    implements ConnectionListener
{

    final ConsoleDebugger this$0;

    public void connectionClosed()
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" Connection closed (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append(")").toString());
    }

    public void connectionClosedOnError(Exception exception)
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" Connection closed due to an exception (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append(")").toString());
        exception.printStackTrace();
    }

    public void reconnectingIn(int i)
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" Connection (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append(") will reconnect in ").append(i).toString());
    }

    public void reconnectionFailed(Exception exception)
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" Reconnection failed due to an exception (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append(")").toString());
        exception.printStackTrace();
    }

    public void reconnectionSuccessful()
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" Connection reconnected (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append(")").toString());
    }

    ()
    {
        this$0 = ConsoleDebugger.this;
        super();
    }
}
