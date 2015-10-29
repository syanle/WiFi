// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;


class skState
{

    static final int $SwitchMap$com$tencent$open$TaskGuide$TaskState[];

    static 
    {
        $SwitchMap$com$tencent$open$TaskGuide$TaskState = new int[skState.values().length];
        try
        {
            $SwitchMap$com$tencent$open$TaskGuide$TaskState[skState.INIT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$tencent$open$TaskGuide$TaskState[skState.NORAML.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$tencent$open$TaskGuide$TaskState[skState.WAITTING_BACK_REWARD.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$tencent$open$TaskGuide$TaskState[skState.REWARD_SUCCESS.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
