// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.layoutloader;

import com.ta.exception.TANoSuchNameLayoutException;

public interface TAILayoutLoader
{

    public abstract int getLayoutID(String s)
        throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, android.content.pm.PackageManager.NameNotFoundException, TANoSuchNameLayoutException;
}
