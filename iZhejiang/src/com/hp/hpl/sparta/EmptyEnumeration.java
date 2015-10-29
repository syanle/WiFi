// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.util.Enumeration;
import java.util.NoSuchElementException;

class EmptyEnumeration
    implements Enumeration
{

    EmptyEnumeration()
    {
    }

    public boolean hasMoreElements()
    {
        return false;
    }

    public Object nextElement()
    {
        throw new NoSuchElementException();
    }
}
