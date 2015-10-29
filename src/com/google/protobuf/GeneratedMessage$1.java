// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, Message

static final class b
    implements b
{

    final Message a;
    final int b;

    public scriptor a()
    {
        return (scriptor)a.getDescriptorForType().getExtensions().get(b);
    }

    scriptor(Message message, int i)
    {
        a = message;
        b = i;
        super();
    }
}
