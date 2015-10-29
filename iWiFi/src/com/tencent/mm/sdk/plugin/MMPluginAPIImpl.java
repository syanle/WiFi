// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import com.tencent.mm.algorithm.Base64;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;

// Referenced classes of package com.tencent.mm.sdk.plugin:
//            IMMPluginAPI, Profile

public class MMPluginAPIImpl
    implements IMMPluginAPI
{

    private static final String columns[] = {
        "key", "type", "value"
    };
    private String am;
    private com.tencent.mm.sdk.channel.MMessage.Receiver bF;
    private final Context q;

    public MMPluginAPIImpl(Context context)
    {
        q = context;
        am = context.getPackageName();
    }

    private void a(String s, String s1, Intent intent)
    {
        s1 = new Intent(s1);
        s1.setClassName("com.tencent.mm", "com.tencent.mm.plugin.PluginProxyUI");
        if (intent != null)
        {
            s1.putExtras(intent);
        }
        s1.putExtra("com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN", s);
        q.startActivity(s1);
    }

    private Object e(String s)
    {
        Object obj = null;
        Cursor cursor = q.getContentResolver().query(MMPluginProviderConstants.PluginDB.CONTENT_URI, columns, null, new String[] {
            s
        }, null);
        if (cursor == null)
        {
            return null;
        }
        int i = cursor.getColumnIndex("type");
        int j = cursor.getColumnIndex("value");
        s = obj;
        if (cursor.moveToFirst())
        {
            s = ((String) (MMPluginProviderConstants.Resolver.resolveObj(cursor.getInt(i), cursor.getString(j))));
        }
        cursor.close();
        return s;
    }

    public boolean appendNetStat(int i, int j, int k)
    {
        return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(am).append("/action.appnetstat?recv=").append(i).append("&send=").append(j).append("&type=").append(k).toString()));
    }

    public void createMsgController(String s)
    {
    }

    public void createQRCodeController(String s)
    {
        a(s, "qrcode", null);
    }

    public void createQRCodeController(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback)
    {
        createQRCodeController(s, callback, "*");
    }

    public void createQRCodeController(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback, String s1)
    {
        a(s, "qrcode", (new Intent()).putExtra("qrcode_pattern", s1));
    }

    public Profile getCurrentProfile(String s)
    {
        Object obj = null;
        Cursor cursor = q.getContentResolver().query(Profile.CONTENT_URI, Profile.columns, null, new String[] {
            s
        }, null);
        if (cursor == null)
        {
            Log.e("MicroMsg.SDK.MMPluginMgrImpl", "get current profile failed");
            return null;
        }
        s = obj;
        if (cursor.moveToFirst())
        {
            s = new Profile();
            s.convertFrom(cursor);
        }
        cursor.close();
        return s;
    }

    public String getPluginKey(String s)
    {
        return (String)e((new StringBuilder("plugindb://")).append(s).append("/comm.pluginkey").toString());
    }

    public boolean installPlugin(String s)
    {
        return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(s).append("/action.install").toString()));
    }

    public boolean isPluginInstalled(String s)
    {
        return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(s).append("/comm.installed").toString()));
    }

    public void jumpToBindEmail(String s)
    {
        a(s, "bindemail", new Intent());
    }

    public void jumpToBindMobile(String s)
    {
        a(s, "bindmobile", new Intent());
    }

    public void jumpToBindQQ(String s)
    {
        a(s, "bindqq", new Intent());
    }

    public void jumpToChattingUI(String s, String s1)
    {
        a(s, "chatting", (new Intent()).putExtra("Contact_User", s1).setFlags(0x4000000));
    }

    public void jumpToSettingView(String s, String s1)
    {
        a(s, "profile", (new Intent()).putExtra("Contact_User", s1).setFlags(0x4000000));
    }

    public boolean registerAutoMsg(String s, String s1)
    {
        return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(am).append("/action.automsg?pluginMsgUsername=").append(s).append("&pluginUsername=").append(s1).toString()));
    }

    public boolean registerPattern(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback, String s1)
    {
        return false;
    }

    public boolean registerQRCodePattern(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback, String s1)
    {
        if (bF != null)
        {
            q.unregisterReceiver(bF);
        }
        bF = new com.tencent.mm.sdk.channel.MMessage.Receiver(callback);
        q.registerReceiver(bF, new IntentFilter("com.tencent.mm.sdk.plugin.Intent.ACTION_QRCODE_SCANNED"));
        return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(s).append("/action.register_qrcode_result?pattern=").append(s1).toString()));
    }

    public void release()
    {
        Log.d("MicroMsg.SDK.MMPluginMgrImpl", "release plugin mgr implemetation");
        if (bF != null)
        {
            q.unregisterReceiver(bF);
            Log.d("MicroMsg.SDK.MMPluginMgrImpl", "unregister qrcode scan result receiver");
        }
    }

    public boolean sendMsgNotify(String s, String s1, int i, String s2, Class class1)
    {
        if (class1 == null)
        {
            return false;
        } else
        {
            return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(am).append("/action.msgnotify?username=").append(s).append("&msgContent=").append(s1).append("&msgType=").append(i).append("&customNotify=").append(s2).append("&intentUri=").append(Base64.encodeToString((new Intent(q, class1)).toUri(0).getBytes(), false)).toString()));
        }
    }

    public boolean unregisterAutoMsg(String s, String s1)
    {
        return Util.nullAsFalse((Boolean)e((new StringBuilder("plugindb://")).append(am).append("/action.unautomsg?pluginMsgUsername=").append(s).append("&pluginUsername=").append(s1).toString()));
    }

}
