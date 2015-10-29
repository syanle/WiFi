// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class Base64
{
    public static class InputStream extends FilterInputStream
    {

        private byte alphabet[];
        private boolean breakLines;
        private byte buffer[];
        private int bufferLength;
        private byte decodabet[];
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public int read()
            throws IOException
        {
            if (position >= 0) goto _L2; else goto _L1
_L1:
            if (!encode) goto _L4; else goto _L3
_L3:
            byte abyte0[];
            int i;
            int j;
            abyte0 = new byte[3];
            j = 0;
            i = 0;
_L16:
            if (i < 3) goto _L6; else goto _L5
_L5:
            if (j <= 0) goto _L8; else goto _L7
_L7:
            Base64.encode3to4(abyte0, 0, j, buffer, 0, options);
            position = 0;
            numSigBytes = 4;
              goto _L2
_L6:
            l = in.read();
            k = j;
            if (l >= 0)
            {
                abyte0[i] = (byte)l;
                k = j + 1;
            }
_L10:
            i++;
            j = k;
            continue; /* Loop/switch isn't completed */
            ioexception;
            k = j;
            if (i != 0) goto _L10; else goto _L9
_L9:
            throw ioexception;
_L8:
            return -1;
_L4:
            abyte0 = new byte[4];
            i = 0;
_L14:
            if (i < 4) goto _L12; else goto _L11
_L11:
            if (i == 4)
            {
                numSigBytes = Base64.decode4to3(abyte0, 0, buffer, 0, options);
                position = 0;
            } else
            if (i == 0)
            {
                return -1;
            } else
            {
                throw new IOException("Improperly padded Base64 input.");
            }
              goto _L2
_L12:
            do
            {
                j = in.read();
            } while (j >= 0 && decodabet[j & 0x7f] <= -5);
            if (j < 0) goto _L11; else goto _L13
_L13:
            abyte0[i] = (byte)j;
            i++;
              goto _L14
_L2:
            if (position >= 0)
            {
                IOException ioexception;
                int k;
                int l;
                if (position >= numSigBytes)
                {
                    return -1;
                }
                if (encode && breakLines && lineLength >= 76)
                {
                    lineLength = 0;
                    return 10;
                }
                lineLength = lineLength + 1;
                abyte0 = buffer;
                i = position;
                position = i + 1;
                i = abyte0[i];
                if (position >= bufferLength)
                {
                    position = -1;
                }
                return i & 0xff;
            }
            throw new IOException("Error in Base64 code reading stream.");
            if (true) goto _L16; else goto _L15
_L15:
        }

        public int read(byte abyte0[], int i, int j)
            throws IOException
        {
            int k = 0;
_L5:
            if (k < j) goto _L2; else goto _L1
_L1:
            return k;
_L2:
            int l = read();
            if (l < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            abyte0[i + k] = (byte)l;
            k++;
            continue; /* Loop/switch isn't completed */
            if (k != 0) goto _L1; else goto _L3
_L3:
            return -1;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public InputStream(java.io.InputStream inputstream)
        {
            this(inputstream, 0);
        }

        public InputStream(java.io.InputStream inputstream, int i)
        {
            boolean flag1 = true;
            super(inputstream);
            int j;
            boolean flag;
            if ((i & 8) != 8)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            breakLines = flag;
            if ((i & 1) == 1)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            encode = flag;
            if (encode)
            {
                j = 4;
            } else
            {
                j = 3;
            }
            bufferLength = j;
            buffer = new byte[bufferLength];
            position = -1;
            lineLength = 0;
            options = i;
            alphabet = Base64.getAlphabet(i);
            decodabet = Base64.getDecodabet(i);
        }
    }

    public static class OutputStream extends FilterOutputStream
    {

        private byte alphabet[];
        private byte b4[];
        private boolean breakLines;
        private byte buffer[];
        private int bufferLength;
        private byte decodabet[];
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public void close()
            throws IOException
        {
            flushBase64();
            super.close();
            buffer = null;
            out = null;
        }

        public void flushBase64()
            throws IOException
        {
label0:
            {
                if (position > 0)
                {
                    if (!encode)
                    {
                        break label0;
                    }
                    out.write(Base64.encode3to4(b4, buffer, position, options));
                    position = 0;
                }
                return;
            }
            throw new IOException("Base64 input not properly padded.");
        }

        public void resumeEncoding()
        {
            suspendEncoding = false;
        }

        public void suspendEncoding()
            throws IOException
        {
            flushBase64();
            suspendEncoding = true;
        }

        public void write(int i)
            throws IOException
        {
            if (!suspendEncoding) goto _L2; else goto _L1
_L1:
            super.out.write(i);
_L4:
            return;
_L2:
            if (!encode)
            {
                break; /* Loop/switch isn't completed */
            }
            byte abyte0[] = buffer;
            int j = position;
            position = j + 1;
            abyte0[j] = (byte)i;
            if (position >= bufferLength)
            {
                out.write(Base64.encode3to4(b4, buffer, bufferLength, options));
                lineLength = lineLength + 4;
                if (breakLines && lineLength >= 76)
                {
                    out.write(10);
                    lineLength = 0;
                }
                position = 0;
                return;
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (decodabet[i & 0x7f] <= -5)
            {
                continue; /* Loop/switch isn't completed */
            }
            byte abyte1[] = buffer;
            int k = position;
            position = k + 1;
            abyte1[k] = (byte)i;
            if (position < bufferLength) goto _L4; else goto _L5
_L5:
            i = Base64.decode4to3(buffer, 0, b4, 0, options);
            out.write(b4, 0, i);
            position = 0;
            return;
            if (decodabet[i & 0x7f] == -5) goto _L4; else goto _L6
_L6:
            throw new IOException("Invalid character in Base64 data.");
        }

        public void write(byte abyte0[], int i, int j)
            throws IOException
        {
            if (suspendEncoding)
            {
                super.out.write(abyte0, i, j);
            } else
            {
                int k = 0;
                while (k < j) 
                {
                    write(abyte0[i + k]);
                    k++;
                }
            }
        }

        public OutputStream(java.io.OutputStream outputstream)
        {
            this(outputstream, 1);
        }

        public OutputStream(java.io.OutputStream outputstream, int i)
        {
            boolean flag1 = true;
            super(outputstream);
            int j;
            boolean flag;
            if ((i & 8) != 8)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            breakLines = flag;
            if ((i & 1) == 1)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            encode = flag;
            if (encode)
            {
                j = 3;
            } else
            {
                j = 4;
            }
            bufferLength = j;
            buffer = new byte[bufferLength];
            position = 0;
            lineLength = 0;
            suspendEncoding = false;
            b4 = new byte[4];
            options = i;
            alphabet = Base64.getAlphabet(i);
            decodabet = Base64.getDecodabet(i);
        }
    }


    public static final int DECODE = 0;
    public static final int DONT_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "UTF-8";
    public static final int URL_SAFE = 16;
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte _ORDERED_ALPHABET[] = {
        45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 
        57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 
        74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 
        84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 
        99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 
        109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 
        119, 120, 121, 122
    };
    private static final byte _ORDERED_DECODABET[];
    private static final byte _STANDARD_ALPHABET[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte _STANDARD_DECODABET[];
    private static final byte _URL_SAFE_ALPHABET[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte _URL_SAFE_DECODABET[];

    private Base64()
    {
    }

    public static byte[] decode(String s)
    {
        return decode(s, 0);
    }

    public static byte[] decode(String s, int i)
    {
        Object obj1;
        Object obj2;
        byte abyte1[];
        Object obj3;
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            s = s.getBytes();
            continue; /* Loop/switch isn't completed */
        }
        s = abyte0;
_L13:
        abyte1 = decode(((byte []) (s)), 0, s.length, i);
        obj2 = abyte1;
        if (abyte1 == null) goto _L2; else goto _L1
_L1:
        obj2 = abyte1;
        if (abyte1.length < 4) goto _L2; else goto _L3
_L3:
        obj2 = abyte1;
        if (35615 != (abyte1[0] & 0xff | abyte1[1] << 8 & 0xff00)) goto _L2; else goto _L4
_L4:
        obj1 = null;
        Object obj4 = null;
        obj2 = null;
        obj3 = null;
        Object obj5 = null;
        Object obj6 = null;
        byte abyte2[] = new byte[2048];
        Object obj;
        Exception exception;
        try
        {
            s = new ByteArrayOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            obj = obj4;
            s = obj6;
            obj1 = obj3;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            s = obj5;
        }
        try
        {
_L8:
            obj = new ByteArrayInputStream(abyte1);
        }
        catch (IOException ioexception)
        {
            ioexception = obj4;
            obj1 = obj3;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = new GZIPInputStream(((java.io.InputStream) (obj)));
_L7:
        i = ((GZIPInputStream) (obj1)).read(abyte2);
        if (i >= 0) goto _L6; else goto _L5
_L5:
        obj2 = s.toByteArray();
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((GZIPInputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((ByteArrayInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return ((byte []) (obj2));
        }
_L2:
        return ((byte []) (obj2));
_L6:
        s.write(abyte2, 0, i);
          goto _L7
        obj2;
_L11:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((GZIPInputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((ByteArrayInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return abyte1;
        }
        return abyte1;
_L9:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((GZIPInputStream) (obj2)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((ByteArrayInputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        throw obj;
        exception;
        obj1 = obj;
        obj = exception;
        continue; /* Loop/switch isn't completed */
        exception;
        obj2 = obj1;
        obj1 = obj;
        obj = exception;
        if (true) goto _L9; else goto _L8
        IOException ioexception1;
        ioexception1;
        ioexception1 = obj3;
        if (true) goto _L11; else goto _L10
_L10:
        if (true) goto _L13; else goto _L12
_L12:
    }

    public static byte[] decode(byte abyte0[], int i, int j, int k)
    {
        byte abyte1[];
        byte abyte2[];
        byte abyte3[];
        int l;
        int i1;
        int j1;
        abyte2 = getDecodabet(k);
        abyte1 = new byte[(j * 3) / 4];
        i1 = 0;
        abyte3 = new byte[4];
        j1 = i;
        l = 0;
_L5:
        if (j1 < i + j) goto _L2; else goto _L1
_L1:
        abyte0 = new byte[i1];
        System.arraycopy(abyte1, 0, abyte0, 0, i1);
        return abyte0;
_L2:
        byte byte0;
        int k1;
        byte0 = (byte)(abyte0[j1] & 0x7f);
        k1 = abyte2[byte0];
        if (k1 < -5)
        {
            break; /* Loop/switch isn't completed */
        }
        if (k1 < -1)
        {
            break MISSING_BLOCK_LABEL_196;
        }
        int l1 = l + 1;
        abyte3[l] = byte0;
        l = l1;
        k1 = i1;
        if (l1 <= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = i1 + decode4to3(abyte3, 0, abyte1, i1, k);
        l = 0;
        i1 = k1;
        if (byte0 == 61) goto _L1; else goto _L3
_L3:
        j1++;
        i1 = k1;
        if (true) goto _L5; else goto _L4
_L4:
        System.err.println((new StringBuilder("Bad Base64 input character at ")).append(j1).append(": ").append(abyte0[j1]).append("(decimal)").toString());
        return null;
        k1 = i1;
          goto _L3
    }

    private static int decode4to3(byte abyte0[], int i, byte abyte1[], int j, int k)
    {
        byte abyte2[] = getDecodabet(k);
        if (abyte0[i + 2] == 61)
        {
            abyte1[j] = (byte)(((abyte2[abyte0[i]] & 0xff) << 18 | (abyte2[abyte0[i + 1]] & 0xff) << 12) >>> 16);
            return 1;
        }
        if (abyte0[i + 3] == 61)
        {
            i = (abyte2[abyte0[i]] & 0xff) << 18 | (abyte2[abyte0[i + 1]] & 0xff) << 12 | (abyte2[abyte0[i + 2]] & 0xff) << 6;
            abyte1[j] = (byte)(i >>> 16);
            abyte1[j + 1] = (byte)(i >>> 8);
            return 2;
        } else
        {
            i = (abyte2[abyte0[i]] & 0xff) << 18 | (abyte2[abyte0[i + 1]] & 0xff) << 12 | (abyte2[abyte0[i + 2]] & 0xff) << 6 | abyte2[abyte0[i + 3]] & 0xff;
            abyte1[j] = (byte)(i >> 16);
            abyte1[j + 1] = (byte)(i >> 8);
            abyte1[j + 2] = (byte)i;
            return 3;
        }
    }

    public static void decodeFileToFile(String s, String s1)
    {
        Object obj;
        byte abyte0[];
        abyte0 = decodeFromFile(s);
        s = null;
        obj = null;
        s1 = new BufferedOutputStream(new FileOutputStream(s1));
        s1.write(abyte0);
        try
        {
            s1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        s;
        s1 = ((String) (obj));
        obj = s;
_L4:
        s = s1;
        ((IOException) (obj)).printStackTrace();
        try
        {
            s1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        s1;
_L2:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        throw s1;
        obj;
        s = s1;
        s1 = ((String) (obj));
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] decodeFromFile(String s)
    {
        Object obj;
        byte abyte0[];
        Object obj1;
        Object obj2;
        Object obj3;
        obj2 = null;
        obj3 = null;
        abyte0 = null;
        obj1 = null;
        obj = abyte0;
        File file = new File(s);
        int i;
        i = 0;
        obj = abyte0;
        if (file.length() <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        obj = abyte0;
        System.err.println((new StringBuilder("File is too big for this convenience method (")).append(file.length()).append(" bytes).").toString());
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        obj = abyte0;
        byte abyte1[] = new byte[(int)file.length()];
        obj = abyte0;
        abyte0 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
_L3:
        obj = obj2;
        int j = abyte0.read(abyte1, i, 4096);
        if (j >= 0) goto _L2; else goto _L1
_L1:
        obj = obj2;
        obj1 = new byte[i];
        obj = obj1;
        System.arraycopy(abyte1, 0, obj1, 0, i);
        abyte0.close();
        abyte0 = ((byte []) (obj1));
_L4:
        return abyte0;
_L2:
        i += j;
          goto _L3
        obj;
        abyte0 = obj3;
_L6:
        obj = obj1;
        System.err.println((new StringBuilder("Error decoding from file ")).append(s).toString());
        try
        {
            ((InputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
          goto _L4
        s;
_L5:
        try
        {
            ((InputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        throw s;
        s;
        abyte0 = ((byte []) (obj1));
          goto _L4
        s;
        obj = abyte0;
          goto _L5
        IOException ioexception;
        ioexception;
        ioexception = abyte0;
        abyte0 = ((byte []) (obj));
          goto _L6
    }

    public static boolean decodeToFile(String s, String s1)
    {
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
        s1 = new OutputStream(new FileOutputStream(s1), 0);
        s1.write(s.getBytes("UTF-8"));
        try
        {
            s1.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return true;
        }
        return true;
        s;
        s = obj1;
_L4:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return false;
        s;
        s1 = obj;
_L2:
        try
        {
            s1.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s1) { }
        throw s;
        s;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        s = s1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Object decodeToObject(String s)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        s = decode(s);
        obj6 = null;
        obj = null;
        obj5 = null;
        obj4 = null;
        obj1 = null;
        obj2 = null;
        obj3 = null;
        s = new ByteArrayInputStream(s);
        try
        {
            obj = new ObjectInputStream(s);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj2)
        {
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj2)
        {
            obj3 = obj4;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = s;
            obj1 = obj2;
            s = ((String) (obj3));
            continue; /* Loop/switch isn't completed */
        }
        obj1 = ((ObjectInputStream) (obj)).readObject();
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((ObjectInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return obj1;
        }
        return obj1;
        obj2;
        s = obj5;
_L6:
        obj = s;
        obj1 = obj3;
        ((IOException) (obj2)).printStackTrace();
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((ObjectInputStream) (obj3)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return null;
        obj2;
        obj3 = obj4;
        s = obj6;
_L4:
        obj = s;
        obj1 = obj3;
        ((ClassNotFoundException) (obj2)).printStackTrace();
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        try
        {
            ((ObjectInputStream) (obj3)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return null;
        s;
_L2:
        try
        {
            ((ByteArrayInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        try
        {
            ((ObjectInputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        throw s;
        obj2;
        obj1 = obj;
        obj = s;
        s = ((String) (obj2));
        if (true) goto _L2; else goto _L1
_L1:
        break MISSING_BLOCK_LABEL_41;
        obj2;
        obj3 = obj;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_41;
        obj2;
        obj3 = obj;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static byte[] encode3to4(byte abyte0[], int i, int j, byte abyte1[], int k, int l)
    {
        int j1 = 0;
        byte abyte2[] = getAlphabet(l);
        int i1;
        if (j > 0)
        {
            l = (abyte0[i] << 24) >>> 8;
        } else
        {
            l = 0;
        }
        if (j > 1)
        {
            i1 = (abyte0[i + 1] << 24) >>> 16;
        } else
        {
            i1 = 0;
        }
        if (j > 2)
        {
            j1 = (abyte0[i + 2] << 24) >>> 24;
        }
        i = i1 | l | j1;
        switch (j)
        {
        default:
            return abyte1;

        case 3: // '\003'
            abyte1[k] = abyte2[i >>> 18];
            abyte1[k + 1] = abyte2[i >>> 12 & 0x3f];
            abyte1[k + 2] = abyte2[i >>> 6 & 0x3f];
            abyte1[k + 3] = abyte2[i & 0x3f];
            return abyte1;

        case 2: // '\002'
            abyte1[k] = abyte2[i >>> 18];
            abyte1[k + 1] = abyte2[i >>> 12 & 0x3f];
            abyte1[k + 2] = abyte2[i >>> 6 & 0x3f];
            abyte1[k + 3] = 61;
            return abyte1;

        case 1: // '\001'
            abyte1[k] = abyte2[i >>> 18];
            abyte1[k + 1] = abyte2[i >>> 12 & 0x3f];
            abyte1[k + 2] = 61;
            abyte1[k + 3] = 61;
            return abyte1;
        }
    }

    private static byte[] encode3to4(byte abyte0[], byte abyte1[], int i, int j)
    {
        encode3to4(abyte1, 0, i, abyte0, 0, j);
        return abyte0;
    }

    public static String encodeBytes(byte abyte0[])
    {
        return encodeBytes(abyte0, 0, abyte0.length, 0);
    }

    public static String encodeBytes(byte abyte0[], int i)
    {
        return encodeBytes(abyte0, 0, abyte0.length, i);
    }

    public static String encodeBytes(byte abyte0[], int i, int j)
    {
        return encodeBytes(abyte0, i, j, 0);
    }

    public static String encodeBytes(byte abyte0[], int i, int j, int k)
    {
        if ((k & 2) != 2) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        byte abyte2[];
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        abyte2 = null;
        obj = null;
        obj3 = null;
        obj5 = null;
        obj4 = null;
        obj1 = null;
        obj7 = null;
        obj6 = null;
        byte abyte1[] = new ByteArrayOutputStream();
        Object obj2;
        int l;
        int i1;
        boolean flag;
        int j1;
        int k1;
        int l1;
        try
        {
            obj = new OutputStream(abyte1, k | 1);
        }
        catch (IOException ioexception)
        {
            abyte0 = abyte1;
            abyte1 = ioexception;
            ioexception = obj6;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = abyte1;
            abyte1 = obj7;
            obj3 = obj5;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
_L3:
            obj1 = new GZIPOutputStream(((java.io.OutputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            abyte0 = abyte1;
            abyte1 = ((byte []) (obj1));
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj1 = abyte1;
            abyte1 = ((byte []) (obj));
            obj = obj1;
            obj3 = obj5;
            continue; /* Loop/switch isn't completed */
        }
        ((GZIPOutputStream) (obj1)).write(abyte0, i, j);
        ((GZIPOutputStream) (obj1)).close();
        try
        {
            ((GZIPOutputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        try
        {
            ((OutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        try
        {
            abyte1.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        try
        {
            abyte0 = new String(abyte1.toByteArray(), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return new String(abyte1.toByteArray());
        }
        return abyte0;
        abyte1;
        abyte0 = ((byte []) (obj));
        obj = obj6;
_L6:
        obj1 = obj;
        abyte2 = abyte0;
        obj3 = obj4;
        abyte1.printStackTrace();
        try
        {
            ((GZIPOutputStream) (obj4)).close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte1[]) { }
        try
        {
            ((OutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte1[]) { }
        try
        {
            abyte0.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        return null;
        abyte0;
        obj = abyte2;
        abyte1 = ((byte []) (obj1));
_L4:
        try
        {
            ((GZIPOutputStream) (obj3)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        try
        {
            abyte1.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte1[]) { }
        try
        {
            ((ByteArrayOutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte1[]) { }
        throw abyte0;
_L2:
        if ((k & 8) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j1 = (j * 4) / 3;
        if (j % 3 > 0)
        {
            l = 4;
        } else
        {
            l = 0;
        }
        if (flag)
        {
            i1 = j1 / 76;
        } else
        {
            i1 = 0;
        }
        abyte1 = new byte[i1 + (j1 + l)];
        j1 = 0;
        l = 0;
        i1 = 0;
        do
        {
            if (j1 >= j - 2)
            {
                i1 = l;
                if (j1 < j)
                {
                    encode3to4(abyte0, j1 + i, j - j1, abyte1, l, k);
                    i1 = l + 4;
                }
                try
                {
                    abyte0 = new String(abyte1, 0, i1, "UTF-8");
                }
                // Misplaced declaration of an exception variable
                catch (byte abyte0[])
                {
                    return new String(abyte1, 0, i1);
                }
                return abyte0;
            }
            encode3to4(abyte0, j1 + i, 3, abyte1, l, k);
            l1 = i1 + 4;
            k1 = l;
            i1 = l1;
            if (flag)
            {
                k1 = l;
                i1 = l1;
                if (l1 == 76)
                {
                    abyte1[l + 4] = 10;
                    k1 = l + 1;
                    i1 = 0;
                }
            }
            j1 += 3;
            l = k1 + 4;
        } while (true);
        abyte0;
        obj2 = abyte1;
        abyte1 = ((byte []) (obj));
        obj = obj2;
        obj3 = obj1;
        if (true) goto _L4; else goto _L3
        IOException ioexception1;
        ioexception1;
        abyte0 = abyte1;
        abyte1 = ioexception1;
        obj4 = obj1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void encodeFileToFile(String s, String s1)
    {
        Object obj;
        String s2;
        s2 = encodeFromFile(s);
        s = null;
        obj = null;
        s1 = new BufferedOutputStream(new FileOutputStream(s1));
        s1.write(s2.getBytes("US-ASCII"));
        try
        {
            s1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        s;
        s1 = ((String) (obj));
        obj = s;
_L4:
        s = s1;
        ((IOException) (obj)).printStackTrace();
        try
        {
            s1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        s1;
_L2:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        throw s1;
        obj;
        s = s1;
        s1 = ((String) (obj));
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String encodeFromFile(String s)
    {
        Object obj;
        InputStream inputstream;
        Object obj1;
        inputstream = null;
        obj1 = null;
        obj = inputstream;
        File file = new File(s);
        obj = inputstream;
        byte abyte0[] = new byte[Math.max((int)((double)file.length() * 1.3999999999999999D), 40)];
        int i;
        i = 0;
        obj = inputstream;
        inputstream = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
_L2:
        int j = inputstream.read(abyte0, i, 4096);
        if (j >= 0)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        obj = new String(abyte0, 0, i, "UTF-8");
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return ((String) (obj));
        }
        return ((String) (obj));
        i += j;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        inputstream = obj1;
_L6:
        obj = inputstream;
        System.err.println((new StringBuilder("Error encoding from file ")).append(s).toString());
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return null;
        s;
_L4:
        try
        {
            ((InputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        throw s;
        s;
        obj = inputstream;
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception;
        ioexception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String encodeObject(Serializable serializable)
    {
        return encodeObject(serializable, 0);
    }

    public static String encodeObject(Serializable serializable, int i)
    {
        Object obj2;
        Object obj3;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        obj5 = null;
        obj13 = null;
        obj3 = null;
        obj15 = null;
        obj11 = null;
        obj7 = null;
        obj10 = null;
        obj17 = null;
        obj14 = null;
        obj9 = null;
        obj2 = null;
        obj6 = null;
        obj8 = null;
        obj18 = null;
        obj16 = null;
        obj12 = null;
        Object obj = new ByteArrayOutputStream();
        Object obj1;
        try
        {
            obj1 = new OutputStream(((java.io.OutputStream) (obj)), i | 1);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            serializable = ((Serializable) (obj));
            obj = obj11;
            obj8 = obj9;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            serializable = obj15;
            obj1 = obj8;
            obj7 = obj10;
            continue; /* Loop/switch isn't completed */
        }
        if ((i & 2) != 2) goto _L2; else goto _L1
_L1:
        obj5 = obj18;
        obj6 = obj17;
        obj7 = obj16;
        obj8 = obj14;
        Object obj4;
        try
        {
            obj2 = new GZIPOutputStream(((java.io.OutputStream) (obj1)));
        }
        catch (IOException ioexception)
        {
            serializable = ((Serializable) (obj));
            obj = obj1;
            obj1 = ioexception;
            ioexception = ((IOException) (obj7));
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            serializable = ((Serializable) (obj1));
            obj1 = obj5;
            obj7 = obj6;
            continue; /* Loop/switch isn't completed */
        }
        obj3 = new ObjectOutputStream(((java.io.OutputStream) (obj2)));
_L4:
        obj5 = obj2;
        obj6 = obj3;
        obj7 = obj2;
        obj8 = obj3;
        ((ObjectOutputStream) (obj3)).writeObject(serializable);
        try
        {
            ((ObjectOutputStream) (obj3)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        try
        {
            ((GZIPOutputStream) (obj2)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        try
        {
            ((java.io.OutputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        try
        {
            ((ByteArrayOutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        try
        {
            serializable = new String(((ByteArrayOutputStream) (obj)).toByteArray(), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable)
        {
            return new String(((ByteArrayOutputStream) (obj)).toByteArray());
        }
        return serializable;
_L2:
        obj5 = obj18;
        obj6 = obj17;
        obj7 = obj16;
        obj8 = obj14;
        obj3 = new ObjectOutputStream(((java.io.OutputStream) (obj1)));
        obj2 = obj12;
        if (true) goto _L4; else goto _L3
_L3:
        obj1;
        obj8 = obj9;
        serializable = obj13;
        obj = obj11;
_L8:
        obj3 = obj;
        obj5 = serializable;
        obj6 = obj2;
        obj7 = obj8;
        ((IOException) (obj1)).printStackTrace();
        try
        {
            ((ObjectOutputStream) (obj8)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        try
        {
            ((GZIPOutputStream) (obj2)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        try
        {
            ((java.io.OutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        try
        {
            serializable.close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        return null;
        obj2;
        obj1 = obj6;
        obj = obj5;
        serializable = ((Serializable) (obj3));
_L6:
        try
        {
            ((ObjectOutputStream) (obj7)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj4) { }
        try
        {
            ((GZIPOutputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        try
        {
            serializable.close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        try
        {
            ((ByteArrayOutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable) { }
        throw obj2;
        obj4;
        serializable = ((Serializable) (obj1));
        obj1 = obj2;
        obj7 = obj10;
        obj2 = obj4;
        if (true) goto _L6; else goto _L5
_L5:
        break MISSING_BLOCK_LABEL_68;
        IOException ioexception1;
        ioexception1;
        serializable = ((Serializable) (obj));
        obj = obj1;
        obj1 = ioexception1;
        obj8 = obj9;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static boolean encodeToFile(byte abyte0[], String s)
    {
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
        s = new OutputStream(new FileOutputStream(s), 1);
        s.write(abyte0);
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return true;
        }
        return true;
        abyte0;
        abyte0 = obj1;
_L4:
        try
        {
            abyte0.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return false;
        }
        return false;
        abyte0;
        s = obj;
_L2:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        throw abyte0;
        abyte0;
        if (true) goto _L2; else goto _L1
_L1:
        abyte0;
        abyte0 = s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static final byte[] getAlphabet(int i)
    {
        if ((i & 0x10) == 16)
        {
            return _URL_SAFE_ALPHABET;
        }
        if ((i & 0x20) == 32)
        {
            return _ORDERED_ALPHABET;
        } else
        {
            return _STANDARD_ALPHABET;
        }
    }

    private static final byte[] getDecodabet(int i)
    {
        if ((i & 0x10) == 16)
        {
            return _URL_SAFE_DECODABET;
        }
        if ((i & 0x20) == 32)
        {
            return _ORDERED_DECODABET;
        } else
        {
            return _STANDARD_DECODABET;
        }
    }

    public static final void main(String args[])
    {
        if (args.length < 3)
        {
            usage("Not enough arguments.");
            return;
        }
        String s = args[0];
        String s1 = args[1];
        args = args[2];
        if (s.equals("-e"))
        {
            encodeFileToFile(s1, args);
            return;
        }
        if (s.equals("-d"))
        {
            decodeFileToFile(s1, args);
            return;
        } else
        {
            usage((new StringBuilder("Unknown flag: ")).append(s).toString());
            return;
        }
    }

    private static final void usage(String s)
    {
        System.err.println(s);
        System.err.println("Usage: java Base64 -e|-d inputfile outputfile");
    }

    static 
    {
        byte abyte0[] = new byte[127];
        abyte0[0] = -9;
        abyte0[1] = -9;
        abyte0[2] = -9;
        abyte0[3] = -9;
        abyte0[4] = -9;
        abyte0[5] = -9;
        abyte0[6] = -9;
        abyte0[7] = -9;
        abyte0[8] = -9;
        abyte0[9] = -5;
        abyte0[10] = -5;
        abyte0[11] = -9;
        abyte0[12] = -9;
        abyte0[13] = -5;
        abyte0[14] = -9;
        abyte0[15] = -9;
        abyte0[16] = -9;
        abyte0[17] = -9;
        abyte0[18] = -9;
        abyte0[19] = -9;
        abyte0[20] = -9;
        abyte0[21] = -9;
        abyte0[22] = -9;
        abyte0[23] = -9;
        abyte0[24] = -9;
        abyte0[25] = -9;
        abyte0[26] = -9;
        abyte0[27] = -9;
        abyte0[28] = -9;
        abyte0[29] = -9;
        abyte0[30] = -9;
        abyte0[31] = -9;
        abyte0[32] = -5;
        abyte0[33] = -9;
        abyte0[34] = -9;
        abyte0[35] = -9;
        abyte0[36] = -9;
        abyte0[37] = -9;
        abyte0[38] = -9;
        abyte0[39] = -9;
        abyte0[40] = -9;
        abyte0[41] = -9;
        abyte0[42] = -9;
        abyte0[43] = 62;
        abyte0[44] = -9;
        abyte0[45] = -9;
        abyte0[46] = -9;
        abyte0[47] = 63;
        abyte0[48] = 52;
        abyte0[49] = 53;
        abyte0[50] = 54;
        abyte0[51] = 55;
        abyte0[52] = 56;
        abyte0[53] = 57;
        abyte0[54] = 58;
        abyte0[55] = 59;
        abyte0[56] = 60;
        abyte0[57] = 61;
        abyte0[58] = -9;
        abyte0[59] = -9;
        abyte0[60] = -9;
        abyte0[61] = -1;
        abyte0[62] = -9;
        abyte0[63] = -9;
        abyte0[64] = -9;
        abyte0[66] = 1;
        abyte0[67] = 2;
        abyte0[68] = 3;
        abyte0[69] = 4;
        abyte0[70] = 5;
        abyte0[71] = 6;
        abyte0[72] = 7;
        abyte0[73] = 8;
        abyte0[74] = 9;
        abyte0[75] = 10;
        abyte0[76] = 11;
        abyte0[77] = 12;
        abyte0[78] = 13;
        abyte0[79] = 14;
        abyte0[80] = 15;
        abyte0[81] = 16;
        abyte0[82] = 17;
        abyte0[83] = 18;
        abyte0[84] = 19;
        abyte0[85] = 20;
        abyte0[86] = 21;
        abyte0[87] = 22;
        abyte0[88] = 23;
        abyte0[89] = 24;
        abyte0[90] = 25;
        abyte0[91] = -9;
        abyte0[92] = -9;
        abyte0[93] = -9;
        abyte0[94] = -9;
        abyte0[95] = -9;
        abyte0[96] = -9;
        abyte0[97] = 26;
        abyte0[98] = 27;
        abyte0[99] = 28;
        abyte0[100] = 29;
        abyte0[101] = 30;
        abyte0[102] = 31;
        abyte0[103] = 32;
        abyte0[104] = 33;
        abyte0[105] = 34;
        abyte0[106] = 35;
        abyte0[107] = 36;
        abyte0[108] = 37;
        abyte0[109] = 38;
        abyte0[110] = 39;
        abyte0[111] = 40;
        abyte0[112] = 41;
        abyte0[113] = 42;
        abyte0[114] = 43;
        abyte0[115] = 44;
        abyte0[116] = 45;
        abyte0[117] = 46;
        abyte0[118] = 47;
        abyte0[119] = 48;
        abyte0[120] = 49;
        abyte0[121] = 50;
        abyte0[122] = 51;
        abyte0[123] = -9;
        abyte0[124] = -9;
        abyte0[125] = -9;
        abyte0[126] = -9;
        _STANDARD_DECODABET = abyte0;
        abyte0 = new byte[127];
        abyte0[0] = -9;
        abyte0[1] = -9;
        abyte0[2] = -9;
        abyte0[3] = -9;
        abyte0[4] = -9;
        abyte0[5] = -9;
        abyte0[6] = -9;
        abyte0[7] = -9;
        abyte0[8] = -9;
        abyte0[9] = -5;
        abyte0[10] = -5;
        abyte0[11] = -9;
        abyte0[12] = -9;
        abyte0[13] = -5;
        abyte0[14] = -9;
        abyte0[15] = -9;
        abyte0[16] = -9;
        abyte0[17] = -9;
        abyte0[18] = -9;
        abyte0[19] = -9;
        abyte0[20] = -9;
        abyte0[21] = -9;
        abyte0[22] = -9;
        abyte0[23] = -9;
        abyte0[24] = -9;
        abyte0[25] = -9;
        abyte0[26] = -9;
        abyte0[27] = -9;
        abyte0[28] = -9;
        abyte0[29] = -9;
        abyte0[30] = -9;
        abyte0[31] = -9;
        abyte0[32] = -5;
        abyte0[33] = -9;
        abyte0[34] = -9;
        abyte0[35] = -9;
        abyte0[36] = -9;
        abyte0[37] = -9;
        abyte0[38] = -9;
        abyte0[39] = -9;
        abyte0[40] = -9;
        abyte0[41] = -9;
        abyte0[42] = -9;
        abyte0[43] = -9;
        abyte0[44] = -9;
        abyte0[45] = 62;
        abyte0[46] = -9;
        abyte0[47] = -9;
        abyte0[48] = 52;
        abyte0[49] = 53;
        abyte0[50] = 54;
        abyte0[51] = 55;
        abyte0[52] = 56;
        abyte0[53] = 57;
        abyte0[54] = 58;
        abyte0[55] = 59;
        abyte0[56] = 60;
        abyte0[57] = 61;
        abyte0[58] = -9;
        abyte0[59] = -9;
        abyte0[60] = -9;
        abyte0[61] = -1;
        abyte0[62] = -9;
        abyte0[63] = -9;
        abyte0[64] = -9;
        abyte0[66] = 1;
        abyte0[67] = 2;
        abyte0[68] = 3;
        abyte0[69] = 4;
        abyte0[70] = 5;
        abyte0[71] = 6;
        abyte0[72] = 7;
        abyte0[73] = 8;
        abyte0[74] = 9;
        abyte0[75] = 10;
        abyte0[76] = 11;
        abyte0[77] = 12;
        abyte0[78] = 13;
        abyte0[79] = 14;
        abyte0[80] = 15;
        abyte0[81] = 16;
        abyte0[82] = 17;
        abyte0[83] = 18;
        abyte0[84] = 19;
        abyte0[85] = 20;
        abyte0[86] = 21;
        abyte0[87] = 22;
        abyte0[88] = 23;
        abyte0[89] = 24;
        abyte0[90] = 25;
        abyte0[91] = -9;
        abyte0[92] = -9;
        abyte0[93] = -9;
        abyte0[94] = -9;
        abyte0[95] = 63;
        abyte0[96] = -9;
        abyte0[97] = 26;
        abyte0[98] = 27;
        abyte0[99] = 28;
        abyte0[100] = 29;
        abyte0[101] = 30;
        abyte0[102] = 31;
        abyte0[103] = 32;
        abyte0[104] = 33;
        abyte0[105] = 34;
        abyte0[106] = 35;
        abyte0[107] = 36;
        abyte0[108] = 37;
        abyte0[109] = 38;
        abyte0[110] = 39;
        abyte0[111] = 40;
        abyte0[112] = 41;
        abyte0[113] = 42;
        abyte0[114] = 43;
        abyte0[115] = 44;
        abyte0[116] = 45;
        abyte0[117] = 46;
        abyte0[118] = 47;
        abyte0[119] = 48;
        abyte0[120] = 49;
        abyte0[121] = 50;
        abyte0[122] = 51;
        abyte0[123] = -9;
        abyte0[124] = -9;
        abyte0[125] = -9;
        abyte0[126] = -9;
        _URL_SAFE_DECODABET = abyte0;
        abyte0 = new byte[127];
        abyte0[0] = -9;
        abyte0[1] = -9;
        abyte0[2] = -9;
        abyte0[3] = -9;
        abyte0[4] = -9;
        abyte0[5] = -9;
        abyte0[6] = -9;
        abyte0[7] = -9;
        abyte0[8] = -9;
        abyte0[9] = -5;
        abyte0[10] = -5;
        abyte0[11] = -9;
        abyte0[12] = -9;
        abyte0[13] = -5;
        abyte0[14] = -9;
        abyte0[15] = -9;
        abyte0[16] = -9;
        abyte0[17] = -9;
        abyte0[18] = -9;
        abyte0[19] = -9;
        abyte0[20] = -9;
        abyte0[21] = -9;
        abyte0[22] = -9;
        abyte0[23] = -9;
        abyte0[24] = -9;
        abyte0[25] = -9;
        abyte0[26] = -9;
        abyte0[27] = -9;
        abyte0[28] = -9;
        abyte0[29] = -9;
        abyte0[30] = -9;
        abyte0[31] = -9;
        abyte0[32] = -5;
        abyte0[33] = -9;
        abyte0[34] = -9;
        abyte0[35] = -9;
        abyte0[36] = -9;
        abyte0[37] = -9;
        abyte0[38] = -9;
        abyte0[39] = -9;
        abyte0[40] = -9;
        abyte0[41] = -9;
        abyte0[42] = -9;
        abyte0[43] = -9;
        abyte0[44] = -9;
        abyte0[46] = -9;
        abyte0[47] = -9;
        abyte0[48] = 1;
        abyte0[49] = 2;
        abyte0[50] = 3;
        abyte0[51] = 4;
        abyte0[52] = 5;
        abyte0[53] = 6;
        abyte0[54] = 7;
        abyte0[55] = 8;
        abyte0[56] = 9;
        abyte0[57] = 10;
        abyte0[58] = -9;
        abyte0[59] = -9;
        abyte0[60] = -9;
        abyte0[61] = -1;
        abyte0[62] = -9;
        abyte0[63] = -9;
        abyte0[64] = -9;
        abyte0[65] = 11;
        abyte0[66] = 12;
        abyte0[67] = 13;
        abyte0[68] = 14;
        abyte0[69] = 15;
        abyte0[70] = 16;
        abyte0[71] = 17;
        abyte0[72] = 18;
        abyte0[73] = 19;
        abyte0[74] = 20;
        abyte0[75] = 21;
        abyte0[76] = 22;
        abyte0[77] = 23;
        abyte0[78] = 24;
        abyte0[79] = 25;
        abyte0[80] = 26;
        abyte0[81] = 27;
        abyte0[82] = 28;
        abyte0[83] = 29;
        abyte0[84] = 30;
        abyte0[85] = 31;
        abyte0[86] = 32;
        abyte0[87] = 33;
        abyte0[88] = 34;
        abyte0[89] = 35;
        abyte0[90] = 36;
        abyte0[91] = -9;
        abyte0[92] = -9;
        abyte0[93] = -9;
        abyte0[94] = -9;
        abyte0[95] = 37;
        abyte0[96] = -9;
        abyte0[97] = 38;
        abyte0[98] = 39;
        abyte0[99] = 40;
        abyte0[100] = 41;
        abyte0[101] = 42;
        abyte0[102] = 43;
        abyte0[103] = 44;
        abyte0[104] = 45;
        abyte0[105] = 46;
        abyte0[106] = 47;
        abyte0[107] = 48;
        abyte0[108] = 49;
        abyte0[109] = 50;
        abyte0[110] = 51;
        abyte0[111] = 52;
        abyte0[112] = 53;
        abyte0[113] = 54;
        abyte0[114] = 55;
        abyte0[115] = 56;
        abyte0[116] = 57;
        abyte0[117] = 58;
        abyte0[118] = 59;
        abyte0[119] = 60;
        abyte0[120] = 61;
        abyte0[121] = 62;
        abyte0[122] = 63;
        abyte0[123] = -9;
        abyte0[124] = -9;
        abyte0[125] = -9;
        abyte0[126] = -9;
        _ORDERED_DECODABET = abyte0;
    }





}
