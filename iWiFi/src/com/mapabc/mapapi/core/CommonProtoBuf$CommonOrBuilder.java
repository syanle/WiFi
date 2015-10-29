// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.MessageOrBuilder;

// Referenced classes of package com.mapabc.mapapi.core:
//            CommonProtoBuf

public static interface 
    extends MessageOrBuilder
{

    public abstract String getAK();

    public abstract String getConfig();

    public abstract String getEnc();

    public abstract String getResType();

    public abstract boolean hasAK();

    public abstract boolean hasConfig();

    public abstract boolean hasEnc();

    public abstract boolean hasResType();
}
