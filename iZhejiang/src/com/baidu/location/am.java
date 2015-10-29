// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.net.wifi.ScanResult;
import android.os.Environment;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.baidu.location:
//            ax, n, t, ar, 
//            BDLocation

public class am
    implements ax, n
{
    public class a
    {

        final am a;
        public int _flddo;
        public boolean _fldfor;
        public double _fldif;
        public double _fldint;
        public long _fldnew;
        public double _fldtry;

        public a()
        {
            a = am.this;
            super();
        }
    }


    private static am hE;
    private static String hF[];
    private static final String hG = "loc_cache.dat";
    private static final String hH = ";";
    private static final String hJ = ",";
    private static final int hK = 5;
    private static final double hL = 121.31399999999999D;
    private String hI[];

    public am()
    {
        hI = null;
    }

    private double bJ()
    {
        double d1 = 0.0D;
        double d = d1;
        if (hI != null)
        {
            d = d1;
            if (hI.length > 2)
            {
                d = Double.valueOf(hI[2]).doubleValue();
            }
        }
        return d;
    }

    private double bK()
    {
        double d1 = 0.0D;
        double d = d1;
        if (hI != null)
        {
            d = d1;
            if (hI.length > 1)
            {
                d = Double.valueOf(hI[1]).doubleValue() - 121.31399999999999D;
            }
        }
        return d;
    }

    private long bL()
    {
        long l1 = 0L;
        long l = l1;
        if (hI != null)
        {
            l = l1;
            if (hI.length >= 3)
            {
                l = Long.valueOf(hI[3]).longValue();
            }
        }
        return l;
    }

    private boolean bM()
    {
        boolean flag = true;
        Object obj = t.an().ak();
        obj = String.format("%s|%s|%s|%s", new Object[] {
            Integer.valueOf(((t.a) (obj))._flddo), Integer.valueOf(((t.a) (obj))._fldif), Integer.valueOf(((t.a) (obj))._fldfor), Integer.valueOf(((t.a) (obj))._fldtry)
        });
        String s = hF[1];
        if (TextUtils.isEmpty(hF[1]) || !s.equals(obj))
        {
            flag = false;
        }
        return flag;
    }

    private void bO()
    {
        if (hI == null && hF != null)
        {
            String s = hF[0];
            if (!TextUtils.isEmpty(s))
            {
                hI = s.split(",");
            }
        }
    }

    private double bP()
    {
        double d1 = 0.0D;
        double d = d1;
        if (hI != null)
        {
            d = d1;
            if (hI.length > 0)
            {
                d = Double.valueOf(hI[0]).doubleValue() - 121.31399999999999D;
            }
        }
        return d;
    }

    public static am bQ()
    {
        if (hE == null)
        {
            hE = new am();
        }
        return hE;
    }

    public a bN()
    {
        Object obj;
        Exception exception;
        FileInputStream fileinputstream;
        fileinputstream = null;
        exception = null;
        obj = fileinputstream;
        if (!"mounted".equals(Environment.getExternalStorageState())) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj1 = new File((new StringBuilder()).append(I).append(File.separator).append("loc_cache.dat").toString());
        obj = fileinputstream;
        if (!((File) (obj1)).exists()) goto _L2; else goto _L3
_L3:
        obj = exception;
        fileinputstream = new FileInputStream(((File) (obj1)));
        obj = exception;
        byte abyte1[] = new byte[128];
        obj = exception;
        obj1 = new ByteArrayOutputStream();
_L5:
        obj = exception;
        int i = fileinputstream.read(abyte1);
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = exception;
        ((ByteArrayOutputStream) (obj1)).write(abyte1, 0, i);
        if (true) goto _L5; else goto _L4
        exception;
_L2:
        hF = (new String(((byte []) (obj)))).split(";");
        bO();
        obj = new a();
        obj._fldint = bP();
        obj._fldtry = bK();
        obj._fldif = bJ();
        obj._fldfor = bM();
        obj._flddo = bR();
        obj._fldnew = bL();
        return ((a) (obj));
_L4:
        obj = exception;
        byte abyte0[] = ((ByteArrayOutputStream) (obj1)).toByteArray();
        obj = abyte0;
        ((ByteArrayOutputStream) (obj1)).close();
        obj = abyte0;
        fileinputstream.close();
        obj = abyte0;
        if (true) goto _L2; else goto _L6
_L6:
    }

    public int bR()
    {
        int j = 0;
        String as[];
        Object obj;
        Object obj1;
        int i;
        int k;
        if (hF[2] != null)
        {
            as = hF[2].split(",");
        } else
        {
            as = null;
        }
        obj = ar.bW().bS();
        i = j;
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = ((ar.b) (obj))._fldfor;
        i = j;
        if (obj == null) goto _L2; else goto _L3
_L3:
        j = 0;
        i = 0;
_L12:
        if (j >= 5) goto _L2; else goto _L4
_L4:
        obj1 = (ScanResult)((List) (obj)).get(j);
        if (obj1 == null) goto _L6; else goto _L5
_L5:
        obj1 = ((ScanResult) (obj1)).BSSID.replace(":", "");
        k = 0;
_L10:
        if (k >= as.length) goto _L6; else goto _L7
_L7:
        if (!((String) (obj1)).equals(as[k])) goto _L9; else goto _L8
_L8:
        i++;
_L6:
        j++;
        continue; /* Loop/switch isn't completed */
_L9:
        k++;
        if (true) goto _L10; else goto _L2
_L2:
        return i;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public void _mthnew(BDLocation bdlocation)
    {
        int i = 0;
        if (bdlocation.getLocType() == 161)
        {
            String s = String.format("%s,%s,%s,%d", new Object[] {
                Double.valueOf(bdlocation.getLongitude() + 121.31399999999999D), Double.valueOf(bdlocation.getLatitude() + 121.31399999999999D), Float.valueOf(bdlocation.getRadius()), Long.valueOf(System.currentTimeMillis())
            });
            bdlocation = t.an().ak();
            Object obj;
            Object obj2;
            Object obj3;
            if (bdlocation._mthfor())
            {
                bdlocation = String.format("%s|%s|%s|%s", new Object[] {
                    Integer.valueOf(((t.a) (bdlocation))._flddo), Integer.valueOf(((t.a) (bdlocation))._fldif), Integer.valueOf(((t.a) (bdlocation))._fldfor), Integer.valueOf(((t.a) (bdlocation))._fldtry)
                });
            } else
            {
                bdlocation = null;
            }
            obj2 = null;
            obj3 = ar.bW().bS();
            obj = obj2;
            if (obj3 != null)
            {
                obj3 = ((ar.b) (obj3))._fldfor;
                obj = obj2;
                if (obj3 != null)
                {
                    obj = new ArrayList();
                    for (; i < 5; i++)
                    {
                        obj2 = (ScanResult)((List) (obj3)).get(i);
                        if (obj2 != null)
                        {
                            ((List) (obj)).add(((ScanResult) (obj2)).BSSID.replace(":", ""));
                        }
                    }

                    obj = TextUtils.join(",", ((Iterable) (obj)));
                }
            }
            obj2 = new StringBuilder();
            ((StringBuilder) (obj2)).append(s).append(";").append(bdlocation).append(";").append(((String) (obj)));
            bdlocation = ((StringBuilder) (obj2)).toString();
            if ("mounted".equals(Environment.getExternalStorageState()))
            {
                Object obj1 = new File((new StringBuilder()).append(I).append(File.separator).append("loc_cache.dat").toString());
                File file = ((File) (obj1)).getParentFile();
                if (!file.exists())
                {
                    file.mkdirs();
                }
                try
                {
                    obj1 = new FileOutputStream(((File) (obj1)));
                    ((FileOutputStream) (obj1)).write(bdlocation.getBytes());
                    ((FileOutputStream) (obj1)).close();
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (BDLocation bdlocation)
                {
                    return;
                }
            }
        }
    }
}
