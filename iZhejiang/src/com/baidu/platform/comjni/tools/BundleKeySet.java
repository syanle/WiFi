// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.tools;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;

public class BundleKeySet
{

    public BundleKeySet()
    {
    }

    public String[] getBundleKeys(Bundle bundle)
    {
        while (bundle == null || bundle.isEmpty()) 
        {
            return null;
        }
        String as[] = new String[bundle.size()];
        bundle = bundle.keySet().iterator();
        for (int i = 0; bundle.hasNext(); i++)
        {
            as[i] = ((String)bundle.next()).toString();
        }

        return as;
    }
}
