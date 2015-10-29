// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.Location;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.baidu.location:
//            ax, n, c, y, 
//            Jni, x, o, ar, 
//            aw, s, l, w

class q
    implements ax, n
{
    private class a extends s
    {

        final q dk;
        private String dl;

        void T()
        {
            cR = c._mthfor();
            cT.add(new BasicNameValuePair("cldc[0]", dl));
        }

        public void ae()
        {
            N();
        }

        void _mthdo(boolean flag)
        {
            if (flag)
            {
                if (cS == null);
            }
        }

        public a(String s1)
        {
            dk = q.this;
            super();
            dl = s1;
            cT = new ArrayList();
        }
    }

    private class b extends s
    {

        final q dm;
        boolean dn;
        private ArrayList dp;
        int dq;
        int dr;

        void T()
        {
            cR = c._mthfor();
            c0 = 2;
            if (dp != null)
            {
                int i = 0;
                while (i < dp.size()) 
                {
                    if (dr == 1)
                    {
                        cT.add(new BasicNameValuePair((new StringBuilder()).append("cldc[").append(i).append("]").toString(), (String)dp.get(i)));
                    } else
                    {
                        cT.add(new BasicNameValuePair((new StringBuilder()).append("cltr[").append(i).append("]").toString(), (String)dp.get(i)));
                    }
                    i++;
                }
                String s1 = String.format(Locale.CHINA, "%d", new Object[] {
                    Long.valueOf(System.currentTimeMillis())
                });
                cT.add(new BasicNameValuePair("trtm", s1));
            }
        }

        public void af()
        {
            if (dn)
            {
                return;
            }
            if (cY > 4 && dq < cY)
            {
                dq = dq + 1;
                return;
            }
            dq = 0;
            dn = true;
            dr = 0;
            if (dp != null && dp.size() >= 1) goto _L2; else goto _L1
_L1:
            int i;
            if (dp == null)
            {
                dp = new ArrayList();
            }
            dr = 0;
            i = 0;
_L9:
            Object obj;
            String s1;
            int j;
            if (dr < 2)
            {
                obj = q.B();
            } else
            {
                obj = null;
            }
            if (obj != null || dr == 1) goto _L4; else goto _L3
_L3:
            dr = 2;
            if (c.aV != 0) goto _L6; else goto _L5
_L5:
            s1 = l.s();
            obj = s1;
            if (s1 == null)
            {
                try
                {
                    obj = com.baidu.location.w.aM();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    obj = null;
                }
            }
_L8:
            if (obj != null) goto _L7; else goto _L2
_L2:
            if (dp == null || dp.size() < 1)
            {
                dp = null;
                dn = false;
                return;
            } else
            {
                N();
                return;
            }
_L6:
            if (c.aV != 1)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            s1 = com.baidu.location.w.aM();
            obj = s1;
            if (s1 != null)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            obj = l.s();
            break MISSING_BLOCK_LABEL_143;
_L4:
            dr = 1;
              goto _L8
_L7:
            dp.add(obj);
            j = i + ((String) (obj)).length();
            i = j;
            if (j < 5120) goto _L9; else goto _L2
        }

        void _mthdo(boolean flag)
        {
            if (flag && cS != null && dp != null)
            {
                dp.clear();
            }
            if (cT != null)
            {
                cT.clear();
            }
            dn = false;
        }

        public b()
        {
            dm = q.this;
            super();
            dn = false;
            dr = 0;
            dq = 0;
            dp = null;
            cT = new ArrayList();
        }
    }


    private static Location b9 = null;
    private static double cA = 0D;
    private static int cB = 0;
    private static final String cC;
    private static Location cD = null;
    private static ArrayList cE = new ArrayList();
    private static final int cG = 2048;
    private static final String cH;
    private static final String cI;
    private static int cJ = 0;
    private static int cK = 0;
    private static ArrayList cL = new ArrayList();
    private static q cM = null;
    private static String cN;
    private static final int ca = 2048;
    private static final int cb = 2048;
    private static double cc = 0D;
    private static double cd = 0D;
    private static int ce = 0;
    private static int cf = 0;
    private static int cg = 0;
    private static int ch = 0;
    private static File ci = null;
    private static final int cj = 128;
    private static ArrayList ck = new ArrayList();
    private static double cl = 0D;
    private static int cm = 0;
    private static int co = 0;
    private static final int cp = 1040;
    private static Location cq = null;
    private static final int cr = 32;
    private static ar.b cs = null;
    private static ArrayList ct = new ArrayList();
    private static int cu = 5;
    private static ArrayList cv = new ArrayList();
    private static final String cw;
    private static int cx = 256;
    private static ArrayList cz = new ArrayList();
    long cF;
    private int cn;
    private b cy;

    private q()
    {
        cy = null;
        cn = 0;
        cF = 0L;
        cy = new b();
        cn = 0;
    }

    public static String B()
    {
        return D();
    }

    public static void C()
    {
    }

    public static String D()
    {
        String s;
        int i;
        s = null;
        i = 1;
_L10:
        if (i >= 5) goto _L2; else goto _L1
_L1:
        s = _mthif(i);
        if (s == null) goto _L4; else goto _L3
_L3:
        String s2 = s;
_L6:
        return s2;
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        _mthif(cE, ch);
        if (cE.size() > 0)
        {
            s = (String)cE.get(0);
            cE.remove(0);
        }
        s2 = s;
        if (s != null) goto _L6; else goto _L5
_L5:
        _mthif(cE, co);
        if (cE.size() > 0)
        {
            s = (String)cE.get(0);
            cE.remove(0);
        }
        s2 = s;
        if (s != null) goto _L6; else goto _L7
_L7:
        _mthif(cE, cJ);
        s2 = s;
        if (cE.size() <= 0) goto _L6; else goto _L8
_L8:
        String s1 = (String)cE.get(0);
        cE.remove(0);
        return s1;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static void F()
    {
    }

    public static void _mthcase(String s)
    {
        File file;
        try
        {
            file = new File(s);
            if (file.exists())
            {
                break MISSING_BLOCK_LABEL_105;
            }
            s = new File(I);
            if (!s.exists())
            {
                s.mkdirs();
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        s = file;
        if (!file.createNewFile())
        {
            s = null;
        }
        s = new RandomAccessFile(s, "rw");
        s.seek(0L);
        s.writeInt(32);
        s.writeInt(2048);
        s.writeInt(1040);
        s.writeInt(0);
        s.writeInt(0);
        s.writeInt(0);
        s.close();
    }

    public static void _mthchar(String s)
    {
        ArrayList arraylist;
        int i;
        i = c.aM;
        if (i == 1)
        {
            arraylist = cL;
        } else
        {
            if (i != 2)
            {
                continue;
            }
            arraylist = cv;
        }
_L2:
        if (arraylist != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        do
        {
            return;
        } while (i != 3);
        arraylist = cE;
        if (true) goto _L2; else goto _L1
_L1:
        if (arraylist.size() <= ce)
        {
            arraylist.add(s);
        }
        if (arraylist.size() >= ce)
        {
            _mthif(i, false);
        }
        while (arraylist.size() > ce) 
        {
            arraylist.remove(0);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static void _mthdo(t.a a1, ar.b b1, Location location, String s)
    {
        ar.b b2;
        Object obj;
        b2 = null;
        obj = null;
        break MISSING_BLOCK_LABEL_6;
        while (true) 
        {
            do
            {
                do
                {
                    do
                    {
                        return;
                    } while (!y.f6 || c.ak == 3 && !_mthif(location, b1) && !_mthif(location, false));
                    if (a1 == null || !a1._mthdo())
                    {
                        break;
                    }
                    b2 = b1;
                    if (!_mthif(location, b1))
                    {
                        b2 = null;
                    }
                    a1 = c._mthif(a1, b2, location, s, 1);
                    if (a1 != null)
                    {
                        _mthgoto(Jni.i(a1));
                        cD = location;
                        cq = location;
                        if (b2 != null)
                        {
                            cs = b2;
                            return;
                        }
                    }
                } while (true);
                if (b1 == null || !b1._mthif() || !_mthif(location, b1))
                {
                    break;
                }
                if (!_mthif(location))
                {
                    a1 = obj;
                }
                a1 = c._mthif(a1, b1, location, s, 2);
                if (a1 != null)
                {
                    _mthelse(Jni.i(a1));
                    b9 = location;
                    cq = location;
                    if (b1 != null)
                    {
                        cs = b1;
                        return;
                    }
                }
            } while (true);
            if (!_mthif(location))
            {
                a1 = null;
            }
            if (!_mthif(location, b1))
            {
                b1 = b2;
            }
            if (a1 != null || b1 != null)
            {
                a1 = c._mthif(a1, b1, location, s, 3);
                if (a1 != null)
                {
                    _mthvoid(Jni.i(a1));
                    cq = location;
                    if (b1 != null)
                    {
                        cs = b1;
                        return;
                    }
                }
            }
        }
    }

    private static void _mthelse(String s)
    {
        _mthchar(s);
    }

    private static void _mthgoto(String s)
    {
        _mthchar(s);
    }

    private static int _mthif(List list, int i)
    {
        if (list == null || i > 256 || i < 0)
        {
            return -1;
        }
        if (ci != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        ci = new File(cN);
        if (ci.exists())
        {
            break MISSING_BLOCK_LABEL_52;
        }
        ci = null;
        return -2;
        RandomAccessFile randomaccessfile;
        randomaccessfile = new RandomAccessFile(ci, "rw");
        if (randomaccessfile.length() >= 1L)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        randomaccessfile.close();
        return -3;
        int k;
        int l;
        int i1;
        int j1;
        long l1;
        randomaccessfile.seek(i);
        l = randomaccessfile.readInt();
        k = randomaccessfile.readInt();
        i1 = randomaccessfile.readInt();
        j1 = randomaccessfile.readInt();
        l1 = randomaccessfile.readLong();
        int j;
        if (!_mthif(l, k, i1, j1, l1) || k < 1)
        {
            byte abyte0[];
            int k1;
            try
            {
                randomaccessfile.close();
            }
            // Misplaced declaration of an exception variable
            catch (List list)
            {
                list.printStackTrace();
                return -5;
            }
            return -4;
        }
        abyte0 = new byte[cB];
        j = cf;
_L2:
        if (j <= 0 || k <= 0)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        randomaccessfile.seek((long)((((l + k) - 1) % i1) * j1) + l1);
        k1 = randomaccessfile.readInt();
        if (k1 <= 0 || k1 >= j1)
        {
            break MISSING_BLOCK_LABEL_304;
        }
        randomaccessfile.read(abyte0, 0, k1);
        if (abyte0[k1 - 1] != 0)
        {
            break MISSING_BLOCK_LABEL_304;
        }
        list.add(new String(abyte0, 0, k1 - 1));
        break MISSING_BLOCK_LABEL_304;
        randomaccessfile.seek(i);
        randomaccessfile.writeInt(l);
        randomaccessfile.writeInt(k);
        randomaccessfile.writeInt(i1);
        randomaccessfile.writeInt(j1);
        randomaccessfile.writeLong(l1);
        randomaccessfile.close();
        i = cf;
        return i - j;
        j--;
        k--;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String _mthif(int i)
    {
        ArrayList arraylist;
        Object obj;
        obj = null;
        String s;
        if (i == 1)
        {
            s = cI;
            arraylist = cL;
        } else
        if (i == 2)
        {
            s = cH;
            arraylist = cv;
        } else
        {
            if (i != 3)
            {
                continue;
            }
            s = cw;
            arraylist = cE;
        }
        for (; arraylist == null; arraylist = cE)
        {
            do
            {
                return null;
            } while (i != 4);
            s = cC;
        }

        if (arraylist.size() < 1)
        {
            _mthif(s, ((List) (arraylist)));
        }
        com/baidu/location/q;
        JVM INSTR monitorenter ;
        i = arraylist.size();
        String s1;
        s1 = obj;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        s1 = (String)arraylist.get(i - 1);
        arraylist.remove(i - 1);
        com/baidu/location/q;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        com/baidu/location/q;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String _mthif(t.a a1, ar.b b1, Location location, String s, String s1)
    {
        if (!y.f6)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(c._mthif(a1, b1, location, s)).append(s1).toString();
        }
    }

    public static void _mthif(double d, double d1, double d2, double d3)
    {
        if (d <= 0.0D)
        {
            d = cd;
        }
        cd = d;
        cA = d1;
        if (d2 <= 20D)
        {
            d2 = cl;
        }
        cl = d2;
        cc = d3;
    }

    public static void _mthif(int i, int j)
    {
    }

    public static void _mthif(int i, int j, boolean flag)
    {
    }

    public static void _mthif(int i, boolean flag)
    {
        if (i != 1) goto _L2; else goto _L1
_L1:
        Object obj = cI;
        if (!flag) goto _L4; else goto _L3
_L3:
        return;
_L4:
        ArrayList arraylist = cL;
_L10:
        File file;
        file = new File(((String) (obj)));
        if (!file.exists())
        {
            _mthcase(((String) (obj)));
        }
        int j;
        int k;
        int l;
        int i1;
        int l1;
        int i2;
        obj = new RandomAccessFile(file, "rw");
        ((RandomAccessFile) (obj)).seek(4L);
        l1 = ((RandomAccessFile) (obj)).readInt();
        i2 = ((RandomAccessFile) (obj)).readInt();
        k = ((RandomAccessFile) (obj)).readInt();
        l = ((RandomAccessFile) (obj)).readInt();
        j = ((RandomAccessFile) (obj)).readInt();
        i1 = arraylist.size();
_L9:
        if (i1 <= cm) goto _L6; else goto _L5
_L5:
        if (flag)
        {
            j++;
        }
        if (k >= l1) goto _L8; else goto _L7
_L7:
        byte abyte1[];
        int j1;
        long l2;
        try
        {
            ((RandomAccessFile) (obj)).seek(i2 * k + 128);
            byte abyte0[] = (new StringBuilder()).append((String)arraylist.get(0)).append('\0').toString().getBytes();
            ((RandomAccessFile) (obj)).writeInt(abyte0.length);
            ((RandomAccessFile) (obj)).write(abyte0, 0, abyte0.length);
            arraylist.remove(0);
        }
        catch (Exception exception)
        {
            return;
        }
        j1 = k + 1;
        k = l;
        l = j1;
        j1 = i1 - 1;
        i1 = l;
        l = k;
        k = i1;
        i1 = j1;
          goto _L9
_L2:
        if (i == 2)
        {
            obj = cH;
            if (flag)
            {
                arraylist = cL;
            } else
            {
                arraylist = cv;
            }
        } else
        {
            if (i != 3)
            {
                continue; /* Loop/switch isn't completed */
            }
            obj = cw;
            if (flag)
            {
                arraylist = cv;
            } else
            {
                arraylist = cE;
            }
        }
          goto _L10
        if (i != 4) goto _L3; else goto _L11
_L11:
        obj = cC;
        if (!flag) goto _L3; else goto _L12
_L12:
        arraylist = cE;
          goto _L10
_L8:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_481;
        }
        l2 = l * i2 + 128;
        ((RandomAccessFile) (obj)).seek(l2);
        abyte1 = (new StringBuilder()).append((String)arraylist.get(0)).append('\0').toString().getBytes();
        ((RandomAccessFile) (obj)).writeInt(abyte1.length);
        ((RandomAccessFile) (obj)).write(abyte1, 0, abyte1.length);
        arraylist.remove(0);
        break MISSING_BLOCK_LABEL_385;
_L14:
        ((RandomAccessFile) (obj)).seek(12L);
        ((RandomAccessFile) (obj)).writeInt(k);
        ((RandomAccessFile) (obj)).writeInt(l);
        ((RandomAccessFile) (obj)).writeInt(j);
        ((RandomAccessFile) (obj)).close();
        if (!i1 || i >= 4) goto _L3; else goto _L13
_L13:
        _mthif(i + 1, true);
        return;
_L6:
        i1 = 0;
          goto _L14
        j1 = l + 1;
        l = j1;
        if (j1 > k)
        {
            l = 0;
        }
        int k1 = k;
        k = l;
        l = k1;
        break MISSING_BLOCK_LABEL_207;
        i1 = 1;
          goto _L14
    }

    public static void _mthif(String s, int i)
    {
    }

    public static void _mthif(String s, int i, boolean flag)
    {
    }

    private static boolean _mthif(int i, int j, int k, int l, long l1)
    {
        while (i < 0 || i >= k || j < 0 || j > k || k < 0 || k > 1024 || l < 128 || l > 1024) 
        {
            return false;
        }
        return true;
    }

    private static boolean _mthif(Location location)
    {
        boolean flag = true;
        if (location == null)
        {
            flag = false;
        } else
        {
            if (cD == null || cq == null)
            {
                cD = location;
                return true;
            }
            double d = location.distanceTo(cD);
            double d1 = c.bd;
            double d2 = c.ba;
            double d3 = c.a8;
            if ((double)location.distanceTo(cq) <= d * d2 + d1 * d * d + d3)
            {
                return false;
            }
        }
        return flag;
    }

    private static boolean _mthif(Location location, ar.b b1)
    {
        while (location == null || b1 == null || b1._fldfor == null || b1._fldfor.isEmpty() || b1._mthdo(cs)) 
        {
            return false;
        }
        if (b9 == null)
        {
            b9 = location;
            return true;
        } else
        {
            return true;
        }
    }

    public static boolean _mthif(Location location, boolean flag)
    {
        return com.baidu.location.x._mthif(cq, location, flag);
    }

    public static boolean _mthif(String s, List list)
    {
        int i;
        int j;
        int k;
        int l;
        boolean flag;
        boolean flag1;
        s = new File(s);
        if (!s.exists())
        {
            return false;
        }
        byte abyte0[];
        int i1;
        long l1;
        try
        {
            s = new RandomAccessFile(s, "rw");
            s.seek(8L);
            i1 = s.readInt();
            i = s.readInt();
            l = s.readInt();
            abyte0 = new byte[cB];
            j = cm;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        j++;
        flag = false;
_L2:
        if (j <= 0 || i <= 0)
        {
            break MISSING_BLOCK_LABEL_188;
        }
        k = l;
        if (i < l)
        {
            k = 0;
        }
        l1 = (i - 1) * i1 + 128;
        try
        {
            s.seek(l1);
            l = s.readInt();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return flag;
        }
        flag1 = flag;
        if (l <= 0)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        flag1 = flag;
        if (l >= i1)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        s.read(abyte0, 0, l);
        flag1 = flag;
        if (abyte0[l - 1] != 0)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        list.add(0, new String(abyte0, 0, l - 1));
        flag1 = true;
        break MISSING_BLOCK_LABEL_220;
        s.seek(12L);
        s.writeInt(i);
        s.writeInt(l);
        s.close();
        return flag;
        j--;
        i--;
        flag = flag1;
        l = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static void _mthvoid(String s)
    {
        _mthchar(s);
    }

    public static void w()
    {
        cm = 0;
        _mthif(1, false);
        _mthif(2, false);
        _mthif(3, false);
        cm = 8;
    }

    public static q x()
    {
        if (cM == null)
        {
            cM = new q();
        }
        return cM;
    }

    public static String y()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        obj2 = null;
        obj1 = null;
        obj3 = new File(cH);
        obj = obj1;
        if (!((File) (obj3)).exists())
        {
            break MISSING_BLOCK_LABEL_118;
        }
        obj = obj2;
        obj3 = new RandomAccessFile(((File) (obj3)), "rw");
        obj = obj2;
        ((RandomAccessFile) (obj3)).seek(20L);
        obj = obj2;
        int i = ((RandomAccessFile) (obj3)).readInt();
        if (i <= 128)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        obj = obj2;
        obj1 = (new StringBuilder()).append("&p1=").append(i).toString();
        obj = obj1;
        ((RandomAccessFile) (obj3)).seek(20L);
        obj = obj1;
        ((RandomAccessFile) (obj3)).writeInt(0);
        obj = obj1;
        ((RandomAccessFile) (obj3)).close();
        return ((String) (obj1));
        obj = obj2;
        ((RandomAccessFile) (obj3)).close();
        obj = obj1;
_L7:
        obj2 = new File(cw);
        obj1 = obj;
        if (!((File) (obj2)).exists()) goto _L2; else goto _L1
_L1:
        obj1 = obj;
        obj2 = new RandomAccessFile(((File) (obj2)), "rw");
        obj1 = obj;
        ((RandomAccessFile) (obj2)).seek(20L);
        obj1 = obj;
        i = ((RandomAccessFile) (obj2)).readInt();
        if (i <= 256) goto _L4; else goto _L3
_L3:
        obj1 = obj;
        obj = (new StringBuilder()).append("&p2=").append(i).toString();
        obj1 = obj;
        ((RandomAccessFile) (obj2)).seek(20L);
        obj1 = obj;
        ((RandomAccessFile) (obj2)).writeInt(0);
        obj1 = obj;
        ((RandomAccessFile) (obj2)).close();
        return ((String) (obj));
        obj;
_L2:
        obj2 = new File(cC);
        if (!((File) (obj2)).exists())
        {
            break MISSING_BLOCK_LABEL_355;
        }
        obj = obj1;
        int j;
        try
        {
            obj2 = new RandomAccessFile(((File) (obj2)), "rw");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            return ((String) (obj));
        }
        obj = obj1;
        ((RandomAccessFile) (obj2)).seek(20L);
        obj = obj1;
        j = ((RandomAccessFile) (obj2)).readInt();
        if (j <= 512)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = obj1;
        obj1 = (new StringBuilder()).append("&p3=").append(j).toString();
        obj = obj1;
        ((RandomAccessFile) (obj2)).seek(20L);
        obj = obj1;
        ((RandomAccessFile) (obj2)).writeInt(0);
        obj = obj1;
        ((RandomAccessFile) (obj2)).close();
        return ((String) (obj1));
_L4:
        obj1 = obj;
        ((RandomAccessFile) (obj2)).close();
        obj1 = obj;
        if (true) goto _L2; else goto _L5
_L5:
        obj = obj1;
        ((RandomAccessFile) (obj2)).close();
        return ((String) (obj1));
        obj1;
        if (true) goto _L7; else goto _L6
_L6:
        return ((String) (obj1));
    }

    public void A()
    {
        cF = System.currentTimeMillis();
        if (!o.ac().ab())
        {
            cn = cn + 1;
            if (cn > 1)
            {
                cn = 0;
                E();
                return;
            }
        }
    }

    public void E()
    {
        if (!ar.bU())
        {
            return;
        } else
        {
            cy.af();
            return;
        }
    }

    public void _mthlong(String s)
    {
        (new a(s)).ae();
    }

    public void z()
    {
        while (!aw._mthdo()._mthint() || cF == 0L || System.currentTimeMillis() - cF <= 0x124f80L) 
        {
            return;
        }
        A();
    }

    static 
    {
        cN = (new StringBuilder()).append(I).append("/yo.dat").toString();
        cI = (new StringBuilder()).append(I).append("/yoh.dat").toString();
        cH = (new StringBuilder()).append(I).append("/yom.dat").toString();
        cw = (new StringBuilder()).append(I).append("/yol.dat").toString();
        cC = (new StringBuilder()).append(I).append("/yor.dat").toString();
        cg = 1024;
        cK = 512;
        cf = 8;
        cm = 8;
        ce = 16;
        cB = 1024;
        cd = 0.0D;
        cA = 0.10000000000000001D;
        cl = 30D;
        cc = 100D;
        co = 0;
        ch = 64;
        cJ = 128;
    }
}
