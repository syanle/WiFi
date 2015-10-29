// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.exception.TANoSuchCommandException;
import com.ta.mvc.common.TAIResponseListener;
import com.ta.mvc.common.TARequest;
import com.ta.util.TALogger;
import java.util.HashMap;

// Referenced classes of package com.ta.mvc.command:
//            TAICommand, TACommandQueueManager

public class TACommandExecutor
{

    private static final TACommandExecutor instance = new TACommandExecutor();
    private final HashMap commands = new HashMap();
    private boolean initialized;

    public TACommandExecutor()
    {
        initialized = false;
        ensureInitialized();
    }

    private TAICommand getCommand(String s)
        throws TANoSuchCommandException
    {
label0:
        {
            Object obj = null;
            TAICommand taicommand = obj;
            if (commands.containsKey(s))
            {
                Class class1 = (Class)commands.get(s);
                taicommand = obj;
                if (class1 != null)
                {
                    int i = class1.getModifiers();
                    if ((i & 0x400) != 0 || (i & 0x200) != 0)
                    {
                        break label0;
                    }
                    try
                    {
                        taicommand = (TAICommand)class1.newInstance();
                    }
                    catch (Exception exception)
                    {
                        throw new TANoSuchCommandException((new StringBuilder("\u6CA1\u53D1\u73B0")).append(s).append("\u547D\u4EE4").toString());
                    }
                }
            }
            return taicommand;
        }
        throw new TANoSuchCommandException((new StringBuilder("\u6CA1\u53D1\u73B0")).append(s).append("\u547D\u4EE4").toString());
    }

    public static TACommandExecutor getInstance()
    {
        return instance;
    }

    public void enqueueCommand(TAICommand taicommand)
        throws TANoSuchCommandException
    {
        enqueueCommand(taicommand, null);
    }

    public void enqueueCommand(TAICommand taicommand, TARequest tarequest)
        throws TANoSuchCommandException
    {
        enqueueCommand(taicommand, null, null);
    }

    public void enqueueCommand(TAICommand taicommand, TARequest tarequest, TAIResponseListener tairesponselistener)
        throws TANoSuchCommandException
    {
        if (taicommand != null)
        {
            taicommand.setRequest(tarequest);
            taicommand.setResponseListener(tairesponselistener);
            TACommandQueueManager.getInstance().enqueue(taicommand);
        }
    }

    public void enqueueCommand(String s, TARequest tarequest, TAIResponseListener tairesponselistener)
        throws TANoSuchCommandException
    {
        enqueueCommand(getCommand(s), tarequest, tairesponselistener);
    }

    public void ensureInitialized()
    {
        if (!initialized)
        {
            initialized = true;
            TALogger.i(this, "CommandExecutor\u521D\u59CB\u5316");
            TACommandQueueManager.getInstance().initialize();
            TALogger.i(this, "CommandExecutor\u521D\u59CB\u5316");
        }
    }

    public void registerCommand(String s, Class class1)
    {
        if (class1 != null)
        {
            commands.put(s, class1);
        }
    }

    public void terminateAll()
    {
    }

    public void unregisterCommand(String s)
    {
        commands.remove(s);
    }

}
