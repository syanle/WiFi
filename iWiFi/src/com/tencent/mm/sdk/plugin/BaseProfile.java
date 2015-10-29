// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.storage.IAutoDBItem;
import java.lang.reflect.Field;
import java.util.Map;

public abstract class BaseProfile extends IAutoDBItem
{

    public static final String COL_ALIAS = "alias";
    public static final String COL_AVATAR = "avatar";
    public static final String COL_BINDEMAIL = "bindemail";
    public static final String COL_BINDMOBILE = "bindmobile";
    public static final String COL_BINDQQ = "bindqq";
    public static final String COL_CITY = "city";
    public static final String COL_NICKNAME = "nickname";
    public static final String COL_PROVINCE = "province";
    public static final String COL_SIGNATURE = "signature";
    public static final String COL_USERNAME = "username";
    public static final String COL_WEIBO = "weibo";
    public static final String INDEX_CREATE[] = new String[0];
    public static final String TABLE_NAME = "Profile";
    public String field_alias;
    public String field_avatar;
    public String field_bindemail;
    public String field_bindmobile;
    public long field_bindqq;
    public String field_city;
    public String field_nickname;
    public String field_province;
    public String field_signature;
    public String field_username;
    public String field_weibo;

    public BaseProfile()
    {
    }

    public static com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo initAutoDBInfo(Class class1)
    {
        class1 = new com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo();
        class1.fields = new Field[11];
        class1.columns = new String[12];
        StringBuilder stringbuilder = new StringBuilder();
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[0] = "username";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("username", "TEXT");
        stringbuilder.append(" username TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[1] = "bindqq";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("bindqq", "LONG");
        stringbuilder.append(" bindqq LONG");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[2] = "bindmobile";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("bindmobile", "TEXT");
        stringbuilder.append(" bindmobile TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[3] = "bindemail";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("bindemail", "TEXT");
        stringbuilder.append(" bindemail TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[4] = "alias";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("alias", "TEXT");
        stringbuilder.append(" alias TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[5] = "nickname";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("nickname", "TEXT");
        stringbuilder.append(" nickname TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[6] = "signature";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("signature", "TEXT");
        stringbuilder.append(" signature TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[7] = "province";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("province", "TEXT");
        stringbuilder.append(" province TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[8] = "city";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("city", "TEXT");
        stringbuilder.append(" city TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[9] = "weibo";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("weibo", "TEXT");
        stringbuilder.append(" weibo TEXT");
        stringbuilder.append(", ");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[10] = "avatar";
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).colsMap.put("avatar", "TEXT");
        stringbuilder.append(" avatar TEXT");
        ((com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo) (class1)).columns[11] = "rowid";
        class1.sql = stringbuilder.toString();
        return class1;
    }

    public void convertFrom(Cursor cursor)
    {
        int i = cursor.getColumnIndex("username");
        if (i >= 0)
        {
            field_username = cursor.getString(i);
        }
        i = cursor.getColumnIndex("bindqq");
        if (i >= 0)
        {
            field_bindqq = cursor.getLong(i);
        }
        i = cursor.getColumnIndex("bindmobile");
        if (i >= 0)
        {
            field_bindmobile = cursor.getString(i);
        }
        i = cursor.getColumnIndex("bindemail");
        if (i >= 0)
        {
            field_bindemail = cursor.getString(i);
        }
        i = cursor.getColumnIndex("alias");
        if (i >= 0)
        {
            field_alias = cursor.getString(i);
        }
        i = cursor.getColumnIndex("nickname");
        if (i >= 0)
        {
            field_nickname = cursor.getString(i);
        }
        i = cursor.getColumnIndex("signature");
        if (i >= 0)
        {
            field_signature = cursor.getString(i);
        }
        i = cursor.getColumnIndex("province");
        if (i >= 0)
        {
            field_province = cursor.getString(i);
        }
        i = cursor.getColumnIndex("city");
        if (i >= 0)
        {
            field_city = cursor.getString(i);
        }
        i = cursor.getColumnIndex("weibo");
        if (i >= 0)
        {
            field_weibo = cursor.getString(i);
        }
        i = cursor.getColumnIndex("avatar");
        if (i >= 0)
        {
            field_avatar = cursor.getString(i);
        }
        i = cursor.getColumnIndex("rowid");
        if (i >= 0)
        {
            systemRowid = cursor.getLong(i);
        }
    }

    public ContentValues convertTo()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("username", field_username);
        contentvalues.put("bindqq", Long.valueOf(field_bindqq));
        contentvalues.put("bindmobile", field_bindmobile);
        contentvalues.put("bindemail", field_bindemail);
        contentvalues.put("alias", field_alias);
        contentvalues.put("nickname", field_nickname);
        contentvalues.put("signature", field_signature);
        contentvalues.put("province", field_province);
        contentvalues.put("city", field_city);
        contentvalues.put("weibo", field_weibo);
        contentvalues.put("avatar", field_avatar);
        if (systemRowid > 0L)
        {
            contentvalues.put("rowid", Long.valueOf(systemRowid));
        }
        return contentvalues;
    }

    public void reset()
    {
    }

}
