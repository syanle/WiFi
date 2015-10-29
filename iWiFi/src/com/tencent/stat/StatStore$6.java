// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.stat.common.StatLogger;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat:
//            StatStore, StatConfig

class this._cls0
    implements Runnable
{

    final StatStore this$0;

    public void run()
    {
        Object obj1 = StatStore.access$300(StatStore.this).getReadableDatabase().query("config", null, null, null, null, null, null);
_L4:
        Object obj = obj1;
        if (!((Cursor) (obj1)).moveToNext()) goto _L2; else goto _L1
_L1:
        obj = obj1;
        int i = ((Cursor) (obj1)).getInt(0);
        obj = obj1;
        String s = ((Cursor) (obj1)).getString(1);
        obj = obj1;
        String s1 = ((Cursor) (obj1)).getString(2);
        obj = obj1;
        int j = ((Cursor) (obj1)).getInt(3);
        obj = obj1;
        nlineConfig nlineconfig = new nlineConfig(i);
        obj = obj1;
        nlineconfig.type = i;
        obj = obj1;
        nlineconfig.props = new JSONObject(s);
        obj = obj1;
        nlineconfig.md5sum = s1;
        obj = obj1;
        nlineconfig.version = j;
        obj = obj1;
        StatConfig.setConfig(nlineconfig);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
_L10:
        obj = obj1;
        StatStore.access$400().e(exception);
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
_L6:
        return;
_L2:
        if (obj1 == null) goto _L6; else goto _L5
_L5:
        ((Cursor) (obj1)).close();
        return;
        obj1;
        obj = null;
_L8:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw obj1;
        obj1;
        if (true) goto _L8; else goto _L7
_L7:
        exception;
        obj1 = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    ogger()
    {
        this$0 = StatStore.this;
        super();
    }
}
