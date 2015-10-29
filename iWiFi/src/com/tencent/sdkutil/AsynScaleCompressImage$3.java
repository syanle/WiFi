// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class val.asynLoadImgBack extends Handler
{

    final ck val$asynLoadImgBack;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 101: // 'e'
            message = message.getData().getStringArrayList("images");
            break;
        }
        val$asynLoadImgBack.batchSaved(0, message);
    }

    ck(ck ck)
    {
        val$asynLoadImgBack = ck;
        super(final_looper);
    }
}
