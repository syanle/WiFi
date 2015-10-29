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
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socom.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.db:
//            f

public class b extends f
{

    private static final String N = com/umeng/socialize/db/b.getName();

    public b(Context context)
    {
        super(context, null);
    }

    private List a(SQLiteDatabase sqlitedatabase, String s, String as[], String s1, int i)
        throws SQLException
    {
        if (!sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        arraylist = new ArrayList();
        sqlitedatabase = sqlitedatabase.query("friends", new String[] {
            "_id", "_name", "avatar_icon", "usid", "last_at_time", "fid", "alive", "link_name", "pinyin", "initial"
        }, s, as, null, null, s1);
_L7:
        if (!sqlitedatabase.moveToNext()) goto _L4; else goto _L3
_L3:
        if (i >= 0) goto _L6; else goto _L5
_L5:
        s = new UMFriend();
        s.setId(sqlitedatabase.getInt(0));
        s.setName(sqlitedatabase.getString(1));
        s.setIcon(sqlitedatabase.getString(2));
        s.setUsid(sqlitedatabase.getString(3));
        s.setLastAtTime(sqlitedatabase.getLong(4));
        s.setFid(sqlitedatabase.getString(5));
        boolean flag;
        if (sqlitedatabase.getInt(6) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.setAlive(flag);
        s.setLinkName(sqlitedatabase.getString(7));
        as = new com.umeng.socialize.bean.UMFriend.a();
        as.a = sqlitedatabase.getString(8);
        as.b = sqlitedatabase.getString(9);
        s.setPinyin(as);
        arraylist.add(s);
          goto _L7
_L6:
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_286;
        }
_L4:
        a(((Cursor) (sqlitedatabase)));
        return arraylist;
_L2:
        Log.e(N, "DB is close..............");
        return null;
        i--;
          goto _L5
    }

    private void a(SQLiteDatabase sqlitedatabase, UMFriend umfriend)
        throws SQLException
    {
        this;
        JVM INSTR monitorenter ;
        ContentValues contentvalues = c(umfriend);
        if (!sqlitedatabase.isOpen() || contentvalues == null) goto _L2; else goto _L1
_L1:
        sqlitedatabase.update("friends", contentvalues, "fid = ?", new String[] {
            umfriend.getFid()
        });
        Log.a(N, (new StringBuilder("update friend ")).append(umfriend.getName()).toString());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Log.e(N, (new StringBuilder("Can`t update friend to db...(openDB=")).append(sqlitedatabase.isOpen()).append(" name=").append(umfriend.getName()).append(" usid=").append(umfriend.getUsid()).append(" fid=").append(umfriend.getFid()).append(")").toString());
        if (true) goto _L4; else goto _L3
_L3:
        sqlitedatabase;
        throw sqlitedatabase;
    }

    private void b(SQLiteDatabase sqlitedatabase, UMFriend umfriend)
        throws SQLException
    {
        this;
        JVM INSTR monitorenter ;
        ContentValues contentvalues = c(umfriend);
        if (!sqlitedatabase.isOpen() || contentvalues == null) goto _L2; else goto _L1
_L1:
        sqlitedatabase.insertOrThrow("friends", "_id", contentvalues);
        Log.a(N, (new StringBuilder("insert friend ")).append(umfriend.getName()).toString());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Log.e(N, (new StringBuilder("Can`t insert friend to db...(openDB=")).append(sqlitedatabase.isOpen()).append(" name=").append(umfriend.getName()).append(" usid=").append(umfriend.getUsid()).append(" fid=").append(umfriend.getFid()).append(")").toString());
        if (true) goto _L4; else goto _L3
_L3:
        sqlitedatabase;
        throw sqlitedatabase;
    }

    private ContentValues c(UMFriend umfriend)
    {
        if (!TextUtils.isEmpty(umfriend.getName()) && !TextUtils.isEmpty(umfriend.getUsid()) && !TextUtils.isEmpty(umfriend.getFid()))
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("_name", umfriend.getName());
            contentvalues.put("link_name", umfriend.getLinkName());
            com.umeng.socialize.bean.UMFriend.a a1 = umfriend.getPinyin();
            String s1 = "";
            String s = "";
            if (a1 != null)
            {
                s1 = a1.a;
                s = a1.b;
            }
            contentvalues.put("pinyin", s1);
            contentvalues.put("initial", s);
            contentvalues.put("usid", umfriend.getUsid());
            contentvalues.put("fid", umfriend.getFid());
            int i;
            if (umfriend.isAlive())
            {
                i = 0;
            } else
            {
                i = 1;
            }
            contentvalues.put("alive", Integer.valueOf(i));
            if (!TextUtils.isEmpty(umfriend.getIcon()))
            {
                contentvalues.put("avatar_icon", umfriend.getIcon());
            }
            if (!TextUtils.isEmpty(umfriend.getUsid()))
            {
                contentvalues.put("usid", umfriend.getUsid());
            }
            if (umfriend.getLastAtTime() > 0L)
            {
                contentvalues.put("last_at_time", Long.valueOf(umfriend.getLastAtTime()));
            }
            return contentvalues;
        } else
        {
            return null;
        }
    }

    public List a(String s)
    {
        SQLiteDatabase sqlitedatabase = getReadableDatabase();
        if (!sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        s = a(sqlitedatabase, "usid = ? AND alive = ?", new String[] {
            s, "0"
        }, "_id ASC", -1);
_L4:
        a(sqlitedatabase);
        return s;
_L2:
        Log.e(N, "DB is close..............");
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        Log.b(N, "", s);
        a(sqlitedatabase);
        return null;
        s;
        a(sqlitedatabase);
        throw s;
    }

    public List a(String s, int i)
    {
        SQLiteDatabase sqlitedatabase = getReadableDatabase();
        if (!sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        s = a(sqlitedatabase, "usid = ?  AND last_at_time IS NOT NULL ", new String[] {
            s
        }, "last_at_time DESC", i);
_L4:
        a(sqlitedatabase);
        return s;
_L2:
        Log.e(N, "DB is close..............");
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        Log.b(N, "", s);
        a(sqlitedatabase);
        return null;
        s;
        a(sqlitedatabase);
        throw s;
    }

    public void a(UMFriend umfriend)
    {
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        if (!sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        a(sqlitedatabase, umfriend);
        Log.a(N, (new StringBuilder("Update friend name = ")).append(umfriend.getName()).append("   usid=").append(umfriend.getUsid()).append("   last_at_time=").append(umfriend.getLastAtTime()).toString());
_L3:
        a(sqlitedatabase);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Log.e(N, "DB is close..............");
          goto _L3
        umfriend;
        Log.b(N, "", umfriend);
        a(sqlitedatabase);
          goto _L4
        umfriend;
        throw umfriend;
        umfriend;
        a(sqlitedatabase);
        throw umfriend;
          goto _L3
    }

    public void a(List list)
    {
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = null;
        if (list != null) goto _L2; else goto _L1
_L1:
        Log.a(N, "no friend insert..");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.beginTransaction();
        sqlitedatabase = sqlitedatabase1;
        list = list.iterator();
_L5:
        sqlitedatabase = sqlitedatabase1;
        if (list.hasNext())
        {
            break MISSING_BLOCK_LABEL_78;
        }
        sqlitedatabase = sqlitedatabase1;
        sqlitedatabase1.setTransactionSuccessful();
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        sqlitedatabase1.endTransaction();
        a(sqlitedatabase1);
          goto _L3
        list;
        throw list;
        sqlitedatabase = sqlitedatabase1;
        UMFriend umfriend = (UMFriend)list.next();
        sqlitedatabase = sqlitedatabase1;
        List list1 = a(sqlitedatabase1, "fid = ? AND usid = ? ", new String[] {
            umfriend.getFid(), umfriend.getUsid()
        }, "_id ASC", -1);
        if (list1 == null)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        sqlitedatabase = sqlitedatabase1;
        if (list1.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        sqlitedatabase = sqlitedatabase1;
        Log.a(N, (new StringBuilder("Exits  same Friends in DB where FID = ")).append(umfriend.getFid()).append(" AND Usid = ").append(umfriend.getUsid()).toString());
        sqlitedatabase = sqlitedatabase1;
        if (list1.size() <= 1)
        {
            break MISSING_BLOCK_LABEL_249;
        }
        sqlitedatabase = sqlitedatabase1;
        Log.e(N, (new StringBuilder("Exits mutil Friends in DB where FID = ")).append(umfriend.getFid()).append(" AND Usid = ").append(umfriend.getUsid()).append("   will update all").toString());
        sqlitedatabase = sqlitedatabase1;
        if (!((UMFriend)list1.get(0)).isUpdate(umfriend)) goto _L5; else goto _L4
_L4:
        sqlitedatabase = sqlitedatabase1;
        Log.a(N, (new StringBuilder("No Exits  friend  in DB where FID = ")).append(umfriend.getFid()).append(" AND Usid = ").append(umfriend.getUsid()).toString());
        sqlitedatabase = sqlitedatabase1;
        a(sqlitedatabase1, umfriend);
          goto _L5
        list;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_334;
        }
        sqlitedatabase.endTransaction();
        a(sqlitedatabase);
        throw list;
        sqlitedatabase = sqlitedatabase1;
        b(sqlitedatabase1, umfriend);
          goto _L5
    }

    public void b(UMFriend umfriend)
    {
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        if (!sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("last_at_time", Long.valueOf(umfriend.getLastAtTime()));
        if (!sqlitedatabase.isOpen() || contentvalues == null) goto _L4; else goto _L3
_L3:
        sqlitedatabase.update("friends", contentvalues, "fid = ?", new String[] {
            umfriend.getFid()
        });
        Log.a(N, (new StringBuilder("update friend ")).append(umfriend.getName()).toString());
_L5:
        Log.a(N, (new StringBuilder("Update friend  time only  name = ")).append(umfriend.getName()).append("   usid=").append(umfriend.getUsid()).append("   last_at_time=").append(umfriend.getLastAtTime()).toString());
_L7:
        a(sqlitedatabase);
_L6:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        Log.e(N, (new StringBuilder("Can`t update time only to db...(openDB=")).append(sqlitedatabase.isOpen()).append(" name=").append(umfriend.getName()).append(" usid=").append(umfriend.getUsid()).append(" fid=").append(umfriend.getFid()).append(")").toString());
          goto _L5
        umfriend;
        Log.b(N, "", umfriend);
        a(sqlitedatabase);
          goto _L6
        umfriend;
        throw umfriend;
_L2:
        Log.e(N, "DB is close..............");
          goto _L7
        umfriend;
        a(sqlitedatabase);
        throw umfriend;
          goto _L5
    }

}
