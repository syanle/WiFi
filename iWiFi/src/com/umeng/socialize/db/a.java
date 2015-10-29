// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMLocation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.db:
//            f

public class a extends f
{

    private static final String N = com/umeng/socialize/db/a.getName();

    public a(Context context)
    {
        super(context, null);
    }

    private void a(String s, SQLiteDatabase sqlitedatabase, UMComment umcomment)
    {
        if (sqlitedatabase.isOpen() && !TextUtils.isEmpty(s) && !TextUtils.isEmpty(umcomment.mUid) && !TextUtils.isEmpty(umcomment.mUname) && !TextUtils.isEmpty(umcomment.mText))
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("uid", umcomment.mUid);
            contentvalues.put("entity_key", s);
            contentvalues.put("content", umcomment.mText);
            contentvalues.put("avatar_icon", umcomment.mUserIcon);
            contentvalues.put("location", umcomment.mLocation.toString());
            contentvalues.put("user", umcomment.mUname);
            contentvalues.put("data", Long.valueOf(umcomment.mDt));
            sqlitedatabase.insertOrThrow("comment", "_id", contentvalues);
            Log.i(N, (new StringBuilder("insert comment ")).append(umcomment.mText).toString());
            return;
        } else
        {
            Log.w(N, (new StringBuilder("Can`t insert comment to db...(openDB=")).append(sqlitedatabase.isOpen()).append(" ek=").append(s).append(" mUid=").append(umcomment.mUid).append(" uname=").append(umcomment.mUname).append(" content=").append(umcomment.mText).append(")").toString());
            return;
        }
    }

    public List a(String s)
    {
        Object obj;
        Object obj1;
        SQLException sqlexception;
        SQLiteDatabase sqlitedatabase;
        obj1 = null;
        sqlexception = null;
        obj = null;
        sqlitedatabase = getReadableDatabase();
        if (!sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        obj = new ArrayList();
        s = sqlitedatabase.query("comment", new String[] {
            "uid", "user", "location", "avatar_icon", "data", "content"
        }, "entity_key = ?", new String[] {
            s
        }, null, null, "data DESC");
        int i = 0;
_L5:
        boolean flag = s.moveToNext();
        if (flag && i < 20) goto _L4; else goto _L3
_L3:
        a(((Cursor) (s)));
        a(sqlitedatabase);
        return ((List) (obj));
_L4:
        obj1 = new UMComment();
        obj1.mUid = s.getString(0);
        obj1.mUname = s.getString(1);
        obj1.mLocation = UMLocation.build(s.getString(2));
        obj1.mUserIcon = s.getString(3);
        obj1.mDt = s.getLong(4);
        obj1.mText = s.getString(5);
        i++;
        ((List) (obj)).add(obj1);
          goto _L5
        sqlexception;
        obj1 = obj;
        obj = sqlexception;
_L8:
        Log.e(N, "", ((Throwable) (obj)));
        a(((Cursor) (s)));
        a(sqlitedatabase);
        return ((List) (obj1));
_L2:
        Log.w(N, "DB is close..............");
        s = null;
          goto _L3
        s;
        obj = sqlexception;
_L7:
        a(((Cursor) (obj)));
        a(sqlitedatabase);
        throw s;
        obj1;
        obj = s;
        s = ((String) (obj1));
        continue; /* Loop/switch isn't completed */
        obj1;
        obj = s;
        s = ((String) (obj1));
        if (true) goto _L7; else goto _L6
_L6:
        obj;
        s = null;
          goto _L8
        SQLException sqlexception1;
        sqlexception1;
        s = null;
        obj1 = obj;
        obj = sqlexception1;
          goto _L8
    }

    public void a(UMComment umcomment, String s)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase1;
        a(s, sqlitedatabase1, umcomment);
        a(sqlitedatabase1);
        return;
        umcomment;
        a(sqlitedatabase);
        throw umcomment;
    }

    public void a(List list, String s)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.beginTransaction();
        sqlitedatabase = sqlitedatabase1;
        list = list.iterator();
_L2:
        sqlitedatabase = sqlitedatabase1;
        if (list.hasNext())
        {
            break MISSING_BLOCK_LABEL_63;
        }
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.setTransactionSuccessful();
        if (sqlitedatabase1 != null)
        {
            sqlitedatabase1.endTransaction();
        }
        a(sqlitedatabase1);
        return;
        sqlitedatabase = sqlitedatabase1;
        a(s, sqlitedatabase1, (UMComment)list.next());
        if (true) goto _L2; else goto _L1
_L1:
        list;
        if (sqlitedatabase != null)
        {
            sqlitedatabase.endTransaction();
        }
        a(sqlitedatabase);
        throw list;
    }

    public void a(List list, String s, int i)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase1;
        if (!sqlitedatabase1.isOpen() || list == null) goto _L2; else goto _L1
_L1:
        sqlitedatabase = sqlitedatabase1;
        if (list.size() <= 0) goto _L2; else goto _L3
_L3:
        sqlitedatabase = sqlitedatabase1;
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L4
_L4:
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.beginTransaction();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.delete("comment", "entity_key = ?", new String[] {
            s
        });
        int j = 0;
_L10:
        sqlitedatabase = sqlitedatabase1;
        if (j < list.size() && j < i) goto _L6; else goto _L5
_L5:
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.setTransactionSuccessful();
_L8:
        if (sqlitedatabase1 != null)
        {
            sqlitedatabase1.endTransaction();
        }
        a(sqlitedatabase1);
        return;
_L6:
        sqlitedatabase = sqlitedatabase1;
        a(s, sqlitedatabase1, (UMComment)list.get(j));
        j++;
        continue; /* Loop/switch isn't completed */
_L2:
        sqlitedatabase = sqlitedatabase1;
        Log.w(N, "DB is close..............");
        if (true) goto _L8; else goto _L7
_L7:
        list;
        if (sqlitedatabase != null)
        {
            sqlitedatabase.endTransaction();
        }
        a(sqlitedatabase);
        throw list;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public boolean b(String s)
    {
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        if (!sqlitedatabase.isOpen())
        {
            break MISSING_BLOCK_LABEL_36;
        }
        sqlitedatabase.delete("comment", "entity_key = ?", new String[] {
            s
        });
        a(sqlitedatabase);
        return true;
        Log.w(N, "DB is close..............");
        a(sqlitedatabase);
        return false;
        s;
        sqlitedatabase = null;
_L2:
        a(sqlitedatabase);
        throw s;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
