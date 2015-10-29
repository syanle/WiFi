// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.util.Xml;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package com.mapabc.mapapi.core:
//            m

public class n
{

    public n()
    {
    }

    public static m a(InputStream inputstream)
        throws Exception
    {
        InputStream inputstream1;
        m m1;
        XmlPullParser xmlpullparser;
        int i;
        m1 = null;
        xmlpullparser = Xml.newPullParser();
        xmlpullparser.setInput(inputstream, "UTF-8");
        i = xmlpullparser.getEventType();
        inputstream1 = null;
_L2:
        InputStream inputstream3;
        m m2;
        if (i == 1)
        {
            break MISSING_BLOCK_LABEL_2946;
        }
        inputstream3 = inputstream1;
        m2 = m1;
        switch (i)
        {
        default:
            m2 = m1;
            inputstream3 = inputstream1;
            break;

        case 0: // '\0'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            break;

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_107;
        }
_L3:
        i = xmlpullparser.next();
        inputstream1 = inputstream3;
        m1 = m2;
        if (true) goto _L2; else goto _L1
_L1:
        m2 = new m();
        inputstream3 = inputstream1;
          goto _L3
        inputstream = xmlpullparser.getName().trim();
        inputstream3 = inputstream1;
        m2 = m1;
        if (m1 != null)
        {
            if ("AuthKey".equals(inputstream))
            {
                m1.a = xmlpullparser.nextText().trim();
            }
            if ("CoordinateSys".equals(inputstream))
            {
                m1.b = new m.a();
            }
            if (m1.b != null)
            {
                if ("Projection".equals(inputstream))
                {
                    m1.b.a = xmlpullparser.nextText().trim();
                }
                if ("MaxResolution".equals(inputstream))
                {
                    m1.b.b = Double.parseDouble(xmlpullparser.nextText().trim());
                }
                if ("CutDirection".equals(inputstream))
                {
                    m1.b.c = Integer.parseInt(xmlpullparser.nextText().trim());
                }
                if ("CutOriX".equals(inputstream))
                {
                    m1.b.d = Double.parseDouble(xmlpullparser.nextText().trim());
                }
                if ("CutOriY".equals(inputstream))
                {
                    m1.b.e = Double.parseDouble(xmlpullparser.nextText().trim());
                }
            }
            if ("Grid".equals(inputstream))
            {
                m1.c = new m.b();
                inputstream1 = inputstream;
            }
            InputStream inputstream2 = inputstream1;
            if (m1.c != null)
            {
                if ("TileSize".equals(inputstream) && inputstream1.equals("Grid"))
                {
                    m1.c.a = xmlpullparser.nextText().trim().trim();
                }
                if ("GridMap".equals(inputstream))
                {
                    m1.c.b = new m.c();
                    inputstream1 = inputstream;
                }
                if (m1.c.b != null)
                {
                    if ("BaseLayer".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.a = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("VectorRoad".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.b = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Cache".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.c = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Language".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.d = xmlpullparser.nextText().trim();
                    }
                    if ("LayerName".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.e = xmlpullparser.nextText().trim();
                    }
                    if ("UpdateTime".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.f = Long.parseLong(xmlpullparser.nextText().trim());
                    }
                    if ("MinZoomLevel".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.g = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("MaxZoomLevel".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.h = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("Url".equals(inputstream) && inputstream1.equals("GridMap"))
                    {
                        m1.c.b.i = xmlpullparser.nextText().trim();
                    }
                }
                if ("SatelliteMap".equals(inputstream))
                {
                    m1.c.c = new m.e();
                    inputstream1 = inputstream;
                }
                if (m1.c.c != null && inputstream1.equals("SatelliteMap"))
                {
                    if ("BaseLayer".equals(inputstream))
                    {
                        m1.c.c.a = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("VectorRoad".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.b = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Cache".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.c = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Language".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.d = xmlpullparser.nextText().trim();
                    }
                    if ("LayerName".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.e = xmlpullparser.nextText().trim();
                    }
                    if ("UpdateTime".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.f = Long.parseLong(xmlpullparser.nextText().trim());
                    }
                    if ("MinZoomLevel".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.g = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("MaxZoomLevel".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.h = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("Url".equals(inputstream) && inputstream1.equals("SatelliteMap"))
                    {
                        m1.c.c.i = xmlpullparser.nextText().trim();
                    }
                }
                if ("TrafficMap".equals(inputstream))
                {
                    m1.c.d = new m.g();
                    inputstream1 = inputstream;
                }
                if (m1.c.d != null)
                {
                    if ("BaseLayer".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.a = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("VectorRoad".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.b = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Cache".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.c = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Language".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.d = xmlpullparser.nextText().trim();
                    }
                    if ("LayerName".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.e = xmlpullparser.nextText().trim();
                    }
                    if ("UpdateTime".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.f = Long.parseLong(xmlpullparser.nextText().trim());
                    }
                    if ("MinZoomLevel".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.g = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("MaxZoomLevel".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.h = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("Url".equals(inputstream) && inputstream1.equals("TrafficMap"))
                    {
                        m1.c.d.i = xmlpullparser.nextText().trim();
                    }
                }
                if ("RailwayMap".equals(inputstream))
                {
                    m1.c.e = new m.d();
                    inputstream1 = inputstream;
                }
                inputstream2 = inputstream1;
                if (m1.c.e != null)
                {
                    if ("BaseLayer".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.a = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("VectorRoad".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.b = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Cache".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.c = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Language".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.d = xmlpullparser.nextText().trim();
                    }
                    if ("LayerName".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.e = xmlpullparser.nextText().trim();
                    }
                    if ("UpdateTime".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.f = Long.parseLong(xmlpullparser.nextText().trim());
                    }
                    if ("MinZoomLevel".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.g = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("MaxZoomLevel".equals(inputstream) && inputstream1.equals("RailwayMap"))
                    {
                        m1.c.e.h = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    inputstream2 = inputstream1;
                    if ("Url".equals(inputstream))
                    {
                        inputstream2 = inputstream1;
                        if (inputstream1.equals("RailwayMap"))
                        {
                            m1.c.e.i = xmlpullparser.nextText().trim();
                            inputstream2 = inputstream1;
                        }
                    }
                }
            }
            inputstream1 = inputstream2;
            if ("Vector".equals(inputstream))
            {
                m1.d = new m.j();
                inputstream1 = inputstream;
            }
            inputstream2 = inputstream1;
            if (m1.d != null)
            {
                if ("TileSize".equals(inputstream) && inputstream1.equals("Vector"))
                {
                    m1.d.a = xmlpullparser.nextText().trim();
                }
                if ("VMap".equals(inputstream))
                {
                    m1.d.b = new m.h();
                    inputstream1 = inputstream;
                }
                if (m1.d.b != null)
                {
                    if ("BaseLayer".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.a = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("VectorRoad".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.b = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Cache".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.c = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Language".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.d = xmlpullparser.nextText().trim();
                    }
                    if ("LayerName".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.e = xmlpullparser.nextText().trim();
                    }
                    if ("UpdateTime".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.f = Long.parseLong(xmlpullparser.nextText().trim());
                    }
                    if ("MinZoomLevel".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.g = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("MaxZoomLevel".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.h = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("Url".equals(inputstream) && inputstream1.equals("VMap"))
                    {
                        m1.d.b.i = xmlpullparser.nextText().trim();
                    }
                }
                if ("VTMap".equals(inputstream))
                {
                    m1.d.c = new m.i();
                    inputstream1 = inputstream;
                }
                inputstream2 = inputstream1;
                if (m1.d.c != null)
                {
                    if ("BaseLayer".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.a = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("VectorRoad".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.b = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Cache".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.c = Boolean.parseBoolean(xmlpullparser.nextText().trim());
                    }
                    if ("Language".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.d = xmlpullparser.nextText().trim();
                    }
                    if ("LayerName".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.e = xmlpullparser.nextText().trim();
                    }
                    if ("UpdateTime".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.f = Long.parseLong(xmlpullparser.nextText().trim());
                    }
                    if ("MinZoomLevel".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.g = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    if ("MaxZoomLevel".equals(inputstream) && inputstream1.equals("VTMap"))
                    {
                        m1.d.c.h = Integer.parseInt(xmlpullparser.nextText().trim());
                    }
                    inputstream2 = inputstream1;
                    if ("Url".equals(inputstream))
                    {
                        inputstream2 = inputstream1;
                        if (inputstream1.equals("VTMap"))
                        {
                            m1.d.c.i = xmlpullparser.nextText().trim();
                            inputstream2 = inputstream1;
                        }
                    }
                }
            }
            if ("SearchAddress".equals(inputstream))
            {
                m1.e = new m.f();
            }
            inputstream3 = inputstream2;
            m2 = m1;
            if (m1.e != null)
            {
                if ("XMLSearch".equals(inputstream))
                {
                    m1.e.a = xmlpullparser.nextText().trim();
                }
                inputstream3 = inputstream2;
                m2 = m1;
                if ("PBSearch".equals(inputstream))
                {
                    m1.e.b = xmlpullparser.nextText().trim();
                    inputstream3 = inputstream2;
                    m2 = m1;
                }
            }
        }
          goto _L3
        return m1;
    }
}
