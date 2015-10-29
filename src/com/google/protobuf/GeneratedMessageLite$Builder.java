// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessageLite, CodedInputStream, MessageLite, ExtensionRegistryLite

public static abstract class  extends 
{

    public  clear()
    {
        return this;
    }

    public volatile  clear()
    {
        return clear();
    }

    public volatile clear clone()
    {
        return clone();
    }

    public clone clone()
    {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    public volatile clone clone()
    {
        return clone();
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public abstract GeneratedMessageLite getDefaultInstanceForType();

    public volatile MessageLite getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public abstract getDefaultInstanceForType mergeFrom(GeneratedMessageLite generatedmessagelite);

    protected boolean parseUnknownField(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite, int i)
        throws IOException
    {
        return codedinputstream.skipField(i);
    }

    protected ()
    {
    }
}
