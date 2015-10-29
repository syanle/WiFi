// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import android.database.Cursor;
import java.lang.reflect.Field;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            CursorFieldHelper

final class tMethod
    implements tMethod
{

    public final void invoke(Field field, Object obj, Cursor cursor, int i)
    {
        CursorFieldHelper.keep_setLong(field, obj, cursor, i);
    }

    tMethod()
    {
    }
}
