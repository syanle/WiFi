// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;


public final class StatReportStrategy extends Enum
{

    private static final StatReportStrategy $VALUES[];
    public static final StatReportStrategy APP_LAUNCH;
    public static final StatReportStrategy BATCH;
    public static final StatReportStrategy DEVELOPER;
    public static final StatReportStrategy INSTANT;
    public static final StatReportStrategy ONLY_WIFI;
    public static final StatReportStrategy ONLY_WIFI_NO_CACHE;
    public static final StatReportStrategy PERIOD;
    int v;

    private StatReportStrategy(String s, int i, int j)
    {
        super(s, i);
        v = j;
    }

    public static StatReportStrategy getStatReportStrategy(int i)
    {
        StatReportStrategy astatreportstrategy[] = values();
        int k = astatreportstrategy.length;
        for (int j = 0; j < k; j++)
        {
            StatReportStrategy statreportstrategy = astatreportstrategy[j];
            if (i == statreportstrategy.getIntValue())
            {
                return statreportstrategy;
            }
        }

        return null;
    }

    public static StatReportStrategy valueOf(String s)
    {
        return (StatReportStrategy)Enum.valueOf(com/tencent/stat/StatReportStrategy, s);
    }

    public static StatReportStrategy[] values()
    {
        return (StatReportStrategy[])$VALUES.clone();
    }

    public int getIntValue()
    {
        return v;
    }

    static 
    {
        INSTANT = new StatReportStrategy("INSTANT", 0, 1);
        ONLY_WIFI = new StatReportStrategy("ONLY_WIFI", 1, 2);
        BATCH = new StatReportStrategy("BATCH", 2, 3);
        APP_LAUNCH = new StatReportStrategy("APP_LAUNCH", 3, 4);
        DEVELOPER = new StatReportStrategy("DEVELOPER", 4, 5);
        PERIOD = new StatReportStrategy("PERIOD", 5, 6);
        ONLY_WIFI_NO_CACHE = new StatReportStrategy("ONLY_WIFI_NO_CACHE", 6, 7);
        $VALUES = (new StatReportStrategy[] {
            INSTANT, ONLY_WIFI, BATCH, APP_LAUNCH, DEVELOPER, PERIOD, ONLY_WIFI_NO_CACHE
        });
    }
}
