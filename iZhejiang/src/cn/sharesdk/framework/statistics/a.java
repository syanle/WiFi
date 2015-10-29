// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.statistics.a.c;
import cn.sharesdk.framework.statistics.a.d;
import cn.sharesdk.framework.statistics.a.e;
import cn.sharesdk.framework.statistics.b.b;
import cn.sharesdk.framework.statistics.b.f;
import cn.sharesdk.framework.statistics.b.g;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class cn.sharesdk.framework.statistics.a
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(cn/sharesdk/framework/statistics/a$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("FINISH_SHARE", 0);
            b = new a("BEFORE_SHARE", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int l)
        {
            super(s, l);
        }
    }


    public static String b = "http://api.share.mob.com:80";
    static String c;
    static boolean d = false;
    private static cn.sharesdk.framework.statistics.a e;
    private static c f;
    private static String g = "http://l.mob.com/url/ShareSdkMapping.do";
    private static String h = "http://up.sharesdk.cn/upload/image";
    Context a;
    private boolean i;
    private boolean j;
    private NetworkHelper k;

    private cn.sharesdk.framework.statistics.a()
    {
        j = true;
        k = new NetworkHelper();
    }

    public static cn.sharesdk.framework.statistics.a a(Context context)
    {
        if (e == null)
        {
            e = new cn.sharesdk.framework.statistics.a();
            e.a = context.getApplicationContext();
            f = cn.sharesdk.framework.statistics.a.c.a(e.a);
        }
        return e;
    }

    private String a(Bitmap bitmap, a a1)
    {
        try
        {
            File file = File.createTempFile("bm_tmp", ".png");
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            bitmap = a(file.getAbsolutePath(), a1);
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            Ln.e(bitmap);
            return null;
        }
        return bitmap;
    }

    private String a(String s, a a1)
    {
        if (TextUtils.isEmpty(s) || !(new File(s)).exists())
        {
            return null;
        }
        android.graphics.Bitmap.CompressFormat compressformat = BitmapHelper.getBmpFormat(s);
        float f1 = 200F;
        if (a1 == cn.sharesdk.framework.statistics.a.b)
        {
            f1 = 600F;
        }
        a1 = new android.graphics.BitmapFactory.Options();
        a1.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(s, a1);
        a1.inJustDecodeBounds = false;
        int l = ((android.graphics.BitmapFactory.Options) (a1)).outWidth;
        int i1 = ((android.graphics.BitmapFactory.Options) (a1)).outHeight;
        if (l >= i1 && (float)i1 > f1)
        {
            l = (int)Math.ceil((float)((android.graphics.BitmapFactory.Options) (a1)).outHeight / f1);
        } else
        if (l < i1 && (float)l > f1)
        {
            l = (int)Math.ceil((float)((android.graphics.BitmapFactory.Options) (a1)).outWidth / f1);
        } else
        {
            return h(s);
        }
        i1 = l;
        if (l <= 0)
        {
            i1 = 1;
        }
        a1.inSampleSize = i1;
        a1.inPurgeable = true;
        a1.inInputShareable = true;
        try
        {
            s = BitmapFactory.decodeFile(s, a1);
            s.getHeight();
            s.getWidth();
            a1 = File.createTempFile("bm_tmp2", (new StringBuilder()).append(".").append(compressformat.name().toLowerCase()).toString());
            FileOutputStream fileoutputstream = new FileOutputStream(a1);
            s.compress(compressformat, 80, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            s = h(a1.getAbsolutePath());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return null;
        }
        return s;
    }

    private String a(String s, String s1, String s2, int l, String s3)
    {
        if (!TextUtils.isEmpty(s) && j)
        {
            ArrayList arraylist = new ArrayList();
            s2 = Pattern.compile(s2);
            Matcher matcher = s2.matcher(s);
            do
            {
                if (!matcher.find())
                {
                    break;
                }
                String s5 = matcher.group();
                if (s5 != null && s5.length() > 0)
                {
                    arraylist.add(s5);
                }
            } while (true);
            if (arraylist.size() != 0)
            {
                ArrayList arraylist1 = new ArrayList();
                arraylist1.add(new KVPair("key", s1));
                for (int i1 = 0; i1 < arraylist.size(); i1++)
                {
                    arraylist1.add(new KVPair("urls", ((String)arraylist.get(i1)).toString()));
                }

                arraylist1.add(new KVPair("deviceid", DeviceHelper.getInstance(a).getDeviceKey()));
                arraylist1.add(new KVPair("snsplat", String.valueOf(l)));
                s1 = d(s1, s3);
                if (!TextUtils.isEmpty(s1))
                {
                    arraylist1.add(new KVPair("m", s1));
                    s1 = new ArrayList();
                    s1.add(new KVPair("User-Agent", c));
                    s3 = new ArrayList();
                    s3.add(new KVPair("http.socket.timeout", Integer.valueOf(5000)));
                    s3.add(new KVPair("http.connection.timeout", Integer.valueOf(5000)));
                    try
                    {
                        s1 = k.httpPost(g, arraylist1, null, s1, s3);
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s1)
                    {
                        Ln.e(s1);
                        s1 = null;
                    }
                    if (TextUtils.isEmpty(s1))
                    {
                        j = false;
                        return s;
                    }
                    s1 = (new Hashon()).fromJson(s1);
                    try
                    {
                        l = ((Integer)s1.get("status")).intValue();
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s3)
                    {
                        Ln.e(s3);
                        l = -1;
                    }
                    if (l == 200)
                    {
                        s3 = (ArrayList)s1.get("data");
                        s1 = new HashMap();
                        HashMap hashmap;
                        String s4;
                        for (s3 = s3.iterator(); s3.hasNext(); s1.put(String.valueOf(hashmap.get("source")), s4))
                        {
                            hashmap = (HashMap)s3.next();
                            s4 = String.valueOf(hashmap.get("surl"));
                        }

                        s2 = s2.matcher(s);
                        s3 = new StringBuilder();
                        for (l = 0; s2.find(); l = s2.end())
                        {
                            s3.append(s.substring(l, s2.start()));
                            s3.append((String)s1.get(s2.group()));
                        }

                        s3.append(s.substring(l, s.length()));
                        s = s3.toString();
                        Ln.w("> SERVER_SHORT_LINK_URL content after replace link ===  %s", new Object[] {
                            s
                        });
                        return s;
                    }
                }
            }
        }
        return s;
    }

    private String a(String s, byte abyte0[])
    {
        s = Base64.encodeToString(Data.AES128Encode(abyte0, s), 0);
        abyte0 = s;
        if (s.contains("\n"))
        {
            abyte0 = s.replace("\n", "");
        }
        return abyte0;
        abyte0;
        s = null;
_L2:
        Ln.e(abyte0);
        return s;
        abyte0;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String b()
    {
        return (new StringBuilder()).append(b).append("/date").toString();
    }

    private String c()
    {
        return (new StringBuilder()).append(b).append("/log4").toString();
    }

    private boolean c(String s, String s1)
    {
        try
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(new KVPair("m", s));
            arraylist.add(new KVPair("t", s1));
            s = new ArrayList();
            s.add(new KVPair("User-Agent", c));
            s1 = new ArrayList();
            s1.add(new KVPair("http.socket.timeout", Integer.valueOf(30000)));
            s1.add(new KVPair("http.connection.timeout", Integer.valueOf(30000)));
            s = k.httpPost(c(), arraylist, null, s, s1);
            Ln.i("> %s  resp: %s", new Object[] {
                c(), s
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return false;
        }
        return s != null;
    }

    private String d()
    {
        return (new StringBuilder()).append(b).append("/data2").toString();
    }

    private String d(String s, String s1)
    {
        StringBuilder stringbuilder;
        DeviceHelper devicehelper = DeviceHelper.getInstance(a);
        boolean flag = f.b();
        boolean flag1 = f.c();
        stringbuilder = new StringBuilder();
        try
        {
            stringbuilder.append(Data.urlEncode(devicehelper.getPackageName(), "utf-8")).append("|");
            stringbuilder.append(Data.urlEncode(devicehelper.getAppVersionName(), "utf-8")).append("|");
            stringbuilder.append(Data.urlEncode(String.valueOf(50000 + ShareSDK.getSDKVersionCode()), "utf-8")).append("|");
            stringbuilder.append(Data.urlEncode(String.valueOf(devicehelper.getPlatformCode()), "utf-8")).append("|");
            stringbuilder.append(Data.urlEncode(devicehelper.getDetailNetworkTypeForStatic(), "utf-8")).append("|");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return "";
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        stringbuilder.append(Data.urlEncode(devicehelper.getOSVersion(), "utf-8")).append("|");
        stringbuilder.append(Data.urlEncode(devicehelper.getScreenSize(), "utf-8")).append("|");
        stringbuilder.append(Data.urlEncode(devicehelper.getManufacturer(), "utf-8")).append("|");
        stringbuilder.append(Data.urlEncode(devicehelper.getModel(), "utf-8")).append("|");
        stringbuilder.append(Data.urlEncode(devicehelper.getCarrier(), "utf-8")).append("|");
_L3:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_335;
        }
        stringbuilder.append(s1);
_L4:
        return a(stringbuilder.toString(), Data.rawMD5(String.format("%s:%s", new Object[] {
            devicehelper.getDeviceKey(), s
        })));
_L2:
        stringbuilder.append("|||||");
          goto _L3
        stringbuilder.append(s1.split("\\|")[0]);
        stringbuilder.append("|||||");
          goto _L4
    }

    private String e()
    {
        return (new StringBuilder()).append(b).append("/snsconf").toString();
    }

    private String f()
    {
        return (new StringBuilder()).append(b).append("/conf4").toString();
    }

    private String g()
    {
        return (new StringBuilder()).append(b).append("/conn").toString();
    }

    private long h()
    {
        Object obj;
        if (!f.h())
        {
            return 0L;
        }
        obj = "{}";
        String s = k.httpGet(b(), null, null, null);
        obj = s;
_L1:
        obj = (new Hashon()).fromJson(((String) (obj)));
        Throwable throwable1;
        if (((HashMap) (obj)).containsKey("timestamp"))
        {
            long l;
            try
            {
                l = R.parseLong(String.valueOf(((HashMap) (obj)).get("timestamp")));
                l = System.currentTimeMillis() - l;
                f.a("service_time", Long.valueOf(l));
            }
            catch (Throwable throwable)
            {
                Ln.w(throwable);
                return f.a();
            }
            return l;
        } else
        {
            return f.a();
        }
        throwable1;
        Ln.e(throwable1);
          goto _L1
    }

    private String h(String s)
    {
        Object obj = null;
        Object obj1 = h;
        Ln.i(" upload file , server url = %s, file path = %s", new Object[] {
            obj1, s
        });
        boolean flag;
        try
        {
            s = new KVPair("file", s);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new KVPair("User-Agent", c));
            obj1 = k.httpPost(((String) (obj1)), null, s, arraylist, null);
            Ln.i("upload file response == %s", new Object[] {
                obj1
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return null;
        }
_L7:
        s = obj;
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        s = obj;
        if (((String) (obj1)).length() <= 0) goto _L2; else goto _L3
_L3:
        obj1 = (new Hashon()).fromJson(((String) (obj1)));
        flag = ((HashMap) (obj1)).containsKey("status");
        int l;
        if (flag)
        {
            try
            {
                l = R.parseInt(String.valueOf(((HashMap) (obj1)).get("status")));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                l = -1;
            }
        } else
        {
            l = -1;
        }
        s = obj;
        if (l != 200) goto _L2; else goto _L4
_L4:
        if (!((HashMap) (obj1)).containsKey("url")) goto _L6; else goto _L5
_L5:
        s = ((HashMap) (obj1)).get("url").toString();
_L2:
        return s;
_L6:
        s = null;
        if (true) goto _L2; else goto _L7
    }

    private String i(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        s = new ByteArrayInputStream(s.getBytes());
        bytearrayoutputstream = new ByteArrayOutputStream();
        GZIPOutputStream gzipoutputstream;
        byte abyte1[];
        gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
        abyte1 = new byte[1024];
_L1:
        int l = s.read(abyte1, 0, 1024);
label0:
        {
            if (l == -1)
            {
                break label0;
            }
            try
            {
                gzipoutputstream.write(abyte1, 0, l);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Ln.e(s);
                return null;
            }
        }
          goto _L1
        gzipoutputstream.flush();
        gzipoutputstream.close();
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.flush();
        bytearrayoutputstream.close();
        s.close();
        s = Base64.encodeToString(abyte0, 2);
        return s;
    }

    private JSONObject i()
    {
        JSONObject jsonobject = new JSONObject();
        Object obj = DeviceHelper.getInstance(a);
        try
        {
            jsonobject.put("mac", ((DeviceHelper) (obj)).getMacAddress());
            jsonobject.put("udid", ((DeviceHelper) (obj)).getDeviceId());
            jsonobject.put("model", ((DeviceHelper) (obj)).getModel());
            jsonobject.put("factory", ((DeviceHelper) (obj)).getManufacturer());
            jsonobject.put("plat", ((DeviceHelper) (obj)).getPlatformCode());
            jsonobject.put("sysver", ((DeviceHelper) (obj)).getOSVersion());
            jsonobject.put("breaked", false);
            jsonobject.put("screensize", ((DeviceHelper) (obj)).getScreenSize());
            jsonobject.put("androidid", ((DeviceHelper) (obj)).getAndroidID());
            obj = ((DeviceHelper) (obj)).getAdvertisingID();
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                jsonobject.put("adsid", obj);
            }
        }
        catch (JSONException jsonexception)
        {
            Ln.e(jsonexception);
            return jsonobject;
        }
        return jsonobject;
    }

    private String j(String s)
    {
        JSONObject jsonobject = i();
        DeviceHelper devicehelper = DeviceHelper.getInstance(a);
        try
        {
            jsonobject.put("type", "DEVICE");
            jsonobject.put("key", devicehelper.getDeviceKey());
            jsonobject.put("carrier", devicehelper.getCarrier());
            jsonobject.put("appkey", s);
            jsonobject.put("apppkg", devicehelper.getPackageName());
            jsonobject.put("appver", String.valueOf(devicehelper.getAppVersion()));
            jsonobject.put("sdkver", 50000 + ShareSDK.getSDKVersionCode());
            jsonobject.put("networktype", devicehelper.getDetailNetworkTypeForStatic());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
        }
        return jsonobject.toString();
    }

    private JSONObject j()
    {
        JSONObject jsonobject = new JSONObject();
        DeviceHelper devicehelper = DeviceHelper.getInstance(a);
        try
        {
            jsonobject.put("type", "DEVEXT");
            jsonobject.put("plat", devicehelper.getPlatformCode());
            jsonobject.put("device", devicehelper.getDeviceKey());
            jsonobject.put("phonename", devicehelper.getBluetoothName());
            jsonobject.put("signmd5", devicehelper.getSignMD5());
            if (devicehelper.getDetailNetworkTypeForStatic().equals("wifi"))
            {
                jsonobject.put("ssid", devicehelper.getSSID());
                jsonobject.put("bssid", devicehelper.getBssid());
            }
        }
        catch (JSONException jsonexception)
        {
            Ln.e(jsonexception);
        }
        Ln.d(" networkType == getDeviceExtInfo == %s", new Object[] {
            jsonobject.toString()
        });
        return jsonobject;
    }

    public String a(Bitmap bitmap)
    {
        return a(bitmap, cn.sharesdk.framework.statistics.a.b);
    }

    public String a(String s, String s1, int l, boolean flag, String s2)
    {
        if (f.h())
        {
            Ln.w("> SERVER_SHORT_LINK_URL content before replace link ===  %s", new Object[] {
                s
            });
            if (flag)
            {
                String s3 = a(s, s1, "<a[^>]*?href[\\s]*=[\\s]*[\"']?([^'\">]+?)['\"]?>", l, s2);
                if (s3 != null && !s3.equals(s))
                {
                    return s3;
                }
            }
            s1 = a(s, s1, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+", l, s2);
            if (s1 != null && !s1.equals(s))
            {
                return s1;
            }
        }
        return s;
    }

    public void a()
    {
        if (f.h() && !"none".equals(DeviceHelper.getInstance(a).getDetailNetworkTypeForStatic()))
        {
            ArrayList arraylist = cn.sharesdk.framework.statistics.a.e.a(a);
            int l = 0;
            while (l < arraylist.size()) 
            {
                d d1 = (d)arraylist.get(l);
                boolean flag;
                if (d1.b.size() == 1)
                {
                    flag = c(d1.a, "0");
                } else
                {
                    flag = c(i(d1.a), "1");
                }
                if (flag)
                {
                    cn.sharesdk.framework.statistics.a.e.a(a, d1.b);
                }
                l++;
            }
        }
    }

    public void a(cn.sharesdk.framework.statistics.b.c c1)
    {
        Object obj;
        String s1;
        if (!f.h())
        {
            return;
        }
        obj = DeviceHelper.getInstance(a);
        s1 = ((DeviceHelper) (obj)).getDetailNetworkTypeForStatic();
        if (!(c1 instanceof g) || s1.endsWith("none")) goto _L2; else goto _L1
_L1:
        String s2 = (new StringBuilder()).append(((DeviceHelper) (obj)).getPackageName()).append("/").append(((DeviceHelper) (obj)).getAppVersionName()).toString();
        String s3 = (new StringBuilder()).append("ShareSDK/").append(ShareSDK.getSDKVersionName()).toString();
        obj = (new StringBuilder()).append("Android/").append(((DeviceHelper) (obj)).getOSVersion()).toString();
        c = (new StringBuilder()).append(s2).append(" ").append(s3).append(" ").append(((String) (obj))).toString();
_L4:
        if (!f.b())
        {
            c1.m = null;
        }
        long l2 = f.a();
        long l1 = l2;
        if (l2 == 0L)
        {
            l1 = h();
        }
        c1.e = System.currentTimeMillis() - l1;
        Ln.i(" insert event in DB == %s", new Object[] {
            c1.toString()
        });
        cn.sharesdk.framework.statistics.a.e.a(a, c1.toString(), c1.e);
        return;
_L2:
        if (c1 instanceof b)
        {
            boolean flag = f.c();
            String s = ((b)c1).c;
            if (flag && !TextUtils.isEmpty(s))
            {
                ((b)c1).c = Data.Base64AES(s, c1.f.substring(0, 16));
            } else
            {
                ((b)c1).d = null;
                ((b)c1).c = null;
            }
        } else
        if (c1 instanceof f)
        {
            f f1 = (f)c1;
            int l = f.d();
            boolean flag1 = f.c();
            cn.sharesdk.framework.statistics.b.f.a a1 = f1.d;
            if (l == 1 || l == 0 && i)
            {
                int i1;
                int j1;
                if (a1 == null || a1.e == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = a1.e.size();
                }
                for (j1 = 0; j1 < i1; j1++)
                {
                    String s4 = a((String)a1.e.get(j1), a.a);
                    if (s4 != null)
                    {
                        a1.d.add(s4);
                    }
                }

                if (a1 == null || a1.f == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = a1.f.size();
                }
                for (j1 = 0; j1 < i1; j1++)
                {
                    String s5 = a((Bitmap)a1.f.get(j1), a.a);
                    if (s5 != null)
                    {
                        a1.d.add(s5);
                    }
                }

            } else
            {
                f1.d = null;
            }
            if (!flag1)
            {
                f1.n = null;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(String s, String s1)
    {
        f.b(s, s1);
    }

    public void a(String s, ArrayList arraylist)
    {
        if (!f.h())
        {
            return;
        } else
        {
            Object obj = new HashMap();
            ((HashMap) (obj)).put("type", s);
            s = DeviceHelper.getInstance(a);
            ((HashMap) (obj)).put("plat", Integer.valueOf(s.getPlatformCode()));
            ((HashMap) (obj)).put("device", s.getDeviceKey());
            ((HashMap) (obj)).put("list", arraylist);
            arraylist = (new Hashon()).fromHashMap(((HashMap) (obj)));
            Ln.d(" upload apps info == %s", new Object[] {
                arraylist
            });
            s = new ArrayList();
            s.add(new KVPair("m", Data.Base64AES(arraylist, "sdk.sharesdk.sdk")));
            arraylist = new ArrayList();
            arraylist.add(new KVPair("User-Agent", c));
            obj = new ArrayList();
            ((ArrayList) (obj)).add(new KVPair("http.socket.timeout", Integer.valueOf(30000)));
            ((ArrayList) (obj)).add(new KVPair("http.connection.timeout", Integer.valueOf(30000)));
            Ln.i("> APPS_UNFINISHED  resp: %s", new Object[] {
                k.httpPost(d(), s, null, arraylist, ((ArrayList) (obj)))
            });
            return;
        }
    }

    public void a(boolean flag)
    {
        i = flag;
    }

    public boolean a(String s)
    {
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(f.i().longValue());
        l = calendar.get(1);
        i1 = calendar.get(2);
        j1 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        k1 = calendar.get(1);
        l1 = calendar.get(2);
        i2 = calendar.get(5);
        if (l != k1 && i1 != l1 && j1 != i2) goto _L2; else goto _L1
_L1:
        boolean flag1 = f.h();
_L4:
        return flag1;
_L2:
        Object obj;
        obj = new ArrayList();
        ((ArrayList) (obj)).add(new KVPair("appkey", s));
        s = new ArrayList();
        s.add(new KVPair("User-Agent", c));
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("http.socket.timeout", Integer.valueOf(30000)));
        arraylist.add(new KVPair("http.connection.timeout", Integer.valueOf(30000)));
        obj = k.httpPost(g(), ((ArrayList) (obj)), null, s, arraylist);
        s = ((String) (obj));
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            s = "{}";
        }
        boolean flag;
        try
        {
            Ln.i(" get server connection response == %s", new Object[] {
                s
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            s = "{}";
        }
        obj = (new Hashon()).fromJson(s);
        if (((HashMap) (obj)).containsKey("res"))
        {
            flag = Boolean.parseBoolean(((HashMap) (obj)).get("res").toString());
        } else
        {
            flag = true;
        }
        f.a(flag);
        flag1 = flag;
        if (!"{}".equals(s))
        {
            f.b(System.currentTimeMillis());
            return flag;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public long b(String s)
    {
        long l1 = 0L;
        if (f.h()) goto _L2; else goto _L1
_L1:
        return 0L;
_L2:
        Object obj1;
        obj1 = DeviceHelper.getInstance(a);
        f.a(System.currentTimeMillis());
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("appkey", s));
        arraylist.add(new KVPair("device", ((DeviceHelper) (obj1)).getDeviceKey()));
        arraylist.add(new KVPair("plat", String.valueOf(((DeviceHelper) (obj1)).getPlatformCode())));
        arraylist.add(new KVPair("apppkg", ((DeviceHelper) (obj1)).getPackageName()));
        arraylist.add(new KVPair("appver", String.valueOf(((DeviceHelper) (obj1)).getAppVersion())));
        arraylist.add(new KVPair("sdkver", String.valueOf(50000 + ShareSDK.getSDKVersionCode())));
        arraylist.add(new KVPair("networktype", ((DeviceHelper) (obj1)).getDetailNetworkTypeForStatic()));
        obj1 = new ArrayList();
        ((ArrayList) (obj1)).add(new KVPair("User-Agent", c));
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new KVPair("http.socket.timeout", Integer.valueOf(10000)));
        arraylist1.add(new KVPair("http.connection.timeout", Integer.valueOf(10000)));
        obj1 = k.httpPost(f(), arraylist, null, ((ArrayList) (obj1)), arraylist1);
        Object obj = obj1;
        if (TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            obj = "{}";
        }
        int l;
        try
        {
            Ln.i(" get server config response == %s", new Object[] {
                obj
            });
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            throwable = "{}";
        }
        obj1 = (new Hashon()).fromJson(((String) (obj)));
        if (!((HashMap) (obj1)).containsKey("status"))
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            l = R.parseInt(String.valueOf(((HashMap) (obj1)).get("status")));
        }
        catch (Throwable throwable1)
        {
            Ln.w(throwable1);
            l = -200;
        }
        if (l != -200)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ShareSDK.isDebug())
        {
            System.err.print(String.valueOf(((HashMap) (obj1)).get("error")));
            return 0L;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!((HashMap) (obj1)).containsKey("timestamp")) goto _L5; else goto _L4
_L4:
        long l2 = R.parseLong(((HashMap) (obj1)).get("timestamp").toString());
        l1 = l2;
        long l3 = System.currentTimeMillis();
        l1 = l3 - l2;
        f.a("service_time", Long.valueOf(l1));
_L8:
        if (((HashMap) (obj1)).containsKey("switchs"))
        {
            new HashMap();
            Object obj2 = (HashMap)((HashMap) (obj1)).get("switchs");
            String s1 = ((HashMap) (obj2)).get("device").toString();
            String s3 = ((HashMap) (obj2)).get("share").toString();
            obj2 = ((HashMap) (obj2)).get("auth").toString();
            f.d(s1);
            f.f(s3);
            f.e(((String) (obj2)));
        }
        if (((HashMap) (obj1)).containsKey("requesthost") && ((HashMap) (obj1)).containsKey("requestport"))
        {
            String s2 = String.valueOf(((HashMap) (obj1)).get("requesthost"));
            obj1 = String.valueOf(((HashMap) (obj1)).get("requestport"));
            if (!TextUtils.isEmpty(s2) && !TextUtils.isEmpty(((CharSequence) (obj1))))
            {
                b = (new StringBuilder()).append("http://").append(s2).append(":").append(((String) (obj1))).toString();
            }
        }
        d(s);
        c(s);
        return l1;
        Throwable throwable2;
        throwable2;
_L6:
        Ln.w(throwable2);
        continue; /* Loop/switch isn't completed */
        throwable2;
        if (true) goto _L6; else goto _L5
_L5:
        l1 = 0L;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public String b(String s, String s1)
    {
        s1 = Base64.decode(s1, 0);
        String s2 = DeviceHelper.getInstance(a).getDeviceKey();
        return new String(Data.AES128Decode(Data.rawMD5((new StringBuilder()).append(s).append(":").append(s2).toString()), s1), "UTF-8");
    }

    public void c(String s)
    {
        if (f.h())
        {
            try
            {
                s = f.f();
                Object obj = Data.Base64AES(j().toString(), "sdk.sharesdk.sdk");
                if (!((String) (obj)).equals(s))
                {
                    f.i(((String) (obj)));
                    s = new ArrayList();
                    s.add(new KVPair("m", obj));
                    obj = new ArrayList();
                    ((ArrayList) (obj)).add(new KVPair("User-Agent", c));
                    ArrayList arraylist = new ArrayList();
                    arraylist.add(new KVPair("http.socket.timeout", Integer.valueOf(10000)));
                    arraylist.add(new KVPair("http.connection.timeout", Integer.valueOf(10000)));
                    Ln.i("> DEVICE_EXT_DATA_UNFINISHED  resp: %s", new Object[] {
                        k.httpPost(d(), s, null, ((ArrayList) (obj)), arraylist)
                    });
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Ln.e(s);
                return;
            }
        }
    }

    public void d(String s)
    {
        if (f.h())
        {
            try
            {
                String s1 = f.e().trim();
                Object obj = i().toString().trim();
                if (!((String) (obj)).equals(s1))
                {
                    f.h(((String) (obj)));
                    Ln.d(" curBaseDeviceInfo == %s", new Object[] {
                        obj
                    });
                    ArrayList arraylist = new ArrayList();
                    arraylist.add(new KVPair("m", Data.Base64AES(j(s), "sdk.sharesdk.sdk")));
                    s = new ArrayList();
                    s.add(new KVPair("User-Agent", c));
                    obj = new ArrayList();
                    ((ArrayList) (obj)).add(new KVPair("http.socket.timeout", Integer.valueOf(30000)));
                    ((ArrayList) (obj)).add(new KVPair("http.connection.timeout", Integer.valueOf(30000)));
                    Ln.i("> DEVICE_UNFINISHED  resp: %s", new Object[] {
                        k.httpPost(d(), arraylist, null, s, ((ArrayList) (obj)))
                    });
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Ln.e(s);
                return;
            }
        }
    }

    public String e(String s)
    {
        return a(s, cn.sharesdk.framework.statistics.a.b);
    }

    public HashMap f(String s)
    {
        HashMap hashmap;
        String s1;
        try
        {
            hashmap = new HashMap();
            s1 = f.g(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return new HashMap();
        }
        s = hashmap;
        if (!TextUtils.isEmpty(s1))
        {
            s = (new Hashon()).fromJson(s1);
        }
        return s;
    }

    public String g(String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("appkey", s));
        arraylist.add(new KVPair("device", DeviceHelper.getInstance(a).getDeviceKey()));
        s = new ArrayList();
        s.add(new KVPair("User-Agent", c));
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new KVPair("http.socket.timeout", Integer.valueOf(10000)));
        arraylist1.add(new KVPair("http.connection.timeout", Integer.valueOf(10000)));
        return k.httpPost(e(), arraylist, null, s, arraylist1);
    }

}
