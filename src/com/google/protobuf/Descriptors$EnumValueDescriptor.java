// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            Descriptors, Message

public static final class ptorProto
    implements ptorProto, ptorProto
{

    private final toProto file;
    private final String fullName;
    private final int index;
    private ptorProto proto;
    private final ptorProto type;

    private void setProto(ptorProto ptorproto)
    {
        proto = ptorproto;
    }

    public proto getFile()
    {
        return file;
    }

    public String getFullName()
    {
        return fullName;
    }

    public int getIndex()
    {
        return index;
    }

    public String getName()
    {
        return proto.getName();
    }

    public int getNumber()
    {
        return proto.getNumber();
    }

    public s getOptions()
    {
        return proto.getOptions();
    }

    public ptorProto.getOptions getType()
    {
        return type;
    }

    public ptorProto toProto()
    {
        return proto;
    }

    public volatile Message toProto()
    {
        return toProto();
    }


    private ptorProto(ptorProto ptorproto, ptorProto ptorproto1, ptorProto ptorproto2, int i)
        throws Exception
    {
        index = i;
        proto = ptorproto;
        file = ptorproto1;
        type = ptorproto2;
        fullName = (new StringBuilder()).append(ptorproto2.llName()).append('.').append(ptorproto.getName()).toString();
        s._mth1200(ptorproto1)._mth1200(this);
        s._mth1200(ptorproto1)._mth1200(this);
    }

    ptorProto(ptorProto ptorproto, ptorProto ptorproto1, ptorProto ptorproto2, int i, ptorProto ptorproto3)
        throws Exception
    {
        this(ptorproto, ptorproto1, ptorproto2, i);
    }
}
