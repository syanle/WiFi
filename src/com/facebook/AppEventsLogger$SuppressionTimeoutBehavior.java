// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            AppEventsLogger

private static final class  extends Enum
{

    private static final RESET_TIMEOUT_WHEN_LOG_ATTEMPTED ENUM$VALUES[];
    public static final RESET_TIMEOUT_WHEN_LOG_ATTEMPTED RESET_TIMEOUT_WHEN_LOG_ATTEMPTED;
    public static final RESET_TIMEOUT_WHEN_LOG_ATTEMPTED RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/AppEventsLogger$SuppressionTimeoutBehavior, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL = new <init>("RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL", 0);
        RESET_TIMEOUT_WHEN_LOG_ATTEMPTED = new <init>("RESET_TIMEOUT_WHEN_LOG_ATTEMPTED", 1);
        ENUM$VALUES = (new ENUM.VALUES[] {
            RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL, RESET_TIMEOUT_WHEN_LOG_ATTEMPTED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
