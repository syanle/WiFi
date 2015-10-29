// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, FieldSet, DynamicMessage, CodedInputStream, 
//            ExtensionRegistryLite

public static abstract class extensions extends extensions
    implements rBuilder
{

    private FieldSet extensions;

    private FieldSet buildExtensions()
    {
        extensions.c();
        return extensions;
    }

    private void ensureExtensionsIsMutable()
    {
        if (extensions.d())
        {
            extensions = extensions.e();
        }
    }

    private void verifyContainingType(extensions extensions1)
    {
        if (extensions1.ainingType() != getDescriptorForType())
        {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        } else
        {
            return;
        }
    }

    private void verifyExtensionContainingType( )
    {
        if (.getDescriptor().ainingType() != getDescriptorForType())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Extension is for type \"").append(.getDescriptor().ainingType().ainingType()).append("\" which does not match message type \"").append(getDescriptorForType().getDescriptorForType()).append("\".").toString());
        } else
        {
            return;
        }
    }

    public final  addExtension( , Object obj)
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
         1 = .getDescriptor();
        extensions.b(1, .access._mth1000(, obj));
        onChanged();
        return this;
    }

    public volatile onChanged addRepeatedField(onChanged onchanged, Object obj)
    {
        return addRepeatedField(onchanged, obj);
    }

    public addRepeatedField addRepeatedField(addRepeatedField addrepeatedfield, Object obj)
    {
        if (addrepeatedfield.sion())
        {
            verifyContainingType(addrepeatedfield);
            ensureExtensionsIsMutable();
            extensions.b(addrepeatedfield, obj);
            onChanged();
            return this;
        } else
        {
            return (onChanged)super.dField(addrepeatedfield, obj);
        }
    }

    public volatile dField addRepeatedField(dField dfield, Object obj)
    {
        return addRepeatedField(dfield, obj);
    }

    public volatile addRepeatedField clear()
    {
        return clear();
    }

    public volatile clear clear()
    {
        return clear();
    }

    public clear clear()
    {
        extensions = FieldSet.b();
        return (extensions)super.extensions();
    }

    public volatile extensions clear()
    {
        return clear();
    }

    public volatile clear clear()
    {
        return clear();
    }

    public final  clearExtension( )
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
        extensions.c(.getDescriptor());
        onChanged();
        return this;
    }

    public volatile onChanged clearField(onChanged onchanged)
    {
        return clearField(onchanged);
    }

    public clearField clearField(clearField clearfield)
    {
        if (clearfield.sion())
        {
            verifyContainingType(clearfield);
            ensureExtensionsIsMutable();
            extensions.c(clearfield);
            onChanged();
            return this;
        } else
        {
            return (onChanged)super.(clearfield);
        }
    }

    public volatile  clearField( )
    {
        return clearField();
    }

    public volatile clearField clone()
    {
        return clone();
    }

    public volatile clone clone()
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

    public Map getAllFields()
    {
        Map map = _mth0(this);
        map.putAll(extensions.g());
        return Collections.unmodifiableMap(map);
    }

    public final Object getExtension( )
    {
        verifyExtensionContainingType();
         1 = .getDescriptor();
        Object obj = extensions.b(1);
        if (obj == null)
        {
            if (1.ted())
            {
                return Collections.emptyList();
            }
            if (1.Type() == e.MESSAGE)
            {
                return .getMessageDefaultInstance();
            } else
            {
                return .access._mth400(, 1.ultValue());
            }
        } else
        {
            return .access._mth400(, obj);
        }
    }

    public final Object getExtension( , int i)
    {
        verifyExtensionContainingType();
         1 = .getDescriptor();
        return .access._mth500(, extensions.a(1, i));
    }

    public final int getExtensionCount( )
    {
        verifyExtensionContainingType();
         = .getDescriptor();
        return extensions.d();
    }

    public Object getField(extensions extensions1)
    {
label0:
        {
label1:
            {
                if (!extensions1.sion())
                {
                    break label0;
                }
                verifyContainingType(extensions1);
                Object obj1 = extensions.b(extensions1);
                Object obj = obj1;
                if (obj1 == null)
                {
                    if (extensions1.Type() != e.MESSAGE)
                    {
                        break label1;
                    }
                    obj = DynamicMessage.getDefaultInstance(extensions1.ageType());
                }
                return obj;
            }
            return extensions1.ultValue();
        }
        return super.ultValue(extensions1);
    }

    public Object getRepeatedField(ultValue ultvalue, int i)
    {
        if (ultvalue.sion())
        {
            verifyContainingType(ultvalue);
            return extensions.a(ultvalue, i);
        } else
        {
            return super.dField(ultvalue, i);
        }
    }

    public int getRepeatedFieldCount(dField dfield)
    {
        if (dfield.sion())
        {
            verifyContainingType(dfield);
            return extensions.d(dfield);
        } else
        {
            return super.dFieldCount(dfield);
        }
    }

    public final boolean hasExtension( )
    {
        verifyExtensionContainingType();
        return extensions.a(.getDescriptor());
    }

    public boolean hasField(.getDescriptor getdescriptor)
    {
        if (getdescriptor.sion())
        {
            verifyContainingType(getdescriptor);
            return extensions.a(getdescriptor);
        } else
        {
            return super.extensions(getdescriptor);
        }
    }

    public boolean isInitialized()
    {
        return super.zed() && extensionsAreInitialized();
    }

    protected final void mergeExtensionFields(extensionsAreInitialized extensionsareinitialized)
    {
        ensureExtensionsIsMutable();
        extensions.a(access._mth600(extensionsareinitialized));
        onChanged();
    }

    protected boolean parseUnknownField(CodedInputStream codedinputstream, onChanged onchanged, ExtensionRegistryLite extensionregistrylite, int i)
        throws IOException
    {
        return rom(codedinputstream, onchanged, extensionregistrylite, this, i);
    }

    public final  setExtension( , int i, Object obj)
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
         1 = .getDescriptor();
        extensions.a(1, i, .access._mth1000(, obj));
        onChanged();
        return this;
    }

    public final  setExtension( , Object obj)
    {
        verifyExtensionContainingType();
        ensureExtensionsIsMutable();
         1 = .getDescriptor();
        extensions.a(1, .access._mth900(, obj));
        onChanged();
        return this;
    }

    public volatile onChanged setField(onChanged onchanged, Object obj)
    {
        return setField(onchanged, obj);
    }

    public setField setField(setField setfield, Object obj)
    {
        if (setfield.sion())
        {
            verifyContainingType(setfield);
            ensureExtensionsIsMutable();
            extensions.a(setfield, obj);
            onChanged();
            return this;
        } else
        {
            return (onChanged)super.onChanged(setfield, obj);
        }
    }

    public volatile onChanged setField(onChanged onchanged, Object obj)
    {
        return setField(onchanged, obj);
    }

    public volatile setField setRepeatedField(setField setfield, int i, Object obj)
    {
        return setRepeatedField(setfield, i, obj);
    }

    public setRepeatedField setRepeatedField(setRepeatedField setrepeatedfield, int i, Object obj)
    {
        if (setrepeatedfield.sion())
        {
            verifyContainingType(setrepeatedfield);
            ensureExtensionsIsMutable();
            extensions.a(setrepeatedfield, i, obj);
            onChanged();
            return this;
        } else
        {
            return (onChanged)super.dField(setrepeatedfield, i, obj);
        }
    }

    public volatile dField setRepeatedField(dField dfield, int i, Object obj)
    {
        return setRepeatedField(dfield, i, obj);
    }


    protected ()
    {
        extensions = FieldSet.b();
    }

    protected extensions(extensions extensions1)
    {
        super(extensions1);
        extensions = FieldSet.b();
    }
}
