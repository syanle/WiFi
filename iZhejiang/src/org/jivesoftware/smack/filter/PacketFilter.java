// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

public interface PacketFilter
{

    public abstract boolean accept(Packet packet);
}
