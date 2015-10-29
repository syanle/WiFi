// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;


// Referenced classes of package org.jivesoftware.smack:
//            ReconnectionManager, Connection

class attempts extends Thread
{

    private int attempts;
    final ReconnectionManager this$0;

    private int timeDelay()
    {
        if (attempts > 13)
        {
            return 300;
        }
        return attempts <= 7 ? 10 : 60;
    }

    public void run()
    {
_L2:
        int i;
        if (!ReconnectionManager.access$1(ReconnectionManager.this))
        {
            return;
        }
        i = timeDelay();
_L3:
        if (ReconnectionManager.access$1(ReconnectionManager.this) && i > 0)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        if (!ReconnectionManager.access$1(ReconnectionManager.this)) goto _L2; else goto _L1
_L1:
        ReconnectionManager.access$2(ReconnectionManager.this).connect();
          goto _L2
        Exception exception;
        exception;
        notifyReconnectionFailed(exception);
          goto _L2
        int j = i;
        Thread.sleep(1000L);
        i--;
        j = i;
        try
        {
            notifyAttemptToReconnectIn(i);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
            notifyReconnectionFailed(interruptedexception);
            i = j;
        }
          goto _L3
    }

    ()
    {
        this$0 = ReconnectionManager.this;
        super();
        attempts = 0;
    }
}
