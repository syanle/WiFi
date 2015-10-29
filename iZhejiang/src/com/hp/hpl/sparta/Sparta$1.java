// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.util.Hashtable;

class ternment
    implements ternment
{

    private final Hashtable strings_ = new Hashtable();

    public String intern(String s)
    {
        String s1 = (String)strings_.get(s);
        if (s1 == null)
        {
            strings_.put(s, s);
            return s;
        } else
        {
            return s1;
        }
    }

    ternment()
    {
    }
}
