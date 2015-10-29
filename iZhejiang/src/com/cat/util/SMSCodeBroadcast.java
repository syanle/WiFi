// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.util;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.telephony.SmsMessage;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SMSCodeBroadcast extends BroadcastReceiver
{
    public static interface AfterReceive
    {

        public abstract void autoFill(String s);
    }

    public class SmsContentObserver extends ContentObserver
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
                context.getContentResolver().unregisterContentObserver(smsContentObserver);
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
            handler.sendMessage(message);
        }

        public SmsContentObserver(Context context1, Handler handler1)
        {
            this$0 = SMSCodeBroadcast.this;
            super(handler1);
            context = context1;
        }
    }


    private AfterReceive afterReceive;
    private Context context;
    private Handler handler = new Handler() {

        final SMSCodeBroadcast this$0;

        public void handleMessage(Message message)
        {
            String s = (String)message.obj;
            if (s == null) goto _L2; else goto _L1
_L1:
            Matcher matcher = Pattern.compile("\\d+").matcher(s);
            if (!matcher.find()) goto _L4; else goto _L3
_L3:
            s = matcher.group();
            afterReceive.autoFill(s);
            context.getContentResolver().unregisterContentObserver(smsContentObserver);
_L2:
            super.handleMessage(message);
            return;
_L4:
            int i = s.indexOf("\u60A8\u7684\u9A8C\u8BC1\u7801\u662F");
            if (i >= 0)
            {
                i += "\u60A8\u7684\u9A8C\u8BC1\u7801\u662F".length();
                s = s.substring(i, i + 6);
                afterReceive.autoFill(s);
                context.getContentResolver().unregisterContentObserver(smsContentObserver);
            }
            if (true) goto _L2; else goto _L5
_L5:
        }

            
            {
                this$0 = SMSCodeBroadcast.this;
                super();
            }
    };
    private int index;
    private SmsContentObserver smsContentObserver;

    public SMSCodeBroadcast()
    {
        index = 0;
    }

    public SMSCodeBroadcast(Context context1, AfterReceive afterreceive)
    {
        index = 0;
        afterReceive = afterreceive;
        smsContentObserver = new SmsContentObserver(context1, new Handler());
        context = context1;
        try
        {
            context1.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, smsContentObserver);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context1)
        {
            return;
        }
    }

    private void accessMessage(SmsMessage asmsmessage[])
    {
        Object obj;
        StringBuffer stringbuffer;
        int i;
        int j;
        obj = "";
        stringbuffer = new StringBuffer();
        j = asmsmessage.length;
        i = 0;
_L2:
        SmsMessage smsmessage;
        if (i >= j)
        {
            asmsmessage = stringbuffer.toString();
            if (((String) (obj)).contains("\u60A8\u7684\u9A8C\u8BC1\u7801\u662F") && ((String) (obj)).contains("\u7231WiFi"))
            {
                obj = new Message();
                obj.obj = asmsmessage;
                handler.sendMessage(((Message) (obj)));
            }
            return;
        }
        smsmessage = asmsmessage[i];
        String s = smsmessage.getDisplayMessageBody().trim();
        obj = s;
        smsmessage.getDisplayOriginatingAddress().trim();
        obj = s;
        stringbuffer.append(s);
        obj = s;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        NullPointerException nullpointerexception;
        nullpointerexception;
          goto _L3
    }

    private SmsMessage[] getMessagesFromIntent(Intent intent)
    {
        Object obj;
        int i;
        obj = ((Object) ((Object[])intent.getSerializableExtra("pdus")));
        intent = new byte[obj.length][];
        i = 0;
_L3:
        if (i < obj.length) goto _L2; else goto _L1
_L1:
        SmsMessage asmsmessage[];
        int j;
        obj = new byte[intent.length][];
        j = obj.length;
        asmsmessage = new SmsMessage[j];
        i = 0;
_L4:
        if (i >= j)
        {
            return asmsmessage;
        }
        break MISSING_BLOCK_LABEL_74;
_L2:
        intent[i] = (byte[])obj[i];
        i++;
          goto _L3
        obj[i] = intent[i];
        asmsmessage[i] = SmsMessage.createFromPdu(obj[i]);
        i++;
          goto _L4
    }

    public void onReceive(Context context1, Intent intent)
    {
        onReceiveWithPrivilege(context1, intent, false);
    }

    protected void onReceiveWithPrivilege(Context context1, Intent intent, boolean flag)
    {
        accessMessage(getMessagesFromIntent(intent));
    }




}
