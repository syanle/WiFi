// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            Descriptors, Message

public static final class ptorProto
    implements ptorProto
{

    private final toProto file;
    private final String fullName;
    private final int index;
    private toProto methods[];
    private ptorProto proto;

    private void crossLink()
        throws onException
    {
        ptorProto aptorproto[] = methods;
        int j = aptorproto.length;
        for (int i = 0; i < j; i++)
        {
            ccess._mth2200(aptorproto[i]);
        }

    }

    private void setProto(ptorProto ptorproto)
    {
        proto = ptorproto;
        for (int i = 0; i < methods.length; i++)
        {
            ccess._mth2300(methods[i], ptorproto.getMethod(i));
        }

    }

    public ptorProto.getMethod findMethodByName(String s)
    {
        s = ess._mth1200(file).file((new StringBuilder()).append(fullName).append('.').append(s).toString());
        if (s != null && (s instanceof fullName))
        {
            return (fullName)s;
        } else
        {
            return null;
        }
    }

    public fullName getFile()
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

    public List getMethods()
    {
        return Collections.unmodifiableList(Arrays.asList(methods));
    }

    public String getName()
    {
        return proto.getName();
    }

    public s getOptions()
    {
        return proto.getOptions();
    }

    public ptorProto toProto()
    {
        return proto;
    }

    public volatile Message toProto()
    {
        return toProto();
    }



    private torProto(ptorProto ptorproto, ptorProto ptorproto1, int i)
        throws onException
    {
        index = i;
        proto = ptorproto;
        fullName = Descriptors.access$1400(ptorproto1, null, ptorproto.getName());
        file = ptorproto1;
        methods = new methods[ptorproto.getMethodCount()];
        for (i = 0; i < ptorproto.getMethodCount(); i++)
        {
            methods[i] = new init>(ptorproto.getMethod(i), ptorproto1, this, i, null);
        }

        ess._mth1200(ptorproto1)._mth1200(this);
    }

    ptorProto(ptorProto ptorproto, ptorProto ptorproto1, int i, ptorProto ptorproto2)
        throws onException
    {
        this(ptorproto, ptorproto1, i);
    }
}
