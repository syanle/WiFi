// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import java.security.Provider;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class JCAProvider extends Provider
{

    private static final long serialVersionUID = 1L;

    public JCAProvider(Map map)
    {
        super("AMQSASLProvider", 1.0D, "A JCA provider that registers all AMQ SASL providers that want to be registered");
        register(map);
    }

    private void register(Map map)
    {
        map = map.entrySet().iterator();
        do
        {
            if (!map.hasNext())
            {
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            put((new StringBuilder("SaslClientFactory.")).append((String)entry.getKey()).toString(), ((Class)entry.getValue()).getName());
        } while (true);
    }
}
