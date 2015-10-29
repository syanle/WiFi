// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.PrintStream;
import java.net.SocketException;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            ResolverListener, ExtendedResolver, Resolver, Options, 
//            Message

private static class resolvers
    implements ResolverListener
{

    boolean done;
    Object inprogress[];
    ResolverListener listener;
    int outstanding;
    Message query;
    Resolver resolvers[];
    Message response;
    int retries;
    int sent[];
    Throwable thrown;

    public void handleException(Object obj, Exception exception)
    {
        if (Options.check("verbose"))
        {
            System.err.println((new StringBuilder("ExtendedResolver: got ")).append(exception).toString());
        }
        this;
        JVM INSTR monitorenter ;
        outstanding = outstanding - 1;
        if (!done) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L10:
        int i;
        if (i < inprogress.length) goto _L4; else goto _L3
_L3:
        if (i != inprogress.length)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L4:
        if (inprogress[i] == obj) goto _L3; else goto _L5
_L5:
        i++;
        continue; /* Loop/switch isn't completed */
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (sent[i] != 1)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag = flag1;
        if (i < resolvers.length - 1)
        {
            flag = true;
        }
        if (!(exception instanceof InterruptedIOException)) goto _L7; else goto _L6
_L6:
        if (sent[i] < retries)
        {
            send(i);
        }
        if (thrown == null)
        {
            thrown = exception;
        }
_L8:
        if (!done)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        this;
        JVM INSTR monitorexit ;
        return;
_L7:
label0:
        {
            if (!(exception instanceof SocketException))
            {
                break label0;
            }
            if (thrown == null || (thrown instanceof InterruptedIOException))
            {
                thrown = exception;
            }
        }
          goto _L8
        thrown = exception;
          goto _L8
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        send(i + 1);
        if (!done)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        if (outstanding != 0)
        {
            break MISSING_BLOCK_LABEL_265;
        }
        done = true;
        if (listener != null)
        {
            break MISSING_BLOCK_LABEL_265;
        }
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        if (done)
        {
            break MISSING_BLOCK_LABEL_275;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        this;
        JVM INSTR monitorexit ;
        if (!(thrown instanceof Exception))
        {
            thrown = new RuntimeException(thrown.getMessage());
        }
        listener.handleException(this, (Exception)thrown);
        return;
_L2:
        i = 0;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void receiveMessage(Object obj, Message message)
    {
        if (Options.check("verbose"))
        {
            System.err.println("ExtendedResolver: received message");
        }
        this;
        JVM INSTR monitorenter ;
        if (!done)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        response = message;
        done = true;
        if (listener != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        this;
        JVM INSTR monitorexit ;
        listener.receiveMessage(this, response);
        return;
    }

    public void send(int i)
    {
        int ai[] = sent;
        ai[i] = ai[i] + 1;
        outstanding = outstanding + 1;
        inprogress[i] = resolvers[i].sendAsync(query, this);
        return;
        Object obj;
        obj;
        this;
        JVM INSTR monitorenter ;
        thrown = ((Throwable) (obj));
        done = true;
        if (listener == null)
        {
            notifyAll();
            return;
        }
        break MISSING_BLOCK_LABEL_78;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        this;
        JVM INSTR monitorexit ;
    }

    public Message start()
        throws IOException
    {
        int ai[] = sent;
        ai[0] = ai[0] + 1;
        Message message;
        outstanding = outstanding + 1;
        inprogress[0] = new Object();
        message = resolvers[0].send(query);
        return message;
        Object obj;
        obj;
        handleException(inprogress[0], ((Exception) (obj)));
        this;
        JVM INSTR monitorenter ;
_L2:
        if (!done)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        this;
        JVM INSTR monitorexit ;
        if (response != null)
        {
            return response;
        }
        break; /* Loop/switch isn't completed */
        try
        {
            wait();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally { }
        if (true) goto _L2; else goto _L1
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L1:
        if (thrown instanceof IOException)
        {
            throw (IOException)thrown;
        }
        if (thrown instanceof RuntimeException)
        {
            throw (RuntimeException)thrown;
        }
        if (thrown instanceof Error)
        {
            throw (Error)thrown;
        } else
        {
            throw new IllegalStateException("ExtendedResolver failure");
        }
    }

    public void startAsync(ResolverListener resolverlistener)
    {
        listener = resolverlistener;
        send(0);
    }

    public (ExtendedResolver extendedresolver, Message message)
    {
        List list = ExtendedResolver.access$0(extendedresolver);
        resolvers = (Resolver[])list.toArray(new Resolver[list.size()]);
        if (!ExtendedResolver.access$1(extendedresolver)) goto _L2; else goto _L1
_L1:
        int k;
        int l;
        k = resolvers.length;
        int i = ExtendedResolver.access$2(extendedresolver);
        ExtendedResolver.access$3(extendedresolver, i + 1);
        l = i % k;
        if (ExtendedResolver.access$2(extendedresolver) > k)
        {
            ExtendedResolver.access$3(extendedresolver, ExtendedResolver.access$2(extendedresolver) % k);
        }
        if (l <= 0) goto _L2; else goto _L3
_L3:
        Resolver aresolver[];
        int j;
        aresolver = new Resolver[k];
        j = 0;
_L7:
        if (j < k) goto _L5; else goto _L4
_L4:
        resolvers = aresolver;
_L2:
        sent = new int[resolvers.length];
        inprogress = new Object[resolvers.length];
        retries = ExtendedResolver.access$4(extendedresolver);
        query = message;
        return;
_L5:
        aresolver[j] = resolvers[(j + l) % k];
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
