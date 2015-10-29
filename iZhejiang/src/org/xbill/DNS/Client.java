// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.PrintStream;
import java.net.SocketTimeoutException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import org.xbill.DNS.utils.hexdump;

// Referenced classes of package org.xbill.DNS:
//            Options

class Client
{

    protected long endTime;
    protected SelectionKey key;

    protected Client(SelectableChannel selectablechannel, long l)
        throws IOException
    {
        Selector selector;
        selector = null;
        endTime = l;
        Selector selector1 = Selector.open();
        selector = selector1;
        selectablechannel.configureBlocking(false);
        selector = selector1;
        key = selectablechannel.register(selector1, 1);
        if (false && selector1 != null)
        {
            selector1.close();
        }
        if (false)
        {
            selectablechannel.close();
        }
        return;
        Exception exception;
        exception;
        if (true && selector != null)
        {
            selector.close();
        }
        if (true)
        {
            selectablechannel.close();
        }
        throw exception;
    }

    protected static void blockUntil(SelectionKey selectionkey, long l)
        throws IOException
    {
        l -= System.currentTimeMillis();
        int i = 0;
        if (l > 0L)
        {
            i = selectionkey.selector().select(l);
        } else
        if (l == 0L)
        {
            i = selectionkey.selector().selectNow();
        }
        if (i == 0)
        {
            throw new SocketTimeoutException();
        } else
        {
            return;
        }
    }

    protected static void verboseLog(String s, byte abyte0[])
    {
        if (Options.check("verbosemsg"))
        {
            System.err.println(hexdump.dump(s, abyte0));
        }
    }

    void cleanup()
        throws IOException
    {
        key.selector().close();
        key.channel().close();
    }
}
