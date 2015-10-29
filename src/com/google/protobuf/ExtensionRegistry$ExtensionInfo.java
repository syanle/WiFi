// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            ExtensionRegistry, Message

public static final class <init>
{

    public final Message defaultInstance;
    public final <init> descriptor;

    private _cls9(_cls9 _pcls9)
    {
        descriptor = _pcls9;
        defaultInstance = null;
    }

    private defaultInstance(defaultInstance defaultinstance, Message message)
    {
        descriptor = defaultinstance;
        defaultInstance = message;
    }

    defaultInstance(defaultInstance defaultinstance, Message message, defaultInstance defaultinstance1)
    {
        this(defaultinstance, message);
    }
}
