// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import org.json.JSONObject;

// Referenced classes of package com.tencent.stat:
//            StatConfig

static class type
{

    String md5sum;
    JSONObject props;
    int type;
    int version;

    String toJsonString()
    {
        return props.toString();
    }

    public (int i)
    {
        props = new JSONObject();
        md5sum = "";
        version = 0;
        type = i;
    }
}
