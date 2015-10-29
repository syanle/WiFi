// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;

import android.content.ContentValues;
import android.net.Uri;
import android.provider.BaseColumns;
import com.tencent.mm.sdk.platformtools.Log;

public class MMPluginProviderConstants
{
    public static final class OAuth
        implements BaseColumns
    {

        public static final String ACCESS_TOKEN = "accessToken";
        public static final String ACTION_REQUEST_TOKEN = "request_token";
        public static final String API_KEY = "apiKey";
        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/oauth");
        public static final String REQUEST_TOKEN = "requestToken";
        public static final String SECRET = "secret";


        private OAuth()
        {
        }
    }

    public static final class PluginDB
        implements BaseColumns
    {

        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/plugindb");
        public static final String KEY = "key";
        public static final String TYPE = "type";
        public static final String VALUE = "value";


        private PluginDB()
        {
        }
    }

    public static class PluginIntent
    {

        public static final String ACCESS_TOKEN = "com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN";
        public static final String ACTION_QRCODE_SCANNED = "com.tencent.mm.sdk.plugin.Intent.ACTION_QRCODE_SCANNED";
        public static final String ACTION_REQUEST_TOKEN = "com.tencent.mm.sdk.plugin.Intent.ACTION_REQUEST_TOKEN";
        public static final String ACTION_RESPONSE = "com.tencent.mm.sdk.plugin.Intent.ACTION_RESPONSE";
        public static final String APP_PACKAGE_PATTERN = "com.tencent.mm";
        public static final String AUTH_KEY = "com.tencent.mm.sdk.plugin.Intent.AUTHKEY";
        public static final String NAME = "com.tencent.mm.sdk.plugin.Intent.NAME";
        public static final String PACKAGE = "com.tencent.mm.sdk.plugin.Intent.PACKAGE";
        public static final String PERMISSIONS = "com.tencent.mm.sdk.plugin.Intent.PERMISSIONS";
        public static final String PLUGIN_PACKAGE_PATTERN = "com.tencent.mm.plugin";
        public static final String REQUEST_TOKEN = "com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN";

        public PluginIntent()
        {
        }
    }

    public static final class Resolver
    {

        public static int getType(Object obj)
        {
            if (obj == null)
            {
                Log.e("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, null value");
                return 0;
            }
            if (obj instanceof Integer)
            {
                return 1;
            }
            if (obj instanceof Long)
            {
                return 2;
            }
            if (obj instanceof String)
            {
                return 3;
            }
            if (obj instanceof Boolean)
            {
                return 4;
            }
            if (obj instanceof Float)
            {
                return 5;
            }
            if (obj instanceof Double)
            {
                return 6;
            } else
            {
                Log.e("MicroMsg.SDK.PluginProvider.Resolver", (new StringBuilder("unresolve failed, unknown type=")).append(obj.getClass().toString()).toString());
                return 0;
            }
        }

        public static Object resolveObj(int i, String s)
        {
            String s1 = s;
            i;
            JVM INSTR tableswitch 1 6: default 40
        //                       1 50
        //                       2 55
        //                       3 84
        //                       4 60
        //                       5 65
        //                       6 70;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L2:
            return Integer.valueOf(s);
_L3:
            return Long.valueOf(s);
_L5:
            return Boolean.valueOf(s);
_L6:
            return Float.valueOf(s);
_L7:
            s = Double.valueOf(s);
            return s;
_L1:
            try
            {
                Log.e("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            s1 = null;
_L4:
            return s1;
        }

        public static boolean unresolveObj(ContentValues contentvalues, Object obj)
        {
            int i = getType(obj);
            if (i == 0)
            {
                return false;
            } else
            {
                contentvalues.put("type", Integer.valueOf(i));
                contentvalues.put("value", obj.toString());
                return true;
            }
        }

        private Resolver()
        {
        }
    }

    public static final class SharedPref
        implements BaseColumns
    {

        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref");
        public static final String KEY = "key";
        public static final String TYPE = "type";
        public static final String VALUE = "value";


        private SharedPref()
        {
        }
    }


    public static final String AUTHORITY = "com.tencent.mm.sdk.plugin.provider";
    public static final String PLUGIN_PACKAGE_PATTERN = "com.tencent.mm.plugin";
    public static final int TYPE_BOOLEAN = 4;
    public static final int TYPE_DOUBLE = 6;
    public static final int TYPE_FLOAT = 5;
    public static final int TYPE_INT = 1;
    public static final int TYPE_LONG = 2;
    public static final int TYPE_STRING = 3;
    public static final int TYPE_UNKNOWN = 0;

    public MMPluginProviderConstants()
    {
    }
}
