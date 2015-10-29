// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.debugger;

import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.util.WriterListener;

// Referenced classes of package org.jivesoftware.smack.debugger:
//            ConsoleDebugger

class this._cls0
    implements WriterListener
{

    final ConsoleDebugger this$0;

    public void write(String s)
    {
        System.out.println((new StringBuilder(String.valueOf(ConsoleDebugger.access$0(ConsoleDebugger.this).format(new Date())))).append(" SENT (").append(ConsoleDebugger.access$1(ConsoleDebugger.this).hashCode()).append("): ").append(s).toString());
    }

    ()
    {
        this$0 = ConsoleDebugger.this;
        super();
    }
}
