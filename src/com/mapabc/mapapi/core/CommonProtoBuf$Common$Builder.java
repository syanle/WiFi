// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;

// Referenced classes of package com.mapabc.mapapi.core:
//            CommonProtoBuf, b

public static final class <init> extends com.google.protobuf.er
    implements 
{

    private Object aK_;
    private int bitField0_;
    private Object config_;
    private Object enc_;
    private Object resType_;

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

    private static nvalidProtocolBufferException create()
    {
        return new <init>();
    }

    public static final com.google.protobuf.er getDescriptor()
    {
        return CommonProtoBuf.access$000();
    }

    private void maybeForceBuilderInitialization()
    {
        if (!_mth00());
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
        int j = 1;
        buildPartial buildpartial = new buildPartial(this, null);
        int k = bitField0_;
        int i;
        if ((k & 1) != 1)
        {
            j = 0;
        }
        _mth02(buildpartial, config_);
        i = j;
        if ((k & 2) == 2)
        {
            i = j | 2;
        }
        _mth02(buildpartial, aK_);
        j = i;
        if ((k & 4) == 4)
        {
            j = i | 4;
        }
        _mth02(buildpartial, resType_);
        i = j;
        if ((k & 8) == 8)
        {
            i = j | 8;
        }
        _mth002(buildpartial, enc_);
        _mth102(buildpartial, i);
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
        super.();
        config_ = "";
        bitField0_ = bitField0_ & -2;
        aK_ = "";
        bitField0_ = bitField0_ & -3;
        resType_ = "";
        bitField0_ = bitField0_ & -5;
        enc_ = "";
        bitField0_ = bitField0_ & -9;
        return this;
    }

    public bitField0_ clearAK()
    {
        bitField0_ = bitField0_ & -3;
        aK_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearConfig()
    {
        bitField0_ = bitField0_ & -2;
        config_ = ltInstance().g();
        onChanged();
        return this;
    }

    public onChanged clearEnc()
    {
        bitField0_ = bitField0_ & -9;
        enc_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearResType()
    {
        bitField0_ = bitField0_ & -5;
        resType_ = ltInstance().pe();
        onChanged();
        return this;
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

    public String getAK()
    {
        Object obj = aK_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            aK_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getConfig()
    {
        Object obj = config_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            config_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
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

    public String getEnc()
    {
        Object obj = enc_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            enc_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getResType()
    {
        Object obj = resType_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            resType_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public boolean hasAK()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasConfig()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasEnc()
    {
        return (bitField0_ & 8) == 8;
    }

    public boolean hasResType()
    {
        return (bitField0_ & 4) == 4;
    }

    protected com.google.protobuf.Table internalGetFieldAccessorTable()
    {
        return CommonProtoBuf.access$100();
    }

    public final boolean isInitialized()
    {
        while (!hasConfig() || !hasAK()) 
        {
            return false;
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
                bitField0_ = bitField0_ | 1;
                config_ = codedinputstream.readBytes();
                break;

            case 18: // '\022'
                bitField0_ = bitField0_ | 2;
                aK_ = codedinputstream.readBytes();
                break;

            case 26: // '\032'
                bitField0_ = bitField0_ | 4;
                resType_ = codedinputstream.readBytes();
                break;

            case 34: // '"'
                bitField0_ = bitField0_ | 8;
                enc_ = codedinputstream.readBytes();
                break;
            }
        } while (true);
    }

    public enc_ mergeFrom(Message message)
    {
        if (message instanceof enc_)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.From(message);
            return this;
        }
    }

    public m mergeFrom(m m)
    {
        if (m == ltInstance())
        {
            return this;
        }
        if (m.g())
        {
            setConfig(m.g());
        }
        if (m.g())
        {
            setAK(m.setAK());
        }
        if (m.pe())
        {
            setResType(m.pe());
        }
        if (m.pe())
        {
            setEnc(m.setEnc());
        }
        mergeUnknownFields(m.wnFields());
        return this;
    }

    public wnFields setAK(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 2;
            aK_ = s;
            onChanged();
            return this;
        }
    }

    void setAK(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 2;
        aK_ = bytestring;
        onChanged();
    }

    public onChanged setConfig(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 1;
            config_ = s;
            onChanged();
            return this;
        }
    }

    void setConfig(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 1;
        config_ = bytestring;
        onChanged();
    }

    public onChanged setEnc(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 8;
            enc_ = s;
            onChanged();
            return this;
        }
    }

    void setEnc(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 8;
        enc_ = bytestring;
        onChanged();
    }

    public onChanged setResType(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 4;
            resType_ = s;
            onChanged();
            return this;
        }
    }

    void setResType(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 4;
        resType_ = bytestring;
        onChanged();
    }



    private le()
    {
        config_ = "";
        aK_ = "";
        resType_ = "";
        enc_ = "";
        maybeForceBuilderInitialization();
    }

    private maybeForceBuilderInitialization(com.google.protobuf. )
    {
        super();
        config_ = "";
        aK_ = "";
        resType_ = "";
        enc_ = "";
        maybeForceBuilderInitialization();
    }

    maybeForceBuilderInitialization(com.google.protobuf. , b b)
    {
        this();
    }
}
