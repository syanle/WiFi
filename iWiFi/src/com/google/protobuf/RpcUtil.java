// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            Message, RpcCallback

public final class RpcUtil
{
    public static final class AlreadyCalledException extends RuntimeException
    {

        private static final long serialVersionUID = 0x4be86cb6ba5b1c4aL;

        public AlreadyCalledException()
        {
            super("This RpcCallback was already called and cannot be called multiple times.");
        }
    }


    private RpcUtil()
    {
    }

    private static Message copyAsType(Message message, Message message1)
    {
        return message.newBuilderForType().mergeFrom(message1).build();
    }

    public static RpcCallback generalizeCallback(RpcCallback rpccallback, Class class1, Message message)
    {
        return new RpcCallback(class1, message, rpccallback) {

            final Class a;
            final Message b;
            final RpcCallback c;

            public void a(Message message1)
            {
                Message message2 = (Message)a.cast(message1);
                message1 = message2;
_L2:
                c.run(message1);
                return;
                ClassCastException classcastexception;
                classcastexception;
                message1 = RpcUtil.copyAsType(b, message1);
                if (true) goto _L2; else goto _L1
_L1:
            }

            public volatile void run(Object obj)
            {
                a((Message)obj);
            }

            
            {
                a = class1;
                b = message;
                c = rpccallback;
                super();
            }
        };
    }

    public static RpcCallback newOneTimeCallback(RpcCallback rpccallback)
    {
        return new RpcCallback(rpccallback) {

            final RpcCallback a;
            private boolean b;

            public void run(Object obj)
            {
                this;
                JVM INSTR monitorenter ;
                if (b)
                {
                    throw new AlreadyCalledException();
                }
                break MISSING_BLOCK_LABEL_22;
                obj;
                this;
                JVM INSTR monitorexit ;
                throw obj;
                b = true;
                this;
                JVM INSTR monitorexit ;
                a.run(obj);
                return;
            }

            
            {
                a = rpccallback;
                super();
                b = false;
            }
        };
    }

    public static RpcCallback specializeCallback(RpcCallback rpccallback)
    {
        return rpccallback;
    }

}
