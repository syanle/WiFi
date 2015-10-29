// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            RGCProtoBuf, v

public static final class <init> extends com.google.protobuf.er
    implements 
{

    private int bitField0_;
    private RepeatedFieldBuilder rgcItemBuilder_;
    private List rgcItem_;

    private  buildParsed()
        throws InvalidProtocolBufferException
    {
          = buildPartial();
        if (!.lized())
        {
            throw newUninitializedMessageException().asInvalidProtocolBufferException();
        } else
        {
            return ;
        }
    }

    private static alidProtocolBufferException create()
    {
        return new <init>();
    }

    private void ensureRgcItemIsMutable()
    {
        if ((bitField0_ & 1) != 1)
        {
            rgcItem_ = new ArrayList(rgcItem_);
            bitField0_ = bitField0_ | 1;
        }
    }

    public static final com.google.protobuf.er.bitField0_ getDescriptor()
    {
        return RGCProtoBuf.access$1900();
    }

    private RepeatedFieldBuilder getRgcItemFieldBuilder()
    {
        boolean flag = true;
        if (rgcItemBuilder_ == null)
        {
            List list = rgcItem_;
            if ((bitField0_ & 1) != 1)
            {
                flag = false;
            }
            rgcItemBuilder_ = new RepeatedFieldBuilder(list, flag, getParentForChildren(), isClean());
            rgcItem_ = null;
        }
        return rgcItemBuilder_;
    }

    private void maybeForceBuilderInitialization()
    {
        if (_mth400())
        {
            getRgcItemFieldBuilder();
        }
    }

    public getRgcItemFieldBuilder addAllRgcItem(Iterable iterable)
    {
        if (rgcItemBuilder_ == null)
        {
            ensureRgcItemIsMutable();
            com.google.protobuf.er.ensureRgcItemIsMutable(iterable, rgcItem_);
            onChanged();
            return this;
        } else
        {
            rgcItemBuilder_.addAllMessages(iterable);
            return this;
        }
    }

    public  addRgcItem(int i,  )
    {
        if (rgcItemBuilder_ == null)
        {
            ensureRgcItemIsMutable();
            rgcItem_.add(i, .d());
            onChanged();
            return this;
        } else
        {
            rgcItemBuilder_.addMessage(i, .d());
            return this;
        }
    }

    public d addRgcItem(int i, d d)
    {
        if (rgcItemBuilder_ == null)
        {
            if (d == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureRgcItemIsMutable();
                rgcItem_.add(i, d);
                onChanged();
                return this;
            }
        } else
        {
            rgcItemBuilder_.addMessage(i, d);
            return this;
        }
    }

    public rgcItemBuilder_ addRgcItem(rgcItemBuilder_ rgcitembuilder_)
    {
        if (rgcItemBuilder_ == null)
        {
            ensureRgcItemIsMutable();
            rgcItem_.add(rgcitembuilder_.d());
            onChanged();
            return this;
        } else
        {
            rgcItemBuilder_.addMessage(rgcitembuilder_.d());
            return this;
        }
    }

    public d addRgcItem(d d)
    {
        if (rgcItemBuilder_ == null)
        {
            if (d == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureRgcItemIsMutable();
                rgcItem_.add(d);
                onChanged();
                return this;
            }
        } else
        {
            rgcItemBuilder_.addMessage(d);
            return this;
        }
    }

    public rgcItemBuilder_ addRgcItemBuilder()
    {
        return (rgcItemBuilder_)getRgcItemFieldBuilder().addBuilder(stance());
    }

    public stance addRgcItemBuilder(int i)
    {
        return (stance)getRgcItemFieldBuilder().addBuilder(i, stance());
    }

    public volatile Message build()
    {
        return build();
    }

    public volatile MessageLite build()
    {
        return build();
    }

    public build build()
    {
        build build1 = buildPartial();
        if (!build1.lized())
        {
            throw newUninitializedMessageException(build1);
        } else
        {
            return build1;
        }
    }

    public volatile Message buildPartial()
    {
        return buildPartial();
    }

    public volatile MessageLite buildPartial()
    {
        return buildPartial();
    }

    public buildPartial buildPartial()
    {
        buildPartial buildpartial = new buildPartial(this, null);
        int i = bitField0_;
        if (rgcItemBuilder_ == null)
        {
            if ((bitField0_ & 1) == 1)
            {
                rgcItem_ = Collections.unmodifiableList(rgcItem_);
                bitField0_ = bitField0_ & -2;
            }
            _mth602(buildpartial, rgcItem_);
        } else
        {
            _mth602(buildpartial, rgcItemBuilder_.build());
        }
        onBuilt();
        return buildpartial;
    }

    public volatile com.google.protobuf.er clear()
    {
        return clear();
    }

    public volatile com.google.protobuf.er clear()
    {
        return clear();
    }

    public volatile com.google.protobuf.er clear()
    {
        return clear();
    }

    public volatile com.google.protobuf.er clear()
    {
        return clear();
    }

    public clear clear()
    {
        super.er();
        if (rgcItemBuilder_ == null)
        {
            rgcItem_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            return this;
        } else
        {
            rgcItemBuilder_.clear();
            return this;
        }
    }

    public rgcItemBuilder_ clearRgcItem()
    {
        if (rgcItemBuilder_ == null)
        {
            rgcItem_ = Collections.emptyList();
            bitField0_ = bitField0_ & -2;
            onChanged();
            return this;
        } else
        {
            rgcItemBuilder_.clear();
            return this;
        }
    }

    public volatile com.google.protobuf.er clone()
    {
        return clone();
    }

    public volatile com.google.protobuf.er clone()
    {
        return clone();
    }

    public volatile com.google.protobuf.er clone()
    {
        return clone();
    }

    public volatile com.google.protobuf.er clone()
    {
        return clone();
    }

    public volatile com.google.protobuf.er clone()
    {
        return clone();
    }

    public clone clone()
    {
        return create().mergeFrom(buildPartial());
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public volatile Message getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public volatile MessageLite getDefaultInstanceForType()
    {
        return getDefaultInstanceForType();
    }

    public getDefaultInstanceForType getDefaultInstanceForType()
    {
        return ltInstance();
    }

    public com.google.protobuf.er getDescriptorForType()
    {
        return iptor();
    }

    public iptor getRgcItem(int i)
    {
        if (rgcItemBuilder_ == null)
        {
            return (rgcItemBuilder_)rgcItem_.get(i);
        } else
        {
            return (rgcItem_)rgcItemBuilder_.getMessage(i);
        }
    }

    public rgcItemBuilder_ getRgcItemBuilder(int i)
    {
        return (rgcItemBuilder_)getRgcItemFieldBuilder().getBuilder(i);
    }

    public List getRgcItemBuilderList()
    {
        return getRgcItemFieldBuilder().getBuilderList();
    }

    public int getRgcItemCount()
    {
        if (rgcItemBuilder_ == null)
        {
            return rgcItem_.size();
        } else
        {
            return rgcItemBuilder_.getCount();
        }
    }

    public List getRgcItemList()
    {
        if (rgcItemBuilder_ == null)
        {
            return Collections.unmodifiableList(rgcItem_);
        } else
        {
            return rgcItemBuilder_.getMessageList();
        }
    }

    public  getRgcItemOrBuilder(int i)
    {
        if (rgcItemBuilder_ == null)
        {
            return (rgcItemBuilder_)rgcItem_.get(i);
        } else
        {
            return (rgcItem_)rgcItemBuilder_.getMessageOrBuilder(i);
        }
    }

    public List getRgcItemOrBuilderList()
    {
        if (rgcItemBuilder_ != null)
        {
            return rgcItemBuilder_.getMessageOrBuilderList();
        } else
        {
            return Collections.unmodifiableList(rgcItem_);
        }
    }

    protected com.google.protobuf.ble internalGetFieldAccessorTable()
    {
        return RGCProtoBuf.access$2000();
    }

    public final boolean isInitialized()
    {
        for (int i = 0; i < getRgcItemCount(); i++)
        {
            if (!getRgcItem(i).d())
            {
                return false;
            }
        }

        return true;
    }

    public volatile com.google.protobuf.er mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public volatile com.google.protobuf.er mergeFrom(Message message)
    {
        return mergeFrom(message);
    }

    public volatile com.google.protobuf.er mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public volatile com.google.protobuf.er mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public volatile com.google.protobuf.er mergeFrom(Message message)
    {
        return mergeFrom(message);
    }

    public volatile com.google.protobuf.er mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        return mergeFrom(codedinputstream, extensionregistrylite);
    }

    public mergeFrom mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
        throws IOException
    {
        com.google.protobuf.er er = UnknownFieldSet.newBuilder(getUnknownFields());
        do
        {
            int i = codedinputstream.readTag();
            switch (i)
            {
            default:
                if (!parseUnknownField(codedinputstream, er, extensionregistrylite, i))
                {
                    setUnknownFields(er.setUnknownFields());
                    onChanged();
                    return this;
                }
                break;

            case 0: // '\0'
                setUnknownFields(er.setUnknownFields());
                onChanged();
                return this;

            case 10: // '\n'
                mergeFrom mergefrom = onChanged();
                codedinputstream.readMessage(mergefrom, extensionregistrylite);
                addRgcItem(mergefrom.dPartial());
                break;
            }
        } while (true);
    }

    public dPartial mergeFrom(Message message)
    {
        if (message instanceof dPartial)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.om(message);
            return this;
        }
    }

    public mergeFrom mergeFrom(mergeFrom mergefrom)
    {
        RepeatedFieldBuilder repeatedfieldbuilder;
        repeatedfieldbuilder = null;
        if (mergefrom == ltInstance())
        {
            return this;
        }
        if (rgcItemBuilder_ != null) goto _L2; else goto _L1
_L1:
        if (!_mth600(mergefrom).isEmpty())
        {
            if (rgcItem_.isEmpty())
            {
                rgcItem_ = _mth600(mergefrom);
                bitField0_ = bitField0_ & -2;
            } else
            {
                ensureRgcItemIsMutable();
                rgcItem_.addAll(_mth600(mergefrom));
            }
            onChanged();
        }
_L4:
        mergeUnknownFields(mergefrom.wnFields());
        return this;
_L2:
        if (!_mth600(mergefrom).isEmpty())
        {
            if (rgcItemBuilder_.isEmpty())
            {
                rgcItemBuilder_.dispose();
                rgcItemBuilder_ = null;
                rgcItem_ = _mth600(mergefrom);
                bitField0_ = bitField0_ & -2;
                if (_mth700())
                {
                    repeatedfieldbuilder = getRgcItemFieldBuilder();
                }
                rgcItemBuilder_ = repeatedfieldbuilder;
            } else
            {
                rgcItemBuilder_.addAllMessages(_mth600(mergefrom));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public _cls600 removeRgcItem(int i)
    {
        if (rgcItemBuilder_ == null)
        {
            ensureRgcItemIsMutable();
            rgcItem_.remove(i);
            onChanged();
            return this;
        } else
        {
            rgcItemBuilder_.remove(i);
            return this;
        }
    }

    public rgcItemBuilder_ setRgcItem(int i, rgcItemBuilder_ rgcitembuilder_)
    {
        if (rgcItemBuilder_ == null)
        {
            ensureRgcItemIsMutable();
            rgcItem_.set(i, rgcitembuilder_.d());
            onChanged();
            return this;
        } else
        {
            rgcItemBuilder_.setMessage(i, rgcitembuilder_.d());
            return this;
        }
    }

    public d setRgcItem(int i, d d)
    {
        if (rgcItemBuilder_ == null)
        {
            if (d == null)
            {
                throw new NullPointerException();
            } else
            {
                ensureRgcItemIsMutable();
                rgcItem_.set(i, d);
                onChanged();
                return this;
            }
        } else
        {
            rgcItemBuilder_.setMessage(i, d);
            return this;
        }
    }



    private ()
    {
        rgcItem_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    private maybeForceBuilderInitialization(com.google.protobuf.er er)
    {
        super(er);
        rgcItem_ = Collections.emptyList();
        maybeForceBuilderInitialization();
    }

    maybeForceBuilderInitialization(com.google.protobuf.er er, v v)
    {
        this(er);
    }
}
