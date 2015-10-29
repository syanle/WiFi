// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.util.Iterator;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessageLite, FieldSet, MessageLite, CodedOutputStream

public static abstract class access._cls000 extends GeneratedMessageLite
    implements rBuilder
{
    protected class ExtensionWriter
    {

        private final Iterator iter;
        private final boolean messageSetWireFormat;
        private java.util.Map.Entry next;
        final GeneratedMessageLite.ExtendableMessage this$0;

        public void writeUntil(int i, CodedOutputStream codedoutputstream)
            throws IOException
        {
            while (next != null && ((GeneratedMessageLite.a)next.getKey()).getNumber() < i) 
            {
                GeneratedMessageLite.a a = (GeneratedMessageLite.a)next.getKey();
                if (messageSetWireFormat && a.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !a.isRepeated())
                {
                    codedoutputstream.writeMessageSetExtension(a.getNumber(), (MessageLite)next.getValue());
                } else
                {
                    FieldSet.a(a, next.getValue(), codedoutputstream);
                }
                if (iter.hasNext())
                {
                    next = (java.util.Map.Entry)iter.next();
                } else
                {
                    next = null;
                }
            }
        }

        private ExtensionWriter(boolean flag)
        {
            this$0 = GeneratedMessageLite.ExtendableMessage.this;
            super();
            iter = extensions.h();
            if (iter.hasNext())
            {
                next = (java.util.Map.Entry)iter.next();
            }
            messageSetWireFormat = flag;
        }

        ExtensionWriter(boolean flag, GeneratedMessageLite._cls1 _pcls1)
        {
            this(flag);
        }
    }


    private final FieldSet extensions;

    private void verifyExtensionContainingType( )
    {
        if (.getContainingTypeDefaultInstance() != getDefaultInstanceForType())
        {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        } else
        {
            return;
        }
    }

    protected boolean extensionsAreInitialized()
    {
        return extensions.i();
    }

    protected int extensionsSerializedSize()
    {
        return extensions.j();
    }

    protected int extensionsSerializedSizeAsMessageSet()
    {
        return extensions.k();
    }

    public final Object getExtension( )
    {
        verifyExtensionContainingType();
        Object obj1 = extensions.b(.access._mth100());
        Object obj = obj1;
        if (obj1 == null)
        {
            obj = .access._mth200();
        }
        return obj;
    }

    public final Object getExtension( , int i)
    {
        verifyExtensionContainingType();
        return extensions.a(.access._mth100(), i);
    }

    public final int getExtensionCount( )
    {
        verifyExtensionContainingType();
        return extensions.d(.access._mth100());
    }

    public final boolean hasExtension( )
    {
        verifyExtensionContainingType();
        return extensions.a(.access._mth100());
    }

    protected ExtensionWriter newExtensionWriter()
    {
        return new ExtensionWriter(false, null);
    }

    protected ExtensionWriter newMessageSetExtensionWriter()
    {
        return new ExtensionWriter(true, null);
    }


    protected ExtensionWriter()
    {
        extensions = FieldSet.a();
    }

    protected extensions(extensions extensions1)
    {
        extensions = access._mth000(extensions1);
    }
}
