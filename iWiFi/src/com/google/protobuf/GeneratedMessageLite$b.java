// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.Serializable;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessageLite, MessageLite

static final class 
    implements Serializable
{

    private String a;
    private byte b[];

    (MessageLite messagelite)
    {
        a = messagelite.getClass().getName();
        b = messagelite.toByteArray();
    }
}
