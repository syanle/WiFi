// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.anysoft.webservicetest.encoder;

import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

// Referenced classes of package com.anysoft.webservicetest.encoder:
//            BASE64Decoder

public class Key
{

    private static String encryptKey = "7EV/Zzutjzg=";

    public Key()
    {
    }

    public static SecretKey loadKey()
        throws Exception
    {
        DESKeySpec deskeyspec = new DESKeySpec((new BASE64Decoder()).decodeBuffer(encryptKey));
        return SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
    }

}
