// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            ax, n, c, az, 
//            r, s, Jni

class y
    implements ax, n
{
    class a extends s
    {

        final y ds;
        boolean dt;
        String du;
        boolean dv;

        void T()
        {
            cR = c._mthfor();
            c0 = 2;
            String s1 = Jni.i(du);
            du = null;
            if (dt)
            {
                cT.add(new BasicNameValuePair("qt", "grid"));
            } else
            {
                cT.add(new BasicNameValuePair("qt", "conf"));
            }
            cT.add(new BasicNameValuePair("req", s1));
        }

        void _mthdo(boolean flag)
        {
            if (flag && cS != null)
            {
                if (dt)
                {
                    y._mthif(ds, cS);
                } else
                {
                    y._mthdo(ds, cS);
                }
            } else
            {
                y._mthdo(ds, null);
            }
            if (cT != null)
            {
                cT.clear();
            }
            dv = false;
        }

        public void _mthif(String s1, boolean flag)
        {
            if (dv)
            {
                return;
            } else
            {
                dv = true;
                du = s1;
                dt = flag;
                N();
                return;
            }
        }

        public a()
        {
            ds = y.this;
            super();
            du = null;
            dt = false;
            dv = false;
            cT = new ArrayList();
        }
    }


    public static boolean f0 = false;
    public static boolean f1 = false;
    private static final String f2;
    public static int f4 = 0;
    public static boolean f5 = false;
    public static boolean f6 = false;
    private static final int f7 = 128;
    public static boolean f8 = true;
    private static y f9 = null;
    public static boolean gb = false;
    public static int gc = -1;
    public static int gd = 0;
    private a f3;
    private long ga;

    private y()
    {
        f3 = null;
        ga = 0L;
        f3 = new a();
    }

    public static void a5()
    {
        Object obj = (new StringBuilder()).append(I).append("/config.dat").toString();
        byte abyte0[];
        int i;
        int j;
        if (c.az)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (c.aZ)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        abyte0 = String.format(Locale.CHINA, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\",\"shak\":\"%d|%d|%.1f\",\"dmx\":%d}", new Object[] {
            Integer.valueOf(c.ai), Float.valueOf(c.ae), Float.valueOf(c.aR), Float.valueOf(c.ag), Float.valueOf(c.aT), Integer.valueOf(c.aI), Integer.valueOf(c.W), Integer.valueOf(c.aJ), Integer.valueOf(c.X), Integer.valueOf(c.aa), 
            Integer.valueOf(c.ax), Integer.valueOf(c.a4), Float.valueOf(c.be), Float.valueOf(c.bb), Float.valueOf(c.ap), Float.valueOf(c.a0), Integer.valueOf(c.aX), Float.valueOf(c.ab), Integer.valueOf(c.at), Float.valueOf(c.aU), 
            Float.valueOf(c.bd), Float.valueOf(c.ba), Integer.valueOf(c.a8), Integer.valueOf(c.a6), Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(c.av), Integer.valueOf(c.ay), Long.valueOf(c.aS), Integer.valueOf(c.aV), 
            Float.valueOf(c.af), Float.valueOf(c.Z), Integer.valueOf(c.aq), Integer.valueOf(c.aF), Integer.valueOf(c.au), Integer.valueOf(c.aW), Integer.valueOf(c.aO), Float.valueOf(c.a2), Integer.valueOf(c.a5)
        }).getBytes();
        try
        {
label0:
            {
                obj = new File(((String) (obj)));
                if (!((File) (obj)).exists())
                {
                    Object obj1 = new File(I);
                    if (!((File) (obj1)).exists())
                    {
                        ((File) (obj1)).mkdirs();
                    }
                    if (!((File) (obj)).createNewFile())
                    {
                        break label0;
                    }
                    obj1 = new RandomAccessFile(((File) (obj)), "rw");
                    ((RandomAccessFile) (obj1)).seek(0L);
                    ((RandomAccessFile) (obj1)).writeBoolean(false);
                    ((RandomAccessFile) (obj1)).writeBoolean(false);
                    ((RandomAccessFile) (obj1)).close();
                }
                obj = new RandomAccessFile(((File) (obj)), "rw");
                ((RandomAccessFile) (obj)).seek(0L);
                ((RandomAccessFile) (obj)).writeBoolean(true);
                ((RandomAccessFile) (obj)).seek(2L);
                ((RandomAccessFile) (obj)).writeInt(abyte0.length);
                ((RandomAccessFile) (obj)).write(abyte0);
                ((RandomAccessFile) (obj)).close();
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void a6()
    {
        Object obj;
        File file1;
        try
        {
            file1 = new File(f2);
            if (file1.exists())
            {
                break MISSING_BLOCK_LABEL_90;
            }
            File file = new File(I);
            if (!file.exists())
            {
                file.mkdirs();
            }
        }
        catch (Exception exception)
        {
            return;
        }
        obj = file1;
        if (!file1.createNewFile())
        {
            obj = null;
        }
        obj = new RandomAccessFile(((File) (obj)), "rw");
        ((RandomAccessFile) (obj)).seek(0L);
        ((RandomAccessFile) (obj)).writeInt(0);
        ((RandomAccessFile) (obj)).writeInt(128);
        ((RandomAccessFile) (obj)).writeInt(0);
        ((RandomAccessFile) (obj)).close();
    }

    public static y a7()
    {
        if (f9 == null)
        {
            f9 = new y();
        }
        return f9;
    }

    private void ba()
    {
        String s = (new StringBuilder()).append("&ver=").append(c.ai).append("&usr=").append(az.cn().ck()).append("&app=").append(az.iH).append("&prod=").append(az.iM).toString();
        f3._mthif(s, false);
    }

    public static void bb()
    {
        Object obj = (new StringBuilder()).append(I).append("/config.dat").toString();
        try
        {
label0:
            {
                obj = new File(((String) (obj)));
                if (!((File) (obj)).exists())
                {
                    Object obj1 = new File(I);
                    if (!((File) (obj1)).exists())
                    {
                        ((File) (obj1)).mkdirs();
                    }
                    if (!((File) (obj)).createNewFile())
                    {
                        break label0;
                    }
                    obj1 = new RandomAccessFile(((File) (obj)), "rw");
                    ((RandomAccessFile) (obj1)).seek(0L);
                    ((RandomAccessFile) (obj1)).writeBoolean(false);
                    ((RandomAccessFile) (obj1)).writeBoolean(false);
                    ((RandomAccessFile) (obj1)).close();
                }
                obj = new RandomAccessFile(((File) (obj)), "rw");
                ((RandomAccessFile) (obj)).seek(1L);
                ((RandomAccessFile) (obj)).writeBoolean(true);
                ((RandomAccessFile) (obj)).seek(1024L);
                ((RandomAccessFile) (obj)).writeDouble(c.aH);
                ((RandomAccessFile) (obj)).writeDouble(c.ac);
                ((RandomAccessFile) (obj)).writeBoolean(c.ar);
                if (c.ar && c.aB != null)
                {
                    ((RandomAccessFile) (obj)).write(c.aB);
                }
                ((RandomAccessFile) (obj)).close();
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void bc()
    {
        int i = 0;
        Object obj = new File(f2);
        if (!((File) (obj)).exists()) goto _L2; else goto _L1
_L1:
        int j;
        obj = new RandomAccessFile(((File) (obj)), "rw");
        ((RandomAccessFile) (obj)).seek(4L);
        j = ((RandomAccessFile) (obj)).readInt();
        byte abyte0[];
        int k;
        int l;
        if (j > 3000)
        {
            try
            {
                ((RandomAccessFile) (obj)).close();
                gd = 0;
                a6();
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        }
        k = ((RandomAccessFile) (obj)).readInt();
        ((RandomAccessFile) (obj)).seek(128L);
        abyte0 = new byte[j];
_L3:
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        ((RandomAccessFile) (obj)).seek(j * i + 128);
        l = ((RandomAccessFile) (obj)).readInt();
        if (l <= 0 || l >= j)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        ((RandomAccessFile) (obj)).read(abyte0, 0, l);
        if (abyte0[l - 1] != 0)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        String s = new String(abyte0, 0, l - 1);
        az.cn();
        if (!s.equals(az.iH))
        {
            break MISSING_BLOCK_LABEL_195;
        }
        gc = ((RandomAccessFile) (obj)).readInt();
        gd = i;
        if (i != k)
        {
            break MISSING_BLOCK_LABEL_188;
        }
        gd = k;
        ((RandomAccessFile) (obj)).close();
        return;
        i++;
        if (true) goto _L3; else goto _L2
_L2:
    }

    static void _mthdo(y y1, HttpEntity httpentity)
    {
        y1._mthdo(httpentity);
    }

    private void _mthdo(HttpEntity httpentity)
    {
        HttpEntity httpentity1;
        httpentity1 = null;
        f4 = -1;
        if (httpentity == null) goto _L2; else goto _L1
_L1:
        httpentity = EntityUtils.toString(httpentity, "utf-8");
        HttpEntity httpentity2;
        httpentity2 = httpentity;
        httpentity1 = httpentity;
        if (!o(httpentity))
        {
            break MISSING_BLOCK_LABEL_37;
        }
        httpentity1 = httpentity;
        a5();
        httpentity2 = httpentity;
_L5:
        int i;
        try
        {
            httpentity = new JSONObject(httpentity2);
            if (httpentity.has("ctr"))
            {
                f4 = Integer.parseInt(httpentity.getString("ctr"));
            }
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity) { }
_L2:
        bc();
        if (f4 == -1)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        i = f4;
        _mthnew(f4);
_L3:
        for (; i == -1; i = -1)
        {
            break MISSING_BLOCK_LABEL_101;
        }

        _mthtry(i);
        r.H().I().obtainMessage(92).sendToTarget();
        return;
        try
        {
            if (gc == -1)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            i = gc;
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            return;
        }
          goto _L3
        httpentity;
        httpentity2 = httpentity1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    static void _mthif(y y1, HttpEntity httpentity)
    {
        y1._mthif(httpentity);
    }

    private void _mthif(HttpEntity httpentity)
    {
        int i;
        boolean flag = false;
        i = 0;
        try
        {
            httpentity = EntityUtils.toByteArray(httpentity);
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            return;
        }
        if (httpentity != null) goto _L2; else goto _L1
_L1:
        if (i == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        bb();
        return;
_L2:
        if (httpentity.length >= 640)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        c.ar = false;
        c.ac = c.an + 0.025000000000000001D;
        c.aH = c.a9 - 0.025000000000000001D;
        i = 1;
        continue; /* Loop/switch isn't completed */
        c.ar = true;
        c.aH = Double.longBitsToDouble(Long.valueOf(((long)httpentity[7] & 255L) << 56 | ((long)httpentity[6] & 255L) << 48 | ((long)httpentity[5] & 255L) << 40 | ((long)httpentity[4] & 255L) << 32 | ((long)httpentity[3] & 255L) << 24 | ((long)httpentity[2] & 255L) << 16 | ((long)httpentity[1] & 255L) << 8 | (long)httpentity[0] & 255L).longValue());
        c.ac = Double.longBitsToDouble(Long.valueOf(((long)httpentity[15] & 255L) << 56 | ((long)httpentity[14] & 255L) << 48 | ((long)httpentity[13] & 255L) << 40 | ((long)httpentity[12] & 255L) << 32 | ((long)httpentity[11] & 255L) << 24 | ((long)httpentity[10] & 255L) << 16 | ((long)httpentity[9] & 255L) << 8 | (long)httpentity[8] & 255L).longValue());
        c.aB = new byte[625];
        i = ((flag) ? 1 : 0);
_L4:
        if (i >= 625)
        {
            break; /* Loop/switch isn't completed */
        }
        c.aB[i] = httpentity[i + 16];
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        i = 1;
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static void _mthnew(int i)
    {
        Object obj = new File(f2);
        if (!((File) (obj)).exists())
        {
            a6();
        }
        try
        {
            obj = new RandomAccessFile(((File) (obj)), "rw");
            ((RandomAccessFile) (obj)).seek(4L);
            int j = ((RandomAccessFile) (obj)).readInt();
            int k = ((RandomAccessFile) (obj)).readInt();
            ((RandomAccessFile) (obj)).seek(j * gd + 128);
            byte abyte0[] = (new StringBuilder()).append(az.iH).append('\0').toString().getBytes();
            ((RandomAccessFile) (obj)).writeInt(abyte0.length);
            ((RandomAccessFile) (obj)).write(abyte0, 0, abyte0.length);
            ((RandomAccessFile) (obj)).writeInt(i);
            if (k == gd)
            {
                ((RandomAccessFile) (obj)).seek(8L);
                ((RandomAccessFile) (obj)).writeInt(k + 1);
            }
            ((RandomAccessFile) (obj)).close();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void _mthtry(int i)
    {
        boolean flag1 = true;
        boolean flag;
        if ((i & 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f6 = flag;
        if ((i & 2) == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f8 = flag;
        if ((i & 4) == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        gb = flag;
        if ((i & 8) == 8)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f0 = flag;
        if ((i & 0x10000) == 0x10000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f1 = flag;
        if ((i & 0x20000) == 0x20000)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        f5 = flag;
    }

    public void a8()
    {
        Object obj = (new StringBuilder()).append(I).append("/config.dat").toString();
        try
        {
            obj = new File(((String) (obj)));
            if (((File) (obj)).exists())
            {
                obj = new RandomAccessFile(((File) (obj)), "rw");
                if (((RandomAccessFile) (obj)).readBoolean())
                {
                    ((RandomAccessFile) (obj)).seek(2L);
                    int i = ((RandomAccessFile) (obj)).readInt();
                    byte abyte0[] = new byte[i];
                    ((RandomAccessFile) (obj)).read(abyte0, 0, i);
                    o(new String(abyte0));
                }
                ((RandomAccessFile) (obj)).seek(1L);
                if (((RandomAccessFile) (obj)).readBoolean())
                {
                    ((RandomAccessFile) (obj)).seek(1024L);
                    c.aH = ((RandomAccessFile) (obj)).readDouble();
                    c.ac = ((RandomAccessFile) (obj)).readDouble();
                    c.ar = ((RandomAccessFile) (obj)).readBoolean();
                    if (c.ar)
                    {
                        c.aB = new byte[625];
                        ((RandomAccessFile) (obj)).read(c.aB, 0, 625);
                    }
                }
                ((RandomAccessFile) (obj)).close();
            }
        }
        catch (Exception exception) { }
        _mthdo(null);
    }

    public void a9()
    {
        if (System.currentTimeMillis() - ga > 0x44aa200L)
        {
            ga = System.currentTimeMillis();
            ba();
        }
    }

    public void n(String s)
    {
        f3._mthif(s, true);
    }

    public boolean o(String s)
    {
        boolean flag1 = true;
        if (s == null) goto _L2; else goto _L1
_L1:
        int i;
        s = new JSONObject(s);
        i = Integer.parseInt(s.getString("ver"));
        if (i <= c.ai) goto _L2; else goto _L3
_L3:
        c.ai = i;
        if (!s.has("gps")) goto _L5; else goto _L4
_L4:
        String as[] = s.getString("gps").split("\\|");
        if (as.length <= 10) goto _L5; else goto _L6
_L6:
        int j;
        boolean flag;
        if (as[0] != null)
        {
            try
            {
                if (!as[0].equals(""))
                {
                    c.ae = Float.parseFloat(as[0]);
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return false;
            }
        }
        if (as[1] == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        if (!as[1].equals(""))
        {
            c.aR = Float.parseFloat(as[1]);
        }
        if (as[2] == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        if (!as[2].equals(""))
        {
            c.ag = Float.parseFloat(as[2]);
        }
        if (as[3] == null)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        if (!as[3].equals(""))
        {
            c.aT = Float.parseFloat(as[3]);
        }
        if (as[4] == null)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        if (!as[4].equals(""))
        {
            c.aI = Integer.parseInt(as[4]);
        }
        if (as[5] == null)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        if (!as[5].equals(""))
        {
            c.W = Integer.parseInt(as[5]);
        }
        if (as[6] == null)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        if (!as[6].equals(""))
        {
            c.aJ = Integer.parseInt(as[6]);
        }
        if (as[7] == null)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        if (!as[7].equals(""))
        {
            c.X = Integer.parseInt(as[7]);
        }
        if (as[8] == null)
        {
            break MISSING_BLOCK_LABEL_321;
        }
        if (!as[8].equals(""))
        {
            c.aa = Integer.parseInt(as[8]);
        }
        if (as[9] == null)
        {
            break MISSING_BLOCK_LABEL_351;
        }
        if (!as[9].equals(""))
        {
            c.ax = Integer.parseInt(as[9]);
        }
        if (as[10] == null) goto _L5; else goto _L7
_L7:
        if (!as[10].equals(""))
        {
            c.a4 = Integer.parseInt(as[10]);
        }
_L5:
        if (!s.has("up")) goto _L9; else goto _L8
_L8:
        as = s.getString("up").split("\\|");
        if (as.length <= 3) goto _L9; else goto _L10
_L10:
        if (as[0] == null)
        {
            break MISSING_BLOCK_LABEL_438;
        }
        if (!as[0].equals(""))
        {
            c.be = Float.parseFloat(as[0]);
        }
        if (as[1] == null)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        if (!as[1].equals(""))
        {
            c.bb = Float.parseFloat(as[1]);
        }
        if (as[2] == null)
        {
            break MISSING_BLOCK_LABEL_492;
        }
        if (!as[2].equals(""))
        {
            c.ap = Float.parseFloat(as[2]);
        }
        if (as[3] == null) goto _L9; else goto _L11
_L11:
        if (!as[3].equals(""))
        {
            c.a0 = Float.parseFloat(as[3]);
        }
_L9:
        if (!s.has("wf")) goto _L13; else goto _L12
_L12:
        as = s.getString("wf").split("\\|");
        if (as.length <= 3) goto _L13; else goto _L14
_L14:
        if (as[0] == null)
        {
            break MISSING_BLOCK_LABEL_576;
        }
        if (!as[0].equals(""))
        {
            c.aX = Integer.parseInt(as[0]);
        }
        if (as[1] == null)
        {
            break MISSING_BLOCK_LABEL_603;
        }
        if (!as[1].equals(""))
        {
            c.ab = Float.parseFloat(as[1]);
        }
        if (as[2] == null)
        {
            break MISSING_BLOCK_LABEL_630;
        }
        if (!as[2].equals(""))
        {
            c.at = Integer.parseInt(as[2]);
        }
        if (as[3] == null) goto _L13; else goto _L15
_L15:
        if (!as[3].equals(""))
        {
            c.aU = Float.parseFloat(as[3]);
        }
_L13:
        if (!s.has("ab")) goto _L17; else goto _L16
_L16:
        as = s.getString("ab").split("\\|");
        if (as.length <= 3) goto _L17; else goto _L18
_L18:
        if (as[0] == null)
        {
            break MISSING_BLOCK_LABEL_714;
        }
        if (!as[0].equals(""))
        {
            c.bd = Float.parseFloat(as[0]);
        }
        if (as[1] == null)
        {
            break MISSING_BLOCK_LABEL_741;
        }
        if (!as[1].equals(""))
        {
            c.ba = Float.parseFloat(as[1]);
        }
        if (as[2] == null)
        {
            break MISSING_BLOCK_LABEL_768;
        }
        if (!as[2].equals(""))
        {
            c.a8 = Integer.parseInt(as[2]);
        }
        if (as[3] == null) goto _L17; else goto _L19
_L19:
        if (!as[3].equals(""))
        {
            c.a6 = Integer.parseInt(as[3]);
        }
_L17:
        if (!s.has("zxd")) goto _L21; else goto _L20
_L20:
        as = s.getString("zxd").split("\\|");
        if (as.length <= 4) goto _L21; else goto _L22
_L22:
        if (as[0] == null)
        {
            break MISSING_BLOCK_LABEL_852;
        }
        if (!as[0].equals(""))
        {
            c.af = Float.parseFloat(as[0]);
        }
        if (as[1] == null)
        {
            break MISSING_BLOCK_LABEL_879;
        }
        if (!as[1].equals(""))
        {
            c.Z = Float.parseFloat(as[1]);
        }
        if (as[2] == null)
        {
            break MISSING_BLOCK_LABEL_906;
        }
        if (!as[2].equals(""))
        {
            c.aq = Integer.parseInt(as[2]);
        }
        if (as[3] == null)
        {
            break MISSING_BLOCK_LABEL_933;
        }
        if (!as[3].equals(""))
        {
            c.aF = Integer.parseInt(as[3]);
        }
        if (as[4] == null) goto _L21; else goto _L23
_L23:
        if (!as[4].equals(""))
        {
            c.au = Integer.parseInt(as[4]);
        }
_L21:
        if (!s.has("gpc")) goto _L25; else goto _L24
_L24:
        as = s.getString("gpc").split("\\|");
        if (as.length <= 5) goto _L25; else goto _L26
_L26:
        if (as[0] == null) goto _L28; else goto _L27
_L27:
        if (as[0].equals("")) goto _L28; else goto _L29
_L29:
        if (Integer.parseInt(as[0]) <= 0) goto _L31; else goto _L30
_L30:
        c.az = true;
_L28:
        if (as[1] == null) goto _L33; else goto _L32
_L32:
        if (as[1].equals("")) goto _L33; else goto _L34
_L34:
        if (Integer.parseInt(as[1]) <= 0) goto _L36; else goto _L35
_L35:
        c.aZ = true;
_L33:
        if (as[2] == null)
        {
            break MISSING_BLOCK_LABEL_1079;
        }
        if (!as[2].equals(""))
        {
            c.av = Integer.parseInt(as[2]);
        }
        if (as[3] == null)
        {
            break MISSING_BLOCK_LABEL_1106;
        }
        if (!as[3].equals(""))
        {
            c.ay = Integer.parseInt(as[3]);
        }
        if (as[4] == null) goto _L38; else goto _L37
_L37:
        if (as[4].equals("")) goto _L38; else goto _L39
_L39:
        j = Integer.parseInt(as[4]);
        if (j <= 0) goto _L41; else goto _L40
_L40:
        c.aS = j;
        c.aQ = c.aS * 1000L * 60L;
        c.aD = c.aQ >> 2;
_L38:
        if (as[5] == null) goto _L25; else goto _L42
_L42:
        if (!as[5].equals(""))
        {
            c.aV = Integer.parseInt(as[5]);
        }
_L25:
        if (!s.has("shak")) goto _L44; else goto _L43
_L43:
        as = s.getString("shak").split("\\|");
        if (as.length <= 2) goto _L44; else goto _L45
_L45:
        if (as[0] == null)
        {
            break MISSING_BLOCK_LABEL_1246;
        }
        if (!as[0].equals(""))
        {
            c.aW = Integer.parseInt(as[0]);
        }
        if (as[1] == null)
        {
            break MISSING_BLOCK_LABEL_1273;
        }
        if (!as[1].equals(""))
        {
            c.aO = Integer.parseInt(as[1]);
        }
        if (as[2] == null) goto _L44; else goto _L46
_L46:
        if (!as[2].equals(""))
        {
            c.a2 = Float.parseFloat(as[2]);
        }
_L44:
        flag = flag1;
        if (!s.has("dmx")) goto _L48; else goto _L47
_L47:
        c.a5 = s.getInt("dmx");
        flag = flag1;
          goto _L48
_L31:
        c.az = false;
        continue; /* Loop/switch isn't completed */
_L36:
        c.aZ = false;
          goto _L33
_L41:
        c.a7 = false;
          goto _L38
_L2:
        flag = false;
_L48:
        return flag;
        if (true) goto _L28; else goto _L49
_L49:
    }

    static 
    {
        f6 = true;
        f0 = true;
        f1 = true;
        f5 = true;
        f2 = (new StringBuilder()).append(I).append("/conlts.dat").toString();
        f4 = -1;
    }
}
