// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.Location;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;

// Referenced classes of package com.baidu.location:
//            ax, n, az, c, 
//            Jni, y

public class w
    implements ax, n
{

    private static final int e0 = 1000;
    private static final int e2 = 100;
    private static int e4 = 0;
    private static w e5 = null;
    private static long e6 = 0L;
    private static final int eI = 12;
    private static StringBuffer eJ = null;
    private static final int eK = 5;
    private static File eL;
    private static final int eM = 3600;
    private static int eN = 0;
    private static long eO = 0L;
    private static long eP = 0L;
    private static boolean eQ = false;
    private static final int eR = 1024;
    private static int eS = 0;
    private static double eT = 0D;
    private static double eU = 0D;
    private static String eV;
    private static int eW = 0;
    private static int eX = 0;
    private static final int eY = 5;
    private static final int eZ = 750;
    private String e1;
    private boolean e3;

    private w(String s)
    {
        e1 = null;
        e3 = true;
        String s1;
        if (s != null)
        {
            s1 = s;
            if (s.length() > 100)
            {
                s1 = s.substring(0, 100);
            }
        } else
        {
            s1 = "";
        }
        e1 = s1;
    }

    private static boolean aH()
    {
        if (eL.exists())
        {
            eL.delete();
        }
        if (!eL.getParentFile().exists())
        {
            eL.getParentFile().mkdirs();
        }
        try
        {
            eL.createNewFile();
            RandomAccessFile randomaccessfile = new RandomAccessFile(eL, "rw");
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(0);
            randomaccessfile.writeInt(0);
            randomaccessfile.writeInt(1);
            randomaccessfile.close();
            aJ();
        }
        catch (IOException ioexception)
        {
            return false;
        }
        return eL.exists();
    }

    private void aI()
    {
        if (eJ != null && eJ.length() >= 100)
        {
            h(eJ.toString());
        }
        aJ();
    }

    private static void aJ()
    {
        eQ = true;
        eJ = null;
        eW = 0;
        e4 = 0;
        eP = 0L;
        eO = 0L;
        e6 = 0L;
        eT = 0.0D;
        eU = 0.0D;
        eN = 0;
        eS = 0;
        eX = 0;
    }

    public static w aK()
    {
        if (e5 == null)
        {
            e5 = new w(az.cn().cj());
        }
        return e5;
    }

    private void aL()
    {
    }

    public static String aM()
    {
        if (eL == null)
        {
            return null;
        }
        if (!eL.exists())
        {
            return null;
        }
        RandomAccessFile randomaccessfile;
        int i;
        int j;
        int k;
        randomaccessfile = new RandomAccessFile(eL, "rw");
        randomaccessfile.seek(0L);
        k = randomaccessfile.readInt();
        j = randomaccessfile.readInt();
        i = randomaccessfile.readInt();
        if (_mthif(k, j, i)) goto _L2; else goto _L1
_L1:
        randomaccessfile.close();
        aH();
        return null;
_L8:
        byte abyte0[];
        String s;
        int l;
        long l1;
        try
        {
            randomaccessfile.close();
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return null;
_L9:
        l1 = 0L + (long)((j - 1) * 1024 + 12);
        randomaccessfile.seek(l1);
        l = randomaccessfile.readInt();
        abyte0 = new byte[l];
        randomaccessfile.seek(l1 + 4L);
        i = 0;
_L4:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0[i] = randomaccessfile.readByte();
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        s = new String(abyte0);
        if (k >= c.ay) goto _L6; else goto _L5
_L5:
        i = j + 1;
_L7:
        randomaccessfile.seek(4L);
        randomaccessfile.writeInt(i);
        randomaccessfile.close();
        return s;
_L6:
        i = c.ay;
        if (j == i)
        {
            i = 1;
        } else
        {
            i = j + 1;
        }
        if (true) goto _L7; else goto _L2
_L2:
        if (j != 0 && j != i) goto _L9; else goto _L8
    }

    private boolean aN()
    {
        if (eL.exists())
        {
            eL.delete();
        }
        aJ();
        return !eL.exists();
    }

    private String _mthfor(int i)
    {
        if (!eL.exists())
        {
            return null;
        }
        Object obj;
        int j;
        obj = new RandomAccessFile(eL, "rw");
        ((RandomAccessFile) (obj)).seek(0L);
        j = ((RandomAccessFile) (obj)).readInt();
        if (_mthif(j, ((RandomAccessFile) (obj)).readInt(), ((RandomAccessFile) (obj)).readInt())) goto _L2; else goto _L1
_L1:
        ((RandomAccessFile) (obj)).close();
        aH();
        return null;
_L5:
        byte abyte0[];
        long l;
        try
        {
            ((RandomAccessFile) (obj)).close();
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return null;
_L6:
        l = 12L + 0L + (long)((i - 1) * 1024);
        ((RandomAccessFile) (obj)).seek(l);
        j = ((RandomAccessFile) (obj)).readInt();
        abyte0 = new byte[j];
        ((RandomAccessFile) (obj)).seek(l + 4L);
        i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0[i] = ((RandomAccessFile) (obj)).readByte();
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        ((RandomAccessFile) (obj)).close();
        obj = new String(abyte0);
        return ((String) (obj));
_L2:
        if (i != 0 && i != j + 1) goto _L6; else goto _L5
    }

    private boolean h(String s)
    {
        while (s == null || !s.startsWith("&nr") || !eL.exists() && !aH()) 
        {
            return false;
        }
        RandomAccessFile randomaccessfile;
        int j;
        int k;
        int l;
        randomaccessfile = new RandomAccessFile(eL, "rw");
        randomaccessfile.seek(0L);
        k = randomaccessfile.readInt();
        j = randomaccessfile.readInt();
        l = randomaccessfile.readInt();
        if (_mthif(k, j, l))
        {
            break MISSING_BLOCK_LABEL_88;
        }
        randomaccessfile.close();
        aH();
        return false;
        if (!c.aZ) goto _L2; else goto _L1
_L1:
        if (k == c.ay) goto _L4; else goto _L3
_L3:
        if (l <= 1) goto _L2; else goto _L5
_L5:
        if (!s.equals(_mthfor(l - 1))) goto _L2; else goto _L6
_L6:
        randomaccessfile.close();
        return false;
_L4:
        if (l != 1)
        {
            break MISSING_BLOCK_LABEL_470;
        }
        int i = c.ay;
_L11:
        if (!s.equals(_mthfor(i))) goto _L2; else goto _L7
_L7:
        randomaccessfile.close();
        return false;
_L2:
        randomaccessfile.seek((long)((l - 1) * 1024 + 12) + 0L);
        if (s.length() <= 750)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        randomaccessfile.close();
        return false;
        try
        {
            s = Jni.i(s);
            i = s.length();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        if (i <= 1020)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        randomaccessfile.close();
        return false;
        randomaccessfile.writeInt(i);
        randomaccessfile.writeBytes(s);
        if (k != 0) goto _L9; else goto _L8
_L8:
        randomaccessfile.seek(0L);
        randomaccessfile.writeInt(1);
        randomaccessfile.writeInt(1);
        randomaccessfile.writeInt(2);
_L10:
        randomaccessfile.close();
        return true;
_L9:
label0:
        {
            if (k >= c.ay - 1)
            {
                break label0;
            }
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(k + 1);
            randomaccessfile.seek(8L);
            randomaccessfile.writeInt(k + 2);
        }
          goto _L10
        if (k != c.ay - 1)
        {
            break MISSING_BLOCK_LABEL_349;
        }
        randomaccessfile.seek(0L);
        randomaccessfile.writeInt(c.ay);
        if (j != 0 && j != 1)
        {
            break MISSING_BLOCK_LABEL_334;
        }
        randomaccessfile.writeInt(2);
        randomaccessfile.seek(8L);
        randomaccessfile.writeInt(1);
          goto _L10
        if (l != j)
        {
            break MISSING_BLOCK_LABEL_397;
        }
        if (l == c.ay)
        {
            i = 1;
        } else
        {
            i = l + 1;
        }
        if (i == c.ay)
        {
            j = 1;
        } else
        {
            j = i + 1;
        }
        randomaccessfile.seek(4L);
        randomaccessfile.writeInt(j);
        randomaccessfile.writeInt(i);
          goto _L10
        if (l == c.ay)
        {
            i = 1;
        } else
        {
            i = l + 1;
        }
        if (i != j)
        {
            break MISSING_BLOCK_LABEL_436;
        }
        if (i == c.ay)
        {
            j = 1;
        } else
        {
            j = i + 1;
        }
        randomaccessfile.seek(4L);
        randomaccessfile.writeInt(j);
        randomaccessfile.seek(8L);
        randomaccessfile.writeInt(i);
          goto _L10
        i = l - 1;
          goto _L11
    }

    private static boolean _mthif(int i, int j, int k)
    {
        boolean flag = true;
        if (i < 0 || i > c.ay)
        {
            flag = false;
        } else
        {
            if (j < 0 || j > i + 1)
            {
                return false;
            }
            if (k < 1 || k > i + 1 || k > c.ay)
            {
                return false;
            }
        }
        return flag;
    }

    private boolean _mthif(Location location, int i, int j)
    {
        if (location == null || !c.az || !e3 || !y.f8)
        {
            return false;
        }
        if (c.av >= 5) goto _L2; else goto _L1
_L1:
        c.av = 5;
_L8:
        if (c.as >= 5) goto _L4; else goto _L3
_L3:
        c.as = 5;
_L6:
        double d;
        double d1;
        long l;
        d = location.getLongitude();
        d1 = location.getLatitude();
        l = location.getTime() / 1000L;
        if (eQ)
        {
            eW = 1;
            eJ = new StringBuffer("");
            eJ.append(String.format(Locale.CHINA, "&nr=%s&traj=%d,%.5f,%.5f|", new Object[] {
                e1, Long.valueOf(l), Double.valueOf(d), Double.valueOf(d1)
            }));
            e4 = eJ.length();
            eP = l;
            eT = d;
            eU = d1;
            eO = (long)Math.floor(d * 100000D + 0.5D);
            e6 = (long)Math.floor(d1 * 100000D + 0.5D);
            eQ = false;
            return true;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (c.av > 1000)
        {
            c.av = 1000;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (c.as > 3600)
        {
            c.as = 3600;
        }
        if (true) goto _L6; else goto _L5
_L5:
        location = new float[1];
        Location.distanceBetween(d1, d, eU, eT, location);
        long l1 = eP;
        if (location[0] >= (float)c.av || l - l1 >= (long)c.as)
        {
            if (eJ == null)
            {
                eW++;
                e4 = 0;
                eJ = new StringBuffer("");
                eJ.append(String.format(Locale.CHINA, "&nr=%s&traj=%d,%.5f,%.5f|", new Object[] {
                    e1, Long.valueOf(l), Double.valueOf(d), Double.valueOf(d1)
                }));
                e4 = eJ.length();
                eP = l;
                eT = d;
                eU = d1;
                eO = (long)Math.floor(d * 100000D + 0.5D);
                e6 = (long)Math.floor(d1 * 100000D + 0.5D);
            } else
            {
                eT = d;
                eU = d1;
                long l2 = (long)Math.floor(d * 100000D + 0.5D);
                long l3 = (long)Math.floor(d1 * 100000D + 0.5D);
                eN = (int)(l - eP);
                eS = (int)(l2 - eO);
                eX = (int)(l3 - e6);
                eJ.append(String.format(Locale.CHINA, "%d,%d,%d|", new Object[] {
                    Integer.valueOf(eN), Integer.valueOf(eS), Integer.valueOf(eX)
                }));
                e4 = eJ.length();
                eP = l;
                eO = l2;
                e6 = l3;
            }
            if (e4 + 15 > 750)
            {
                h(eJ.toString());
                eJ = null;
            }
            if (eW >= c.ay)
            {
                e3 = false;
            }
            return true;
        }
        return false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void aO()
    {
        aI();
    }

    public boolean _mthdo(Location location)
    {
        return _mthif(location, c.av, c.as);
    }

    static 
    {
        eV = "Temp_in.dat";
        eL = new File(I, eV);
        eQ = true;
        eW = 0;
        e4 = 0;
        eP = 0L;
        eO = 0L;
        e6 = 0L;
        eT = 0.0D;
        eU = 0.0D;
        eN = 0;
        eS = 0;
        eX = 0;
    }
}
