// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.service;

import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.openapi.LWAPIAccount;

public interface IILWAPIServiceCallback
{

    public abstract void onRequestMessage(LWAPIAccount lwapiaccount, LWMessage lwmessage, int i);
}
