// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Resolver, ResolverListener, Message

class ResolveThread extends Thread
{

    private Object id;
    private ResolverListener listener;
    private Message query;
    private Resolver res;

    public ResolveThread(Resolver resolver, Message message, Object obj, ResolverListener resolverlistener)
    {
        res = resolver;
        query = message;
        id = obj;
        listener = resolverlistener;
    }

    public void run()
    {
        try
        {
            Message message = res.send(query);
            listener.receiveMessage(id, message);
            return;
        }
        catch (Exception exception)
        {
            listener.handleException(id, exception);
        }
    }
}
