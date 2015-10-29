// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat:
//            StatStore

class nlineConfig
    implements Runnable
{

    final StatStore this$0;
    final nlineConfig val$cfg;

    public void run()
    {
        Object obj;
        String s;
        s = val$cfg.toJsonString();
        obj = StatCommonHelper.md5sum(s);
        if (((String) (obj)).equals(val$cfg.md5sum)) goto _L2; else goto _L1
_L1:
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("content", val$cfg.props.toString());
        contentvalues.put("md5sum", ((String) (obj)));
        val$cfg.md5sum = ((String) (obj));
        contentvalues.put("version", Integer.valueOf(val$cfg.version));
        Cursor cursor = StatStore.access$300(StatStore.this).getReadableDatabase().query("config", null, null, null, null, null, null);
_L6:
        obj = cursor;
        if (!cursor.moveToNext()) goto _L4; else goto _L3
_L3:
        obj = cursor;
        int i = cursor.getInt(0);
        obj = cursor;
        int j = val$cfg.type;
        if (i != j) goto _L6; else goto _L5
_L5:
        i = 1;
_L14:
        j = i;
        if (cursor != null)
        {
            cursor.close();
            j = i;
        }
_L9:
        Exception exception;
        Exception exception1;
        long l;
        if (true == j)
        {
            l = StatStore.access$300(StatStore.this).getWritableDatabase().update("config", contentvalues, "type=?", new String[] {
                Integer.toString(val$cfg.type)
            });
        } else
        {
            contentvalues.put("type", Integer.valueOf(val$cfg.type));
            l = StatStore.access$300(StatStore.this).getWritableDatabase().insert("config", null, contentvalues);
        }
        if (l != -1L) goto _L8; else goto _L7
_L7:
        StatStore.access$400().error((new StringBuilder()).append("Failed to store cfg:").append(s).toString());
_L2:
        return;
        exception1;
        cursor = null;
_L12:
        obj = cursor;
        StatStore.access$400().e(exception1);
        if (cursor != null)
        {
            cursor.close();
            j = 0;
        } else
        {
            j = 0;
        }
          goto _L9
        exception;
        obj = null;
_L11:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw exception;
_L8:
        StatStore.access$400().i((new StringBuilder()).append("Sucessed to store cfg:").append(s).toString());
        return;
        exception;
        if (true) goto _L11; else goto _L10
_L10:
        exception1;
          goto _L12
_L4:
        i = 0;
        if (true) goto _L14; else goto _L13
_L13:
    }

    nlineConfig()
    {
        this$0 = final_statstore;
        val$cfg = nlineConfig.this;
        super();
    }
}
