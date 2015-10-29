// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.util.stringcache;

import com.ta.TASyncHttpClient;
import com.ta.util.cache.TAProcessDataHandler;

public class TAProcessStringHandler extends TAProcessDataHandler
{

    public TAProcessStringHandler()
    {
    }

    public byte[] processData(Object obj)
    {
        obj = (new TASyncHttpClient()).get(obj.toString());
        if (obj == null || ((String) (obj)).equalsIgnoreCase(""))
        {
            return null;
        }
        try
        {
            obj = ((String) (obj)).getBytes("UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        return ((byte []) (obj));
    }
}
