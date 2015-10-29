// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.cat.util:
//            SMSCodeBroadcast

public class context extends ContentObserver
{

    private Context context;
    final SMSCodeBroadcast this$0;

    public String getSmsInPhone()
    {
        StringBuilder stringbuilder = new StringBuilder();
        ContentResolver contentresolver;
        String s;
        Object obj;
        contentresolver = context.getContentResolver();
        obj = contentresolver.query(Uri.parse("content://sms/"), new String[] {
            "_id", "address", "read", "body"
        }, "body like '\u60A8\u7684\u9A8C\u8BC1\u7801\u662F:%' and read=?", new String[] {
            "0"
        }, "date desc");
        if (!((Cursor) (obj)).moveToFirst())
        {
            break MISSING_BLOCK_LABEL_225;
        }
        int i = ((Cursor) (obj)).getColumnIndex("_id");
        int j = ((Cursor) (obj)).getColumnIndex("address");
        int k = ((Cursor) (obj)).getColumnIndex("body");
        s = ((Cursor) (obj)).getString(i);
        ((Cursor) (obj)).getString(j);
        obj = ((Cursor) (obj)).getString(k);
        stringbuilder.append(((String) (obj)));
        if (obj != null);
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("read", "1");
            contentresolver.update(Uri.parse("content://sms/inbox"), contentvalues, "_id=?", new String[] {
                (new StringBuilder()).append(s).toString()
            });
            context.getContentResolver().unregisterContentObserver(SMSCodeBroadcast.access$2(SMSCodeBroadcast.this));
        }
        catch (SQLiteException sqliteexception) { }
        return stringbuilder.toString();
        stringbuilder.append("no result!");
        break MISSING_BLOCK_LABEL_220;
    }

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        Message message = new Message();
        message.obj = getSmsInPhone();
        SMSCodeBroadcast.access$3(SMSCodeBroadcast.this).sendMessage(message);
    }

    public (Context context1, Handler handler)
    {
        this$0 = SMSCodeBroadcast.this;
        super(handler);
        context = context1;
    }
}
