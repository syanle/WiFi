// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;


final class  extends Enum
{

    private static final REWARD_FAIL $VALUES[];
    public static final REWARD_FAIL INIT;
    public static final REWARD_FAIL NORAML;
    public static final REWARD_FAIL REWARD_FAIL;
    public static final REWARD_FAIL REWARD_SUCCESS;
    public static final REWARD_FAIL WAITTING_BACK_REWARD;
    public static final REWARD_FAIL WAITTING_BACK_TASKINFO;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tencent/open/TaskGuide$TaskState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INIT = new <init>("INIT", 0);
        WAITTING_BACK_TASKINFO = new <init>("WAITTING_BACK_TASKINFO", 1);
        WAITTING_BACK_REWARD = new <init>("WAITTING_BACK_REWARD", 2);
        NORAML = new <init>("NORAML", 3);
        REWARD_SUCCESS = new <init>("REWARD_SUCCESS", 4);
        REWARD_FAIL = new <init>("REWARD_FAIL", 5);
        $VALUES = (new .VALUES[] {
            INIT, WAITTING_BACK_TASKINFO, WAITTING_BACK_REWARD, NORAML, REWARD_SUCCESS, REWARD_FAIL
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
