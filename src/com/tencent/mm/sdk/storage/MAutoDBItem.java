// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.lang.reflect.Field;
import java.util.HashMap;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            IAutoDBItem, CursorFieldHelper

public abstract class MAutoDBItem extends IAutoDBItem
{

    public MAutoDBItem()
    {
    }

    public void convertFrom(Cursor cursor)
    {
        boolean flag = false;
        Object aobj[] = cursor.getColumnNames();
        if (aobj == null)
        {
            Log.e("MicroMsg.SDK.MAutoDBItem", "convertFrom: get column names failed");
        } else
        {
            HashMap hashmap = new HashMap();
            for (int i = 0; i < aobj.length; i++)
            {
                hashmap.put(aobj[i], Integer.valueOf(i));
            }

            aobj = getDBInfo().fields;
            int l = aobj.length;
            int j = ((flag) ? 1 : 0);
            while (j < l) 
            {
                Field field = aobj[j];
                String s = getColName(field);
                if (Util.isNullOrNil(s))
                {
                    continue;
                }
                int k = Util.nullAs((Integer)hashmap.get(s), -1);
                if (k >= 0)
                {
                    try
                    {
                        CursorFieldHelper.setter(field.getType()).invoke(field, this, cursor, k);
                    }
                    catch (Exception exception)
                    {
                        exception.printStackTrace();
                    }
                }
                j++;
            }
            j = Util.nullAs((Integer)hashmap.get("rowid"), -1);
            if (j >= 0)
            {
                systemRowid = cursor.getLong(j);
                return;
            }
        }
    }

    public ContentValues convertTo()
    {
        ContentValues contentvalues = new ContentValues();
        Field afield[] = getDBInfo().fields;
        int j = afield.length;
        int i = 0;
        while (i < j) 
        {
            Field field = afield[i];
            try
            {
                CursorFieldHelper.getter(field.getType()).invoke(field, this, contentvalues);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            i++;
        }
        if (systemRowid > 0L)
        {
            contentvalues.put("rowid", Long.valueOf(systemRowid));
        }
        return contentvalues;
    }
}
