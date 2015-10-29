// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.measite.smack;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.util.ReaderListener;

// Referenced classes of package de.measite.smack:
//            AndroidDebugger

class this._cls0
    implements ReaderListener
{

    final AndroidDebugger this$0;

    public void read(String s)
    {
        Log.d("SMACK", (new StringBuilder(String.valueOf(AndroidDebugger.access$0(AndroidDebugger.this).format(new Date())))).append(" RCV  (").append(AndroidDebugger.access$1(AndroidDebugger.this).hashCode()).append("): ").append(s).toString());
    }

    istener()
    {
        this$0 = AndroidDebugger.this;
        super();
    }
}
