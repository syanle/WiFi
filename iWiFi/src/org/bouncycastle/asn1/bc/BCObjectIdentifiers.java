// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.bc;

import org.bouncycastle.asn1.DERObjectIdentifier;

public interface BCObjectIdentifiers
{

    public static final DERObjectIdentifier bc = new DERObjectIdentifier("1.3.6.1.4.1.22554");
    public static final DERObjectIdentifier bc_pbe = new DERObjectIdentifier((new StringBuilder()).append(bc.getId()).append(".1").toString());
    public static final DERObjectIdentifier bc_pbe_sha1 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe.getId()).append(".1").toString());
    public static final DERObjectIdentifier bc_pbe_sha1_pkcs12 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha1.getId()).append(".2").toString());
    public static final DERObjectIdentifier bc_pbe_sha1_pkcs12_aes128_cbc = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha1_pkcs12.getId()).append(".1.2").toString());
    public static final DERObjectIdentifier bc_pbe_sha1_pkcs12_aes192_cbc = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha1_pkcs12.getId()).append(".1.22").toString());
    public static final DERObjectIdentifier bc_pbe_sha1_pkcs12_aes256_cbc = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha1_pkcs12.getId()).append(".1.42").toString());
    public static final DERObjectIdentifier bc_pbe_sha1_pkcs5 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha1.getId()).append(".1").toString());
    public static final DERObjectIdentifier bc_pbe_sha224 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe.getId()).append(".2.4").toString());
    public static final DERObjectIdentifier bc_pbe_sha256 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe.getId()).append(".2.1").toString());
    public static final DERObjectIdentifier bc_pbe_sha256_pkcs12 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha256.getId()).append(".2").toString());
    public static final DERObjectIdentifier bc_pbe_sha256_pkcs12_aes128_cbc = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha256_pkcs12.getId()).append(".1.2").toString());
    public static final DERObjectIdentifier bc_pbe_sha256_pkcs12_aes192_cbc = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha256_pkcs12.getId()).append(".1.22").toString());
    public static final DERObjectIdentifier bc_pbe_sha256_pkcs12_aes256_cbc = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha256_pkcs12.getId()).append(".1.42").toString());
    public static final DERObjectIdentifier bc_pbe_sha256_pkcs5 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe_sha256.getId()).append(".1").toString());
    public static final DERObjectIdentifier bc_pbe_sha384 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe.getId()).append(".2.2").toString());
    public static final DERObjectIdentifier bc_pbe_sha512 = new DERObjectIdentifier((new StringBuilder()).append(bc_pbe.getId()).append(".2.3").toString());

}
