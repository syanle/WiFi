// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            GeneratedMessageLite, MessageLite

public static final class <init>
{

    private final MessageLite containingTypeDefaultInstance;
    private final Object defaultValue;
    private final descriptor descriptor;
    private final MessageLite messageDefaultInstance;

    public MessageLite getContainingTypeDefaultInstance()
    {
        return containingTypeDefaultInstance;
    }

    public MessageLite getMessageDefaultInstance()
    {
        return messageDefaultInstance;
    }

    public int getNumber()
    {
        return descriptor.descriptor();
    }




    private A(MessageLite messagelite, Object obj, MessageLite messagelite1, A a)
    {
        if (messagelite == null)
        {
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }
        if (a.A() == A && messagelite1 == null)
        {
            throw new IllegalArgumentException("Null messageDefaultInstance");
        } else
        {
            containingTypeDefaultInstance = messagelite;
            defaultValue = obj;
            messageDefaultInstance = messagelite1;
            descriptor = a;
            return;
        }
    }

    descriptor(MessageLite messagelite, Object obj, MessageLite messagelite1, descriptor descriptor1, descriptor descriptor2)
    {
        this(messagelite, obj, messagelite1, descriptor1);
    }
}
