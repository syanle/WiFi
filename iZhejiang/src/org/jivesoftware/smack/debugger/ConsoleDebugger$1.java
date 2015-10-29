// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.debugger;

import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.util.ReaderListener;

// Referenced classes of package org.jivesoftware.smack.debugger:
//            ConsoleDebugger

class this._cls0
    implements ReaderListener
{

    final ConsoleDebugger this$0;

    public void read(String s)
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" RCV  (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append("): ").append(s).toString());
    }

    ()
    {
        this$0 = ConsoleDebugger.this;
        super();
    }
}
