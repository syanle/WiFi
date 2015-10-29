// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class val.asynLoadImgBack extends Handler
{

    final ck val$asynLoadImgBack;

    public void handleMessage(Message message)
    {
        int i;
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 101: // 'e'
            message = (String)message.obj;
            val$asynLoadImgBack.saved(0, message);
            return;

        case 102: // 'f'
            i = message.arg1;
            break;
        }
        val$asynLoadImgBack.saved(i, null);
    }

    ck(ck ck)
    {
        val$asynLoadImgBack = ck;
        super(final_looper);
    }
}
