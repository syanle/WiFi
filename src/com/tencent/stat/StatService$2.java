// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;


// Referenced classes of package com.tencent.stat:
//            StatService, StatReportStrategy

static class tegy
{

    static final int $SwitchMap$com$tencent$stat$StatReportStrategy[];

    static 
    {
        $SwitchMap$com$tencent$stat$StatReportStrategy = new int[StatReportStrategy.values().length];
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.INSTANT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.ONLY_WIFI.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.APP_LAUNCH.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.DEVELOPER.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.BATCH.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.PERIOD.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$tencent$stat$StatReportStrategy[StatReportStrategy.ONLY_WIFI_NO_CACHE.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
