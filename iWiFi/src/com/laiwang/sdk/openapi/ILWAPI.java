// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.content.Context;
import com.laiwang.sdk.message.IILWMessage;

public interface ILWAPI
{
    public static abstract class IILaiwangApiCallback
    {

        public int onDisplay(String s)
        {
            return 0;
        }

        public int onResponceAnswer(int i)
        {
            return 0;
        }

        public IILaiwangApiCallback()
        {
        }
    }


    public abstract boolean answerLWResponced(Context context, String s, IILaiwangApiCallback iilaiwangapicallback);

    public abstract void deleteCallback();

    public abstract boolean isLWAppInstalled();

    public abstract boolean isLWSupported(int i);

    public abstract boolean openLWAPP();

    public abstract void registCallback(IILaiwangApiCallback iilaiwangapicallback);

    public abstract boolean requestData(Context context, IILWMessage iilwmessage, int i);

    public abstract boolean transactData(Context context, IILWMessage iilwmessage, int i);
}
