// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.db;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socom.Log;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.umeng.socialize.db:
//            f

public class d extends f
{

    private static final String N = com/umeng/socialize/db/d.getName();

    public d(Context context)
    {
        super(context, null);
    }

    private List a(SQLiteDatabase sqlitedatabase, String s, String as[], String s1)
        throws SQLException
    {
        if (sqlitedatabase.isOpen())
        {
            ArrayList arraylist = new ArrayList();
            sqlitedatabase = sqlitedatabase.query("platforms", new String[] {
                "keyword", "showord", "icon_light", "icon_grey", "alive"
            }, s, as, null, null, s1);
            do
            {
                if (!sqlitedatabase.moveToNext())
                {
                    a(((Cursor) (sqlitedatabase)));
                    return arraylist;
                }
                s = new SnsPlatform();
                s.mKeyword = sqlitedatabase.getString(0);
                s.mShowWord = sqlitedatabase.getString(1);
            } while (true);
        } else
        {
            Log.e(N, "DB is close..............");
            return null;
        }
    }

}
