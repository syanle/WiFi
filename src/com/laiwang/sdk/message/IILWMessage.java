// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.message;

import android.os.Bundle;

public interface IILWMessage
{

    public abstract IILWMessage fromBundle(Bundle bundle);

    public abstract String getAppkey();

    public abstract String getMessageActivity();

    public abstract String getMessageSource();

    public abstract String getMessageThumb();

    public abstract int getMessageType();

    public abstract String getSecret();

    public abstract String getShareType();

    public abstract void setAppkey(String s);

    public abstract void setMessageActiviy(String s);

    public abstract void setMessageType(int i);

    public abstract void setMesssageSource(String s);

    public abstract void setSecret(String s);

    public abstract void setShareType(String s);

    public abstract Bundle toBundle();
}
