// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            RRset, CNAMERecord, DNAMERecord

public class SetResponse
{

    static final int CNAME = 4;
    static final int DELEGATION = 3;
    static final int DNAME = 5;
    static final int NXDOMAIN = 1;
    static final int NXRRSET = 2;
    static final int SUCCESSFUL = 6;
    static final int UNKNOWN = 0;
    private static final SetResponse nxdomain = new SetResponse(1);
    private static final SetResponse nxrrset = new SetResponse(2);
    private static final SetResponse unknown = new SetResponse(0);
    private Object data;
    private int type;

    private SetResponse()
    {
    }

    SetResponse(int i)
    {
        if (i < 0 || i > 6)
        {
            throw new IllegalArgumentException("invalid type");
        } else
        {
            type = i;
            data = null;
            return;
        }
    }

    SetResponse(int i, RRset rrset)
    {
        if (i < 0 || i > 6)
        {
            throw new IllegalArgumentException("invalid type");
        } else
        {
            type = i;
            data = rrset;
            return;
        }
    }

    static SetResponse ofType(int i)
    {
        SetResponse setresponse;
        switch (i)
        {
        default:
            throw new IllegalArgumentException("invalid type");

        case 0: // '\0'
            return unknown;

        case 1: // '\001'
            return nxdomain;

        case 2: // '\002'
            return nxrrset;

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            setresponse = new SetResponse();
            break;
        }
        setresponse.type = i;
        setresponse.data = null;
        return setresponse;
    }

    void addRRset(RRset rrset)
    {
        if (data == null)
        {
            data = new ArrayList();
        }
        ((List)data).add(rrset);
    }

    public RRset[] answers()
    {
        if (type != 6)
        {
            return null;
        } else
        {
            List list = (List)data;
            return (RRset[])list.toArray(new RRset[list.size()]);
        }
    }

    public CNAMERecord getCNAME()
    {
        return (CNAMERecord)((RRset)data).first();
    }

    public DNAMERecord getDNAME()
    {
        return (DNAMERecord)((RRset)data).first();
    }

    public RRset getNS()
    {
        return (RRset)data;
    }

    public boolean isCNAME()
    {
        return type == 4;
    }

    public boolean isDNAME()
    {
        return type == 5;
    }

    public boolean isDelegation()
    {
        return type == 3;
    }

    public boolean isNXDOMAIN()
    {
        return type == 1;
    }

    public boolean isNXRRSET()
    {
        return type == 2;
    }

    public boolean isSuccessful()
    {
        return type == 6;
    }

    public boolean isUnknown()
    {
        return type == 0;
    }

    public String toString()
    {
        switch (type)
        {
        default:
            throw new IllegalStateException();

        case 0: // '\0'
            return "unknown";

        case 1: // '\001'
            return "NXDOMAIN";

        case 2: // '\002'
            return "NXRRSET";

        case 3: // '\003'
            return (new StringBuilder("delegation: ")).append(data).toString();

        case 4: // '\004'
            return (new StringBuilder("CNAME: ")).append(data).toString();

        case 5: // '\005'
            return (new StringBuilder("DNAME: ")).append(data).toString();

        case 6: // '\006'
            return "successful";
        }
    }

}
