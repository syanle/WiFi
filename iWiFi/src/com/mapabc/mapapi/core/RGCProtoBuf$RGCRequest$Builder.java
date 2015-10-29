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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;

// Referenced classes of package com.mapabc.mapapi.core:
//            RGCProtoBuf, v

public static final class <init> extends com.google.protobuf.er
    implements 
{

    private int bitField0_;
    private SingleFieldBuilder commonBuilder_;
    private onChanged common_;
    private Object coors_;
    private Object cr_;
    private Object flag_;
    private Object ts_;
    private Object type_;
    private Object x1_;
    private Object x2_;
    private Object y1_;
    private Object y2_;
    private Object z_;

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

    private static validProtocolBufferException create()
    {
        return new <init>();
    }

    private SingleFieldBuilder getCommonFieldBuilder()
    {
        if (commonBuilder_ == null)
        {
            commonBuilder_ = new SingleFieldBuilder(common_, getParentForChildren(), isClean());
            common_ = null;
        }
        return commonBuilder_;
    }

    public static final com.google.protobuf.er.commonBuilder_ getDescriptor()
    {
        return RGCProtoBuf.access$000();
    }

    private void maybeForceBuilderInitialization()
    {
        if (_mth00())
        {
            getCommonFieldBuilder();
        }
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
        int k = bitField0_;
        int j = 0;
        if ((k & 1) == 1)
        {
            j = 1;
        }
        int i;
        if (commonBuilder_ == null)
        {
            _mth02(buildpartial, common_);
        } else
        {
            _mth02(buildpartial, (_cls02)commonBuilder_.build());
        }
        i = j;
        if ((k & 2) == 2)
        {
            i = j | 2;
        }
        _mth02(buildpartial, x1_);
        j = i;
        if ((k & 4) == 4)
        {
            j = i | 4;
        }
        _mth02(buildpartial, y1_);
        i = j;
        if ((k & 8) == 8)
        {
            i = j | 8;
        }
        _mth002(buildpartial, x2_);
        j = i;
        if ((k & 0x10) == 16)
        {
            j = i | 0x10;
        }
        _mth102(buildpartial, y2_);
        i = j;
        if ((k & 0x20) == 32)
        {
            i = j | 0x20;
        }
        _mth202(buildpartial, coors_);
        j = i;
        if ((k & 0x40) == 64)
        {
            j = i | 0x40;
        }
        _mth302(buildpartial, cr_);
        i = j;
        if ((k & 0x80) == 128)
        {
            i = j | 0x80;
        }
        _mth402(buildpartial, flag_);
        j = i;
        if ((k & 0x100) == 256)
        {
            j = i | 0x100;
        }
        _mth502(buildpartial, type_);
        i = j;
        if ((k & 0x200) == 512)
        {
            i = j | 0x200;
        }
        _mth602(buildpartial, z_);
        j = i;
        if ((k & 0x400) == 1024)
        {
            j = i | 0x400;
        }
        _mth702(buildpartial, ts_);
        _mth802(buildpartial, j);
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
        if (commonBuilder_ == null)
        {
            common_ = tInstance();
        } else
        {
            commonBuilder_.clear();
        }
        bitField0_ = bitField0_ & -2;
        x1_ = "";
        bitField0_ = bitField0_ & -3;
        y1_ = "";
        bitField0_ = bitField0_ & -5;
        x2_ = "";
        bitField0_ = bitField0_ & -9;
        y2_ = "";
        bitField0_ = bitField0_ & 0xffffffef;
        coors_ = "";
        bitField0_ = bitField0_ & 0xffffffdf;
        cr_ = "";
        bitField0_ = bitField0_ & 0xffffffbf;
        flag_ = "";
        bitField0_ = bitField0_ & 0xffffff7f;
        type_ = "";
        bitField0_ = bitField0_ & 0xfffffeff;
        z_ = "";
        bitField0_ = bitField0_ & 0xfffffdff;
        ts_ = "";
        bitField0_ = bitField0_ & 0xfffffbff;
        return this;
    }

    public bitField0_ clearCommon()
    {
        if (commonBuilder_ == null)
        {
            common_ = tInstance();
            onChanged();
        } else
        {
            commonBuilder_.clear();
        }
        bitField0_ = bitField0_ & -2;
        return this;
    }

    public bitField0_ clearCoors()
    {
        bitField0_ = bitField0_ & 0xffffffdf;
        coors_ = ltInstance().();
        onChanged();
        return this;
    }

    public onChanged clearCr()
    {
        bitField0_ = bitField0_ & 0xffffffbf;
        cr_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearFlag()
    {
        bitField0_ = bitField0_ & 0xffffff7f;
        flag_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearTs()
    {
        bitField0_ = bitField0_ & 0xfffffbff;
        ts_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearType()
    {
        bitField0_ = bitField0_ & 0xfffffeff;
        type_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearX1()
    {
        bitField0_ = bitField0_ & -3;
        x1_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearX2()
    {
        bitField0_ = bitField0_ & -9;
        x2_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearY1()
    {
        bitField0_ = bitField0_ & -5;
        y1_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearY2()
    {
        bitField0_ = bitField0_ & 0xffffffef;
        y2_ = ltInstance().ltInstance();
        onChanged();
        return this;
    }

    public onChanged clearZ()
    {
        bitField0_ = bitField0_ & 0xfffffdff;
        z_ = ltInstance().ltInstance();
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

    public clone getCommon()
    {
        if (commonBuilder_ == null)
        {
            return common_;
        } else
        {
            return (common_)commonBuilder_.getMessage();
        }
    }

    public commonBuilder_ getCommonBuilder()
    {
        bitField0_ = bitField0_ | 1;
        onChanged();
        return (onChanged)getCommonFieldBuilder().getBuilder();
    }

    public getCommonFieldBuilder getCommonOrBuilder()
    {
        if (commonBuilder_ != null)
        {
            return (commonBuilder_)commonBuilder_.getMessageOrBuilder();
        } else
        {
            return common_;
        }
    }

    public String getCoors()
    {
        Object obj = coors_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            coors_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getCr()
    {
        Object obj = cr_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            cr_ = obj;
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

    public String getFlag()
    {
        Object obj = flag_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            flag_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getTs()
    {
        Object obj = ts_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            ts_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getType()
    {
        Object obj = type_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            type_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getX1()
    {
        Object obj = x1_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            x1_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getX2()
    {
        Object obj = x2_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            x2_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getY1()
    {
        Object obj = y1_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            y1_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getY2()
    {
        Object obj = y2_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            y2_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public String getZ()
    {
        Object obj = z_;
        if (!(obj instanceof String))
        {
            obj = ((ByteString)obj).toStringUtf8();
            z_ = obj;
            return ((String) (obj));
        } else
        {
            return (String)obj;
        }
    }

    public boolean hasCommon()
    {
        return (bitField0_ & 1) == 1;
    }

    public boolean hasCoors()
    {
        return (bitField0_ & 0x20) == 32;
    }

    public boolean hasCr()
    {
        return (bitField0_ & 0x40) == 64;
    }

    public boolean hasFlag()
    {
        return (bitField0_ & 0x80) == 128;
    }

    public boolean hasTs()
    {
        return (bitField0_ & 0x400) == 1024;
    }

    public boolean hasType()
    {
        return (bitField0_ & 0x100) == 256;
    }

    public boolean hasX1()
    {
        return (bitField0_ & 2) == 2;
    }

    public boolean hasX2()
    {
        return (bitField0_ & 8) == 8;
    }

    public boolean hasY1()
    {
        return (bitField0_ & 4) == 4;
    }

    public boolean hasY2()
    {
        return (bitField0_ & 0x10) == 16;
    }

    public boolean hasZ()
    {
        return (bitField0_ & 0x200) == 512;
    }

    protected com.google.protobuf.able internalGetFieldAccessorTable()
    {
        return RGCProtoBuf.access$100();
    }

    public final boolean isInitialized()
    {
        while (!hasCommon() || !getCommon().ized()) 
        {
            return false;
        }
        return true;
    }

    public ized mergeCommon(ized ized)
    {
        if (commonBuilder_ == null)
        {
            if ((bitField0_ & 1) == 1 && common_ != tInstance())
            {
                common_ = r(common_).ergeFrom(ized).uildPartial();
            } else
            {
                common_ = ized;
            }
            onChanged();
        } else
        {
            commonBuilder_.mergeFrom(ized);
        }
        bitField0_ = bitField0_ | 1;
        return this;
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
                mergeFrom mergefrom = r();
                if (hasCommon())
                {
                    mergefrom.ergeFrom(getCommon());
                }
                codedinputstream.readMessage(mergefrom, extensionregistrylite);
                setCommon(mergefrom.uildPartial());
                break;

            case 18: // '\022'
                bitField0_ = bitField0_ | 2;
                x1_ = codedinputstream.readBytes();
                break;

            case 26: // '\032'
                bitField0_ = bitField0_ | 4;
                y1_ = codedinputstream.readBytes();
                break;

            case 34: // '"'
                bitField0_ = bitField0_ | 8;
                x2_ = codedinputstream.readBytes();
                break;

            case 42: // '*'
                bitField0_ = bitField0_ | 0x10;
                y2_ = codedinputstream.readBytes();
                break;

            case 50: // '2'
                bitField0_ = bitField0_ | 0x20;
                coors_ = codedinputstream.readBytes();
                break;

            case 58: // ':'
                bitField0_ = bitField0_ | 0x40;
                cr_ = codedinputstream.readBytes();
                break;

            case 66: // 'B'
                bitField0_ = bitField0_ | 0x80;
                flag_ = codedinputstream.readBytes();
                break;

            case 74: // 'J'
                bitField0_ = bitField0_ | 0x100;
                type_ = codedinputstream.readBytes();
                break;

            case 82: // 'R'
                bitField0_ = bitField0_ | 0x200;
                z_ = codedinputstream.readBytes();
                break;

            case 90: // 'Z'
                bitField0_ = bitField0_ | 0x400;
                ts_ = codedinputstream.readBytes();
                break;
            }
        } while (true);
    }

    public ts_ mergeFrom(Message message)
    {
        if (message instanceof ts_)
        {
            return mergeFrom((mergeFrom)message);
        } else
        {
            super.rom(message);
            return this;
        }
    }

    public  mergeFrom( )
    {
        if ( == ltInstance())
        {
            return this;
        }
        if (.n())
        {
            mergeCommon(.n());
        }
        if (.n())
        {
            setX1(.setX1());
        }
        if (.setX1())
        {
            setY1(.setY1());
        }
        if (.setY1())
        {
            setX2(.setX2());
        }
        if (.setX2())
        {
            setY2(.setY2());
        }
        if (.())
        {
            setCoors(.());
        }
        if (.())
        {
            setCr(.setCr());
        }
        if (.setCr())
        {
            setFlag(.setFlag());
        }
        if (.setFlag())
        {
            setType(.setType());
        }
        if (.setType())
        {
            setZ(.setZ());
        }
        if (.setZ())
        {
            setTs(.setTs());
        }
        mergeUnknownFields(.wnFields());
        return this;
    }

    public wnFields setCommon(wnFields wnfields)
    {
        if (commonBuilder_ == null)
        {
            common_ = wnfields.uild();
            onChanged();
        } else
        {
            commonBuilder_.setMessage(wnfields.uild());
        }
        bitField0_ = bitField0_ | 1;
        return this;
    }

    public bitField0_ setCommon(bitField0_ bitfield0_)
    {
        if (commonBuilder_ == null)
        {
            if (bitfield0_ == null)
            {
                throw new NullPointerException();
            }
            common_ = bitfield0_;
            onChanged();
        } else
        {
            commonBuilder_.setMessage(bitfield0_);
        }
        bitField0_ = bitField0_ | 1;
        return this;
    }

    public bitField0_ setCoors(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x20;
            coors_ = s;
            onChanged();
            return this;
        }
    }

    void setCoors(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x20;
        coors_ = bytestring;
        onChanged();
    }

    public onChanged setCr(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x40;
            cr_ = s;
            onChanged();
            return this;
        }
    }

    void setCr(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x40;
        cr_ = bytestring;
        onChanged();
    }

    public onChanged setFlag(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x80;
            flag_ = s;
            onChanged();
            return this;
        }
    }

    void setFlag(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x80;
        flag_ = bytestring;
        onChanged();
    }

    public onChanged setTs(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x400;
            ts_ = s;
            onChanged();
            return this;
        }
    }

    void setTs(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x400;
        ts_ = bytestring;
        onChanged();
    }

    public onChanged setType(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x100;
            type_ = s;
            onChanged();
            return this;
        }
    }

    void setType(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x100;
        type_ = bytestring;
        onChanged();
    }

    public onChanged setX1(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 2;
            x1_ = s;
            onChanged();
            return this;
        }
    }

    void setX1(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 2;
        x1_ = bytestring;
        onChanged();
    }

    public onChanged setX2(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 8;
            x2_ = s;
            onChanged();
            return this;
        }
    }

    void setX2(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 8;
        x2_ = bytestring;
        onChanged();
    }

    public onChanged setY1(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 4;
            y1_ = s;
            onChanged();
            return this;
        }
    }

    void setY1(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 4;
        y1_ = bytestring;
        onChanged();
    }

    public onChanged setY2(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x10;
            y2_ = s;
            onChanged();
            return this;
        }
    }

    void setY2(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x10;
        y2_ = bytestring;
        onChanged();
    }

    public onChanged setZ(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            bitField0_ = bitField0_ | 0x200;
            z_ = s;
            onChanged();
            return this;
        }
    }

    void setZ(ByteString bytestring)
    {
        bitField0_ = bitField0_ | 0x200;
        z_ = bytestring;
        onChanged();
    }



    private e()
    {
        common_ = tInstance();
        x1_ = "";
        y1_ = "";
        x2_ = "";
        y2_ = "";
        coors_ = "";
        cr_ = "";
        flag_ = "";
        type_ = "";
        z_ = "";
        ts_ = "";
        maybeForceBuilderInitialization();
    }

    private (com.google.protobuf.er er)
    {
        super(er);
        common_ = tInstance();
        x1_ = "";
        y1_ = "";
        x2_ = "";
        y2_ = "";
        coors_ = "";
        cr_ = "";
        flag_ = "";
        type_ = "";
        z_ = "";
        ts_ = "";
        maybeForceBuilderInitialization();
    }

    (com.google.protobuf.er er, v v)
    {
        this(er);
    }
}
