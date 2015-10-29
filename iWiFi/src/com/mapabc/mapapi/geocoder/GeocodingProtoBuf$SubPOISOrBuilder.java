// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBuf

public static interface 
    extends MessageOrBuilder
{

    public abstract  getSubpoi(int i);

    public abstract int getSubpoiCount();

    public abstract List getSubpoiList();

    public abstract  getSubpoiOrBuilder(int i);

    public abstract List getSubpoiOrBuilderList();
}
