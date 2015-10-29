// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;


public final class EventType extends Enum
{

    private static final EventType $VALUES[];
    public static final EventType ADDITION;
    public static final EventType CUSTOM;
    public static final EventType ERROR;
    public static final EventType MONITOR_STAT;
    public static final EventType PAGE_VIEW;
    public static final EventType SESSION_ENV;
    private int v;

    private EventType(String s, int i, int j)
    {
        super(s, i);
        v = j;
    }

    public int GetIntValue()
    {
        return v;
    }

    static 
    {
        PAGE_VIEW = new EventType("PAGE_VIEW", 0, 1);
        SESSION_ENV = new EventType("SESSION_ENV", 1, 2);
        ERROR = new EventType("ERROR", 2, 3);
        CUSTOM = new EventType("CUSTOM", 3, 1000);
        ADDITION = new EventType("ADDITION", 4, 1001);
        MONITOR_STAT = new EventType("MONITOR_STAT", 5, 1002);
        $VALUES = (new EventType[] {
            PAGE_VIEW, SESSION_ENV, ERROR, CUSTOM, ADDITION, MONITOR_STAT
        });
    }
}
