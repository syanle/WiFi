// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            Descriptors, Message

private static interface leDescriptor
{

    public abstract leDescriptor getFile();

    public abstract String getFullName();

    public abstract String getName();

    public abstract Message toProto();
}
