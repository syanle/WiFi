// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.zip.GZIPOutputStream;

// Referenced classes of package com.baidu.location:
//            ax, b, f, az, 
//            Jni, c

class ad
    implements ax, SensorEventListener, com.baidu.location.b
{
    class a
    {

        final ad a;
        StringBuffer _flddo;
        public boolean _fldif;

        public void a()
        {
        }

        public void _mthdo()
        {
        }

        public void _mthif()
        {
        }

        a()
        {
            a = ad.this;
            super();
            _fldif = false;
            _flddo = null;
        }
    }

    class b
    {

        final ad a;

        public b()
        {
            a = ad.this;
            super();
        }
    }


    private static ad kg;
    private Runnable j6;
    private Sensor j7;
    private final int j8 = 2;
    private boolean j9;
    private boolean ka;
    private int kb;
    private boolean kc;
    private Sensor kd;
    private boolean ke;
    private Handler kf;
    private boolean kh;
    private int ki;
    private StringBuffer kj;
    private SensorManager kk;
    private StringBuffer kl;
    private Runnable km;
    private final int kn = 1;

    private ad()
    {
        ke = false;
        kc = false;
        ka = false;
        j9 = false;
        kl = null;
        kj = null;
        km = null;
        j6 = null;
        ki = 0;
        kb = 0;
        kh = false;
        try
        {
            kk = (SensorManager)f.getServiceContext().getSystemService("sensor");
            j7 = kk.getDefaultSensor(1);
            kd = kk.getDefaultSensor(2);
        }
        catch (Exception exception) { }
        kf = new Handler();
    }

    private void cC()
    {
        while (kk == null || kd == null || j9) 
        {
            return;
        }
        try
        {
            kk.registerListener(this, kd, 2, kf);
            j9 = true;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void cD()
    {
        if (!j9)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        kk.unregisterListener(this, kd);
        j9 = false;
        return;
        Exception exception;
        exception;
    }

    private void cE()
    {
        while (kk == null || j7 == null || ka) 
        {
            return;
        }
        try
        {
            kk.registerListener(this, j7, 2, kf);
            ka = true;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void cF()
    {
        if (kc || ke)
        {
            cE();
        }
        if (kc)
        {
            cC();
        }
    }

    private String cH()
    {
        int i = 0;
        String s = _mthvoid(1);
        String as[] = new String[2];
        as[0] = "lmibaca.dat";
        as[1] = "lmibacb.dat";
        for (int j = as.length; i < j; i++)
        {
            String s1 = as[i];
            if (!(new File((new StringBuilder()).append(s).append(File.separator).append(s1).toString())).exists())
            {
                return (new StringBuilder()).append(s).append(File.separator).append(s1).toString();
            }
        }

        return null;
    }

    private void cI()
    {
        if (!ka)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        kk.unregisterListener(this, j7);
        ka = false;
        return;
        Exception exception;
        exception;
    }

    private void cJ()
    {
        kc = true;
        kj = new StringBuffer(8192);
        cF();
        km = new _cls3();
        kf.postDelayed(km, 60000L);
    }

    private void cL()
    {
        if (kc)
        {
            return;
        }
        if (ke)
        {
            cD();
            return;
        } else
        {
            cD();
            cI();
            ki = 0;
            kb = 0;
            return;
        }
    }

    public static ad cM()
    {
        if (kg == null)
        {
            kg = new ad();
        }
        return kg;
    }

    private String cN()
    {
        int i = 0;
        String s = _mthvoid(2);
        String as[] = new String[4];
        as[0] = "lbaca.dat";
        as[1] = "lbacb.dat";
        as[2] = "lbacc.dat";
        as[3] = "lbacd.dat";
        for (int j = as.length; i < j; i++)
        {
            String s1 = as[i];
            if (!(new File((new StringBuilder()).append(s).append(File.separator).append(s1).toString())).exists())
            {
                return (new StringBuilder()).append(s).append(File.separator).append(s1).toString();
            }
        }

        return null;
    }

    private boolean cQ()
    {
        Object obj;
        obj = cR();
        if (obj == null)
        {
            return false;
        }
        obj = new File(((String) (obj)));
        if (((File) (obj)).exists())
        {
            break MISSING_BLOCK_LABEL_55;
        }
        ((File) (obj)).createNewFile();
        obj = new RandomAccessFile(((File) (obj)), "rw");
        _mthif(((RandomAccessFile) (obj)), 0);
        ((RandomAccessFile) (obj)).close();
        return true;
        int i;
        long l;
        obj = new RandomAccessFile(((File) (obj)), "rw");
        ((RandomAccessFile) (obj)).seek(4L);
        l = ((RandomAccessFile) (obj)).readLong();
        i = ((RandomAccessFile) (obj)).readInt();
        if (((RandomAccessFile) (obj)).readInt() != 3321)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        l = System.currentTimeMillis() - l;
        if (l < 0L || l > 0x5265c00L)
        {
            try
            {
                ((RandomAccessFile) (obj)).seek(4L);
                ((RandomAccessFile) (obj)).writeLong(System.currentTimeMillis());
                ((RandomAccessFile) (obj)).writeInt(0);
                ((RandomAccessFile) (obj)).close();
            }
            catch (Exception exception)
            {
                return false;
            }
            return true;
        }
        if (i <= 0x17700)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        ((RandomAccessFile) (obj)).close();
        return false;
        ((RandomAccessFile) (obj)).close();
        return true;
        _mthif(((RandomAccessFile) (obj)), 0);
        ((RandomAccessFile) (obj)).close();
        return true;
    }

    private String cR()
    {
        String s = _mthvoid(1);
        if (s == null)
        {
            return null;
        }
        s = (new StringBuilder()).append(s).append(File.separator).append("lscts.dat").toString();
        Object obj = new File(s);
        if (!((File) (obj)).exists())
        {
            try
            {
                ((File) (obj)).createNewFile();
                obj = new RandomAccessFile(((File) (obj)), "rw");
                _mthif(((RandomAccessFile) (obj)), 0);
                ((RandomAccessFile) (obj)).close();
            }
            catch (Exception exception)
            {
                return null;
            }
        }
        return s;
    }

    private void d(int i)
    {
        Object obj = cR();
        if (obj != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!((File) (obj = new File(((String) (obj))))).exists()) goto _L1; else goto _L3
_L3:
        int j;
        int k;
        obj = new RandomAccessFile(((File) (obj)), "rw");
        ((RandomAccessFile) (obj)).seek(0L);
        j = ((RandomAccessFile) (obj)).readInt();
        ((RandomAccessFile) (obj)).readLong();
        k = ((RandomAccessFile) (obj)).readInt();
        if (((RandomAccessFile) (obj)).readInt() != 3321 || j != 3321)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        ((RandomAccessFile) (obj)).seek(12L);
        ((RandomAccessFile) (obj)).writeInt(k + i);
_L4:
        ((RandomAccessFile) (obj)).close();
        return;
        try
        {
            _mthif(((RandomAccessFile) (obj)), 48000 + i);
        }
        catch (Exception exception)
        {
            return;
        }
          goto _L4
    }

    static Runnable _mthdo(ad ad1)
    {
        return ad1.j6;
    }

    private void _mthdo(StringBuffer stringbuffer)
    {
        if (!kc || kj == null)
        {
            return;
        } else
        {
            _mthif(kj, stringbuffer, e(2));
            return;
        }
    }

    private String e(int i)
    {
        String s = _mthvoid(i);
        if (s != null)
        {
            if (i == 2)
            {
                return (new StringBuilder()).append(s).append(File.separator).append("lbacz.dat").toString();
            }
            if (i == 1)
            {
                return (new StringBuilder()).append(s).append(File.separator).append("lmibacz.dat").toString();
            }
        }
        return null;
    }

    static Runnable _mthfor(ad ad1)
    {
        return ad1.km;
    }

    static Handler _mthif(ad ad1)
    {
        return ad1.kf;
    }

    private void _mthif(RandomAccessFile randomaccessfile, int i)
    {
        try
        {
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(3321);
            randomaccessfile.writeLong(System.currentTimeMillis());
            randomaccessfile.writeInt(i);
            randomaccessfile.writeInt(3321);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (RandomAccessFile randomaccessfile)
        {
            return;
        }
    }

    private void _mthif(StringBuffer stringbuffer)
    {
        if (!ke || kl == null)
        {
            return;
        } else
        {
            _mthif(kl, stringbuffer, e(1));
            return;
        }
    }

    private void _mthif(StringBuffer stringbuffer, File file)
    {
        int i;
        boolean flag;
        flag = true;
        if (!file.exists())
        {
            return;
        }
        try
        {
            file = new GZIPOutputStream(new BufferedOutputStream(new FileOutputStream(file, true)));
        }
        // Misplaced declaration of an exception variable
        catch (StringBuffer stringbuffer)
        {
            return;
        }
        i = 0;
_L2:
        if (i < 3)
        {
            try
            {
                file.write(stringbuffer.toString().getBytes());
            }
            catch (Exception exception)
            {
                flag = false;
            }
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_74;
            }
        }
        file.close();
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void _mthif(StringBuffer stringbuffer, StringBuffer stringbuffer1, String s)
    {
        if (stringbuffer.length() + stringbuffer1.length() < 8190)
        {
            stringbuffer.append(stringbuffer1);
            return;
        } else
        {
            s = new File(s);
            d(stringbuffer.length());
            _mthif(stringbuffer, ((File) (s)));
            kh = true;
            stringbuffer.delete(0, stringbuffer.length());
            stringbuffer.append(stringbuffer1);
            return;
        }
    }

    private boolean _mthif(File file)
    {
        try
        {
            file.createNewFile();
            StringBuffer stringbuffer = new StringBuffer(256);
            stringbuffer.append("C");
            stringbuffer.append("\t");
            stringbuffer.append(Jni.i(az.cn().cl()));
            stringbuffer.append("\n");
            _mthif(stringbuffer, file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return false;
        }
        return true;
    }

    private boolean _mthif(File file, int i)
    {
        String s = null;
        if (i == 2)
        {
            s = cN();
        } else
        if (i == 1)
        {
            s = cH();
        }
        if (s == null)
        {
            return false;
        } else
        {
            return file.renameTo(new File(s));
        }
    }

    private boolean _mthlong(int i)
    {
        Object obj = e(i);
        if (obj != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        File file;
        if (i != 2)
        {
            continue; /* Loop/switch isn't completed */
        }
        file = new File(((String) (obj)));
        if (!file.exists())
        {
            break; /* Loop/switch isn't completed */
        }
        if (file.length() <= 30720L) goto _L4; else goto _L3
_L3:
        if (!_mthif(file, i)) goto _L1; else goto _L5
_L5:
        obj = new File(((String) (obj)));
        if (!((File) (obj)).exists())
        {
            File file1;
            boolean flag;
            try
            {
                flag = _mthif(((File) (obj)));
            }
            catch (Exception exception)
            {
                return false;
            }
            return flag;
        }
_L12:
        if (true) goto _L1; else goto _L4
_L4:
        return true;
        if (i != 1 || !cQ()) goto _L7; else goto _L6
_L6:
        break MISSING_BLOCK_LABEL_93;
_L7:
        break; /* Loop/switch isn't completed */
        file1 = new File(((String) (obj)));
        if (!file1.exists())
        {
            break; /* Loop/switch isn't completed */
        }
        if (file1.length() <= 30720L) goto _L9; else goto _L8
_L8:
        if (!_mthif(file1, i)) goto _L11; else goto _L10
_L11:
        break; /* Loop/switch isn't completed */
_L10:
        obj = new File(((String) (obj)));
        if (!((File) (obj)).exists())
        {
            try
            {
                flag = _mthif(((File) (obj)));
            }
            catch (Exception exception1)
            {
                return false;
            }
            return flag;
        }
          goto _L12
_L9:
        return true;
    }

    private String _mthvoid(int i)
    {
        String s = c._mthelse();
        String s1;
        if (s == null)
        {
            s1 = null;
        } else
        {
            File file;
            if (i == 1)
            {
                s = (new StringBuilder()).append(s).append(File.separator).append("llmis1").toString();
            } else
            if (i == 2)
            {
                s = (new StringBuilder()).append(s).append(File.separator).append("llmis2").toString();
            } else
            {
                return null;
            }
            file = new File(s);
            s1 = s;
            if (!file.exists())
            {
                boolean flag;
                try
                {
                    flag = file.mkdirs();
                }
                catch (Exception exception)
                {
                    return null;
                }
                s1 = s;
                if (!flag)
                {
                    return null;
                }
            }
        }
        return s1;
    }

    public String cG()
    {
        int i;
        i = 0;
        String s = _mthvoid(1);
        String as[] = new String[3];
        as[0] = "lmibaca.dat";
        as[1] = "lmibacb.dat";
        as[2] = "lmibacz.dat";
        String s1;
        File file;
        int j;
        try
        {
            j = as.length;
        }
        catch (Exception exception)
        {
            return null;
        }
_L3:
        if (i >= j) goto _L2; else goto _L1
_L1:
        s1 = as[i];
        file = new File((new StringBuilder()).append(s).append(File.separator).append(s1).toString());
        if (!file.exists())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (file.length() > 0x16800L)
        {
            file.delete();
            continue; /* Loop/switch isn't completed */
        }
        if (file.length() < 4096L)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s1.equals("lmibacz.dat") && ke)
        {
            return null;
        }
        s = (new StringBuilder()).append(s).append(File.separator).append(s1).toString();
        return s;
        i++;
          goto _L3
_L2:
        return null;
    }

    public void cK()
    {
        kf.post(new _cls2());
    }

    public void cO()
    {
        ke = false;
        if (kl != null && kl.length() > 3800 || kh)
        {
            File file = new File(e(1));
            d(kl.length());
            _mthif(kl, file);
            kh = false;
        }
        kl = null;
        cL();
    }

    public void cP()
    {
        kc = false;
        if (kj != null && kj.length() > 3800)
        {
            File file = new File(e(2));
            _mthif(kj, file);
        }
        kj = null;
        cL();
    }

    public void _mthgoto(int i)
    {
        while (ke || !_mthlong(1)) 
        {
            return;
        }
        StringBuffer stringbuffer = new StringBuffer(128);
        ke = true;
        kl = new StringBuffer(8192);
        stringbuffer.append("T1");
        stringbuffer.append("\t");
        stringbuffer.append(i);
        stringbuffer.append("\n");
        _mthif(stringbuffer);
        cF();
        j6 = new _cls1();
        kf.postDelayed(j6, 8000L);
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        int i = sensorevent.sensor.getType();
        StringBuffer stringbuffer = new StringBuffer(256);
        if (i == 1)
        {
            ki = ki + 1;
            stringbuffer.append("A");
            stringbuffer.append("\t");
            stringbuffer.append(sensorevent.values[0]);
            stringbuffer.append("\t");
            stringbuffer.append(sensorevent.values[1]);
            stringbuffer.append("\t");
            stringbuffer.append(sensorevent.values[2]);
            if (ki == 1)
            {
                stringbuffer.append("\t");
                stringbuffer.append(sensorevent.timestamp);
            }
            if (ki >= 14)
            {
                ki = 0;
            }
            stringbuffer.append("\n");
            _mthdo(stringbuffer);
            _mthif(stringbuffer);
        }
        if (i == 2)
        {
            kb = kb + 1;
            stringbuffer.append("M");
            stringbuffer.append("\t");
            stringbuffer.append(sensorevent.values[0]);
            stringbuffer.append("\t");
            stringbuffer.append(sensorevent.values[1]);
            stringbuffer.append("\t");
            stringbuffer.append(sensorevent.values[2]);
            if (kb == 1)
            {
                stringbuffer.append("\t");
                stringbuffer.append(sensorevent.timestamp);
            }
            if (kb > 13)
            {
                kb = 0;
            }
            stringbuffer.append("\n");
            _mthdo(stringbuffer);
        }
    }

    private class _cls3
        implements Runnable
    {

        final ad a;

        public void run()
        {
            a.cP();
        }

        _cls3()
        {
            a = ad.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final ad a;

        public void run()
        {
            ad._mthif(a).removeCallbacks(ad._mthfor(a));
            ad._mthif(a).removeCallbacks(ad._mthdo(a));
            a.cO();
            a.cP();
        }

        _cls2()
        {
            a = ad.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final ad a;

        public void run()
        {
            a.cO();
        }

        _cls1()
        {
            a = ad.this;
            super();
        }
    }

}
