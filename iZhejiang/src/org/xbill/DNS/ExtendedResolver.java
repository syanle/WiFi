// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.PrintStream;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            Resolver, ResolverConfig, SimpleResolver, Message, 
//            ResolverListener, TSIG, Options

public class ExtendedResolver
    implements Resolver
{
    private static class Resolution
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

        public Resolution(ExtendedResolver extendedresolver, Message message)
        {
            List list = extendedresolver.resolvers;
            resolvers = (Resolver[])list.toArray(new Resolver[list.size()]);
            if (!extendedresolver.loadBalance) goto _L2; else goto _L1
_L1:
            int k;
            int l;
            k = resolvers.length;
            int i = extendedresolver.lbStart;
            extendedresolver.lbStart = i + 1;
            l = i % k;
            if (extendedresolver.lbStart > k)
            {
                extendedresolver.lbStart = extendedresolver.lbStart % k;
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
            retries = extendedresolver.retries;
            query = message;
            return;
_L5:
            aresolver[j] = resolvers[(j + l) % k];
            j++;
            if (true) goto _L7; else goto _L6
_L6:
        }
    }


    private static final int quantum = 5;
    private int lbStart;
    private boolean loadBalance;
    private List resolvers;
    private int retries;

    public ExtendedResolver()
        throws UnknownHostException
    {
        loadBalance = false;
        lbStart = 0;
        retries = 3;
        init();
        String as[] = ResolverConfig.getCurrentConfig().servers();
        if (as != null)
        {
            int i = 0;
            do
            {
                if (i >= as.length)
                {
                    return;
                }
                SimpleResolver simpleresolver = new SimpleResolver(as[i]);
                simpleresolver.setTimeout(5);
                resolvers.add(simpleresolver);
                i++;
            } while (true);
        } else
        {
            resolvers.add(new SimpleResolver());
            return;
        }
    }

    public ExtendedResolver(String as[])
        throws UnknownHostException
    {
        loadBalance = false;
        lbStart = 0;
        retries = 3;
        init();
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                return;
            }
            SimpleResolver simpleresolver = new SimpleResolver(as[i]);
            simpleresolver.setTimeout(5);
            resolvers.add(simpleresolver);
            i++;
        } while (true);
    }

    public ExtendedResolver(Resolver aresolver[])
        throws UnknownHostException
    {
        loadBalance = false;
        lbStart = 0;
        retries = 3;
        init();
        int i = 0;
        do
        {
            if (i >= aresolver.length)
            {
                return;
            }
            resolvers.add(aresolver[i]);
            i++;
        } while (true);
    }

    private void init()
    {
        resolvers = new ArrayList();
    }

    public void addResolver(Resolver resolver)
    {
        resolvers.add(resolver);
    }

    public void deleteResolver(Resolver resolver)
    {
        resolvers.remove(resolver);
    }

    public Resolver getResolver(int i)
    {
        if (i < resolvers.size())
        {
            return (Resolver)resolvers.get(i);
        } else
        {
            return null;
        }
    }

    public Resolver[] getResolvers()
    {
        return (Resolver[])resolvers.toArray(new Resolver[resolvers.size()]);
    }

    public Message send(Message message)
        throws IOException
    {
        return (new Resolution(this, message)).start();
    }

    public Object sendAsync(Message message, ResolverListener resolverlistener)
    {
        message = new Resolution(this, message);
        message.startAsync(resolverlistener);
        return message;
    }

    public void setEDNS(int i)
    {
        int j = 0;
        do
        {
            if (j >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(j)).setEDNS(i);
            j++;
        } while (true);
    }

    public void setEDNS(int i, int j, int k, List list)
    {
        int l = 0;
        do
        {
            if (l >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(l)).setEDNS(i, j, k, list);
            l++;
        } while (true);
    }

    public void setIgnoreTruncation(boolean flag)
    {
        int i = 0;
        do
        {
            if (i >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(i)).setIgnoreTruncation(flag);
            i++;
        } while (true);
    }

    public void setLoadBalance(boolean flag)
    {
        loadBalance = flag;
    }

    public void setPort(int i)
    {
        int j = 0;
        do
        {
            if (j >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(j)).setPort(i);
            j++;
        } while (true);
    }

    public void setRetries(int i)
    {
        retries = i;
    }

    public void setTCP(boolean flag)
    {
        int i = 0;
        do
        {
            if (i >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(i)).setTCP(flag);
            i++;
        } while (true);
    }

    public void setTSIGKey(TSIG tsig)
    {
        int i = 0;
        do
        {
            if (i >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(i)).setTSIGKey(tsig);
            i++;
        } while (true);
    }

    public void setTimeout(int i)
    {
        setTimeout(i, 0);
    }

    public void setTimeout(int i, int j)
    {
        int k = 0;
        do
        {
            if (k >= resolvers.size())
            {
                return;
            }
            ((Resolver)resolvers.get(k)).setTimeout(i, j);
            k++;
        } while (true);
    }





}
