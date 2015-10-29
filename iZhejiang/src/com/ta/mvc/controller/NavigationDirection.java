// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.controller;


public final class NavigationDirection extends Enum
{

    public static final NavigationDirection Backward;
    private static final NavigationDirection ENUM$VALUES[];
    public static final NavigationDirection Forward;

    private NavigationDirection(String s, int i)
    {
        super(s, i);
    }

    public static NavigationDirection valueOf(String s)
    {
        return (NavigationDirection)Enum.valueOf(com/ta/mvc/controller/NavigationDirection, s);
    }

    public static NavigationDirection[] values()
    {
        NavigationDirection anavigationdirection[] = ENUM$VALUES;
        int i = anavigationdirection.length;
        NavigationDirection anavigationdirection1[] = new NavigationDirection[i];
        System.arraycopy(anavigationdirection, 0, anavigationdirection1, 0, i);
        return anavigationdirection1;
    }

    static 
    {
        Forward = new NavigationDirection("Forward", 0);
        Backward = new NavigationDirection("Backward", 1);
        ENUM$VALUES = (new NavigationDirection[] {
            Forward, Backward
        });
    }
}
