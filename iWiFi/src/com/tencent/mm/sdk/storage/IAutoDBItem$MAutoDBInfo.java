// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            IAutoDBItem

public static class colsMap
{

    public Map colsMap;
    public String columns[];
    public Field fields[];
    public String primaryKey;
    public String sql;

    public ()
    {
        colsMap = new HashMap();
    }
}
