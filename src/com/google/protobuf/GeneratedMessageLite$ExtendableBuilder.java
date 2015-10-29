// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessageLite, FieldSet, WireFormat, ExtensionRegistryLite, 
//            CodedInputStream, MessageLite

public static abstract class extensions extends extensions
    implements rBuilder
{

    private FieldSet extensions;
    private boolean extensionsIsMutable;

    private FieldSet buildExtensions()
    {
        extensions.c();
        extensionsIsMutable = false;
        return extensions;
    }

    private void ensureExtensionsIsMutable()
    {
        if (!extensionsIsMutable)
        {
            extensions = extensions.e();
            extensionsIsMutable = true;
        }
    }

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

    public final  addExtension( , Object obj)
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
        extensions.b(.access._mth100(), obj);
        return this;
    }

    public volatile  clear()
    {
        return clear();
    }

    public clear clear()
    {
        extensions.f();
        extensionsIsMutable = false;
        return (extensionsIsMutable)super.extensionsIsMutable();
    }

    public volatile extensionsIsMutable clear()
    {
        return clear();
    }

    public final  clearExtension( )
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
        extensions.c(.access._mth100());
        return this;
    }

    public volatile  clone()
    {
        return clone();
    }

    public volatile clone clone()
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

    protected boolean extensionsAreInitialized()
    {
        return extensions.i();
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

    protected final void mergeExtensionFields( )
    {
        ensureExtensionsIsMutable();
        extensions.a(access._mth300());
    }

    protected boolean parseUnknownField(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite, int i)
        throws IOException
    {
         1;
        boolean flag;
        flag = false;
        int j = WireFormat.getTagWireType(i);
        int l = WireFormat.getTagFieldNumber(i);
        1 = extensionregistrylite.findLiteExtensionByNumber(getDefaultInstanceForType(), l);
        if (1 == null)
        {
            j = 1;
        } else
        if (j == FieldSet.a(.access._mth100(1).(), false))
        {
            j = 0;
        } else
        if ((.access._mth100(1)) && (.access._mth100(1)).() && j == FieldSet.a(.access._mth100(1).(), true))
        {
            j = 0;
            flag = true;
        } else
        {
            j = 1;
        }
        if (j != 0)
        {
            return codedinputstream.skipField(i);
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        i = codedinputstream.pushLimit(codedinputstream.readRawVarint32());
        if (.access._mth100(1).() == )
        {
            for (; codedinputstream.getBytesUntilLimit() > 0; extensions.b(.access._mth100(1), extensionregistrylite))
            {
                int k = codedinputstream.readEnum();
                extensionregistrylite = .access._mth100(1).().(k);
                if (extensionregistrylite == null)
                {
                    return true;
                }
                ensureExtensionsIsMutable();
            }

        } else
        {
            for (; codedinputstream.getBytesUntilLimit() > 0; extensions.b(.access._mth100(1), extensionregistrylite))
            {
                extensionregistrylite = ((ExtensionRegistryLite) (FieldSet.a(codedinputstream, .access._mth100(1).())));
                ensureExtensionsIsMutable();
            }

        }
        codedinputstream.popLimit(i);
_L6:
        return true;
_L2:
        ensureExtensionsIsMutable[.access._mth100(1).().()];
        JVM INSTR tableswitch 1 2: default 292
    //                   1 336
    //                   2 446;
           goto _L3 _L4 _L5
_L3:
        codedinputstream = ((CodedInputStream) (FieldSet.a(codedinputstream, .access._mth100(1).())));
_L7:
        Object obj;
        if (.access._mth100(1).())
        {
            ensureExtensionsIsMutable();
            extensions.b(.access._mth100(1), codedinputstream);
        } else
        {
            ensureExtensionsIsMutable();
            extensions.a(.access._mth100(1), codedinputstream);
        }
        if (true) goto _L6; else goto _L4
_L4:
        if (.access._mth100(1).())
        {
            break MISSING_BLOCK_LABEL_494;
        }
        obj = (MessageLite)extensions.b(.access._mth100(1));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_494;
        }
        obj = ((MessageLite) (obj)).toBuilder();
_L8:
          = (() (obj));
        if (obj == null)
        {
             = .access._mth700(1).newBuilderForType();
        }
        if (.access._mth100(1).() == )
        {
            codedinputstream.readGroup(1.getNumber(), , extensionregistrylite);
        } else
        {
            codedinputstream.readMessage(, extensionregistrylite);
        }
        codedinputstream = .getNumber();
          goto _L7
_L5:
        i = codedinputstream.readEnum();
        extensionregistrylite = .access._mth100(1).().(i);
        codedinputstream = extensionregistrylite;
        if (extensionregistrylite == null)
        {
            return true;
        }
          goto _L7
        obj = null;
          goto _L8
    }

    public final  setExtension( , int i, Object obj)
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
        extensions.a(.access._mth100(), i, obj);
        return this;
    }

    public final  setExtension( , Object obj)
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
        extensions.a(.access._mth100(), obj);
        return this;
    }


    protected ()
    {
        extensions = FieldSet.b();
    }
}
