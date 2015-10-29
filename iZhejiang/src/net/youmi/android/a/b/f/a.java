// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.net.SocketTimeoutException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

class a
{

    protected long a;
    protected SelectionKey b;

    protected a(SelectableChannel selectablechannel, long l)
    {
        Selector selector;
        selector = null;
        a = l;
        Selector selector1 = Selector.open();
        selector = selector1;
        selectablechannel.configureBlocking(false);
        selector = selector1;
        b = selectablechannel.register(selector1, 1);
        return;
        Exception exception;
        exception;
        if (selector != null)
        {
            selector.close();
        }
        selectablechannel.close();
        throw exception;
    }

    protected static void a(SelectionKey selectionkey, long l)
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

    void a()
    {
        b.selector().close();
        b.channel().close();
    }
}
