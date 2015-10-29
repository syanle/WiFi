// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, UnknownFieldSet, Message, CodedInputStream, 
//            ExtensionRegistryLite

public static abstract class builderParent extends builderParent
{
    private class a
        implements GeneratedMessage.BuilderParent
    {

        final GeneratedMessage.Builder a;

        public void markDirty()
        {
            a.onChanged();
        }

        private a()
        {
            a = GeneratedMessage.Builder.this;
            super();
        }

        a(GeneratedMessage._cls1 _pcls1)
        {
            this();
        }
    }


    private arent builderParent;
    private boolean isClean;
    private a meAsParent;
    private UnknownFieldSet unknownFields;

    private Map getAllFieldsMutable()
    {
        TreeMap treemap = new TreeMap();
        Iterator iterator = essorTable.access._mth000(internalGetFieldAccessorTable()).tFields().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            or or = (or)iterator.next();
            if (or.isRepeated())
            {
                List list = (List)getField(or);
                if (!list.isEmpty())
                {
                    treemap.put(or, list);
                }
            } else
            if (hasField(or))
            {
                treemap.put(or, getField(or));
            }
        } while (true);
        return treemap;
    }

    public or addRepeatedField(or or, Object obj)
    {
        essorTable.access._mth100(internalGetFieldAccessorTable(), or).b(this, obj);
        return this;
    }

    public volatile or addRepeatedField(or or, Object obj)
    {
        return addRepeatedField(or, obj);
    }

    public volatile or clear()
    {
        return clear();
    }

    public clear clear()
    {
        unknownFields = UnknownFieldSet.getDefaultInstance();
        onChanged();
        return this;
    }

    public volatile onChanged clear()
    {
        return clear();
    }

    public volatile clear clear()
    {
        return clear();
    }

    public or clearField(or or)
    {
        essorTable.access._mth100(internalGetFieldAccessorTable(), or).d(this);
        return this;
    }

    public volatile or clearField(or or)
    {
        return clearField(or);
    }

    public volatile or clone()
    {
        return clone();
    }

    public volatile er clone()
    {
        return clone();
    }

    public clone clone()
    {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    public volatile > clone()
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

    void dispose()
    {
        builderParent = null;
    }

    public Map getAllFields()
    {
        return Collections.unmodifiableMap(getAllFieldsMutable());
    }

    public getAllFieldsMutable getDescriptorForType()
    {
        return essorTable.access._mth000(internalGetFieldAccessorTable());
    }

    public Object getField(or or)
    {
        Object obj1 = essorTable.access._mth100(internalGetFieldAccessorTable(), or).a(this);
        Object obj = obj1;
        if (or.isRepeated())
        {
            obj = Collections.unmodifiableList((List)obj1);
        }
        return obj;
    }

    protected arent getParentForChildren()
    {
        if (meAsParent == null)
        {
            meAsParent = new a(null);
        }
        return meAsParent;
    }

    public Object getRepeatedField(or or, int i)
    {
        return essorTable.access._mth100(internalGetFieldAccessorTable(), or).a(this, i);
    }

    public int getRepeatedFieldCount(or or)
    {
        return essorTable.access._mth100(internalGetFieldAccessorTable(), or).c(this);
    }

    public final UnknownFieldSet getUnknownFields()
    {
        return unknownFields;
    }

    public boolean hasField(or or)
    {
        return essorTable.access._mth100(internalGetFieldAccessorTable(), or).b(this);
    }

    protected abstract essorTable internalGetFieldAccessorTable();

    protected boolean isClean()
    {
        return isClean;
    }

    public boolean isInitialized()
    {
        Iterator iterator = getDescriptorForType().tFields().iterator();
_L2:
        Object obj;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_134;
            }
            obj = (or)iterator.next();
            if (((or) (obj)).isRequired() && !hasField(((or) (obj))))
            {
                return false;
            }
        } while (((or) (obj)).getJavaType() != or.JavaType.MESSAGE);
        if (!((or) (obj)).isRepeated())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = ((List)getField(((or) (obj)))).iterator();
_L4:
        if (!((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        if (((Message)((Iterator) (obj)).next()).isInitialized()) goto _L4; else goto _L3
_L3:
        return false;
        if (!hasField(((or) (obj))) || ((Message)getField(((or) (obj)))).isInitialized()) goto _L2; else goto _L5
_L5:
        return false;
        return true;
    }

    protected void markClean()
    {
        isClean = true;
    }

    public volatile isClean mergeUnknownFields(UnknownFieldSet unknownfieldset)
    {
        return mergeUnknownFields(unknownfieldset);
    }

    public final mergeUnknownFields mergeUnknownFields(UnknownFieldSet unknownfieldset)
    {
        unknownFields = UnknownFieldSet.newBuilder(unknownFields).ergeFrom(unknownfieldset).uild();
        onChanged();
        return this;
    }

    public volatile onChanged mergeUnknownFields(UnknownFieldSet unknownfieldset)
    {
        return mergeUnknownFields(unknownfieldset);
    }

    public or newBuilderForField(or or)
    {
        return essorTable.access._mth100(internalGetFieldAccessorTable(), or).a();
    }

    protected void onBuilt()
    {
        if (builderParent != null)
        {
            markClean();
        }
    }

    protected final void onChanged()
    {
        if (isClean && builderParent != null)
        {
            builderParent.markDirty();
            isClean = false;
        }
    }

    protected boolean parseUnknownField(CodedInputStream codedinputstream, isClean isclean, ExtensionRegistryLite extensionregistrylite, int i)
        throws IOException
    {
        return isclean.ergeFieldFrom(i, codedinputstream);
    }

    public or setField(or or, Object obj)
    {
        essorTable.access._mth100(internalGetFieldAccessorTable(), or).a(this, obj);
        return this;
    }

    public volatile or setField(or or, Object obj)
    {
        return setField(or, obj);
    }

    public or setRepeatedField(or or, int i, Object obj)
    {
        essorTable.access._mth100(internalGetFieldAccessorTable(), or).a(this, i, obj);
        return this;
    }

    public volatile or setRepeatedField(or or, int i, Object obj)
    {
        return setRepeatedField(or, i, obj);
    }

    public final or setUnknownFields(UnknownFieldSet unknownfieldset)
    {
        unknownFields = unknownfieldset;
        onChanged();
        return this;
    }

    public volatile onChanged setUnknownFields(UnknownFieldSet unknownfieldset)
    {
        return setUnknownFields(unknownfieldset);
    }


    protected arent()
    {
        this(null);
    }

    protected arent(arent arent)
    {
        unknownFields = UnknownFieldSet.getDefaultInstance();
        builderParent = arent;
    }
}
