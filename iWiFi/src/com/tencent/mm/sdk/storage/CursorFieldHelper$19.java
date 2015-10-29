// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import java.lang.reflect.Field;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            CursorFieldHelper

final class tMethod
    implements tMethod
{

    public final void invoke(Field field, Object obj, ContentValues contentvalues)
    {
        CursorFieldHelper.keep_getBoolean(field, obj, contentvalues);
    }

    tMethod()
    {
    }
}
