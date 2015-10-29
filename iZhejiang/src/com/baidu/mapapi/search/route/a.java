// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.mapapi.search.core.CityInfo;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.TaxiInfo;
import com.baidu.mapapi.search.core.VehicleInfo;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.search.route:
//            TransitRouteResult, TransitRouteLine, PlanNode, DrivingRouteResult, 
//            DrivingRouteLine, WalkingRouteResult, WalkingRouteLine, SuggestAddrInfo

public class a
{

    public static TransitRouteResult a(String s)
    {
        TransitRouteResult transitrouteresult = new TransitRouteResult();
        if (s == null || s.length() <= 0)
        {
            transitrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return transitrouteresult;
        }
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            transitrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            s.printStackTrace();
            return transitrouteresult;
        }
        if (s.optJSONObject("taxi") != null)
        {
            transitrouteresult.a(d(s.optString("taxi")));
        }
        s = s.optJSONArray("routes");
        if (s == null || s.length() <= 0)
        {
            transitrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return transitrouteresult;
        }
        ArrayList arraylist = new ArrayList();
        int i = 0;
        while (i < s.length()) 
        {
            Object obj = ((JSONObject)s.opt(i)).optJSONObject("legs");
            if (obj != null)
            {
                TransitRouteLine transitrouteline = new TransitRouteLine();
                transitrouteline.setDistance(((JSONObject) (obj)).optInt("distance"));
                transitrouteline.setDuration(((JSONObject) (obj)).optInt("time"));
                transitrouteline.setStarting(RouteNode.location(com.baidu.mapapi.model.a.a(((JSONObject) (obj)).optString("start_geo"))));
                transitrouteline.setTerminal(RouteNode.location(com.baidu.mapapi.model.a.a(((JSONObject) (obj)).optString("end_geo"))));
                obj = ((JSONObject) (obj)).optJSONArray("steps");
                if (obj != null && ((JSONArray) (obj)).length() > 0)
                {
                    ArrayList arraylist1 = new ArrayList();
                    int j = 0;
                    while (j < ((JSONArray) (obj)).length()) 
                    {
                        Object obj1 = ((JSONArray) (obj)).optJSONObject(j).optJSONArray("busline");
                        if (obj1 != null && ((JSONArray) (obj1)).length() > 0)
                        {
                            Object obj2 = ((JSONArray) (obj1)).optJSONObject(0);
                            obj1 = new TransitRouteLine.TransitStep();
                            ((TransitRouteLine.TransitStep) (obj1)).a(RouteNode.location(com.baidu.mapapi.model.a.a(((JSONObject) (obj2)).optString("start_location"))));
                            ((TransitRouteLine.TransitStep) (obj1)).b(RouteNode.location(com.baidu.mapapi.model.a.a(((JSONObject) (obj2)).optString("end_location"))));
                            if (((JSONObject) (obj2)).optInt("type") == 5)
                            {
                                ((TransitRouteLine.TransitStep) (obj1)).a(TransitRouteLine.TransitStep.TransitRouteStepType.WAKLING);
                            } else
                            {
                                ((TransitRouteLine.TransitStep) (obj1)).a(TransitRouteLine.TransitStep.TransitRouteStepType.WAKLING);
                            }
                            ((TransitRouteLine.TransitStep) (obj1)).a(g(((JSONObject) (obj2)).optString("instructions")));
                            ((TransitRouteLine.TransitStep) (obj1)).setDistance(((JSONObject) (obj2)).optInt("distance"));
                            ((TransitRouteLine.TransitStep) (obj1)).setDuration(((JSONObject) (obj2)).optInt("duration"));
                            ((TransitRouteLine.TransitStep) (obj1)).b(((JSONObject) (obj2)).optString("path_geo"));
                            if (((JSONObject) (obj2)).has("vehicle"))
                            {
                                ((TransitRouteLine.TransitStep) (obj1)).a(e(((JSONObject) (obj2)).optString("vehicle")));
                                obj2 = ((JSONObject) (obj2)).optJSONObject("vehicle");
                                ((TransitRouteLine.TransitStep) (obj1)).getEntrace().setUid(((JSONObject) (obj2)).optString("start_uid"));
                                ((TransitRouteLine.TransitStep) (obj1)).getEntrace().setTitle(((JSONObject) (obj2)).optString("start_name"));
                                ((TransitRouteLine.TransitStep) (obj1)).getExit().setUid(((JSONObject) (obj2)).optString("end_uid"));
                                ((TransitRouteLine.TransitStep) (obj1)).getExit().setTitle(((JSONObject) (obj2)).optString("end_name"));
                                obj2 = Integer.valueOf(((JSONObject) (obj2)).optInt("type"));
                                if (obj2 != null)
                                {
                                    if (((Integer) (obj2)).intValue() == 1)
                                    {
                                        ((TransitRouteLine.TransitStep) (obj1)).a(TransitRouteLine.TransitStep.TransitRouteStepType.SUBWAY);
                                    } else
                                    {
                                        ((TransitRouteLine.TransitStep) (obj1)).a(TransitRouteLine.TransitStep.TransitRouteStepType.BUSLINE);
                                    }
                                } else
                                {
                                    ((TransitRouteLine.TransitStep) (obj1)).a(TransitRouteLine.TransitStep.TransitRouteStepType.BUSLINE);
                                }
                            }
                            arraylist1.add(obj1);
                        }
                        j++;
                    }
                    transitrouteline.setSteps(arraylist1);
                    arraylist.add(transitrouteline);
                }
            }
            i++;
        }
        transitrouteresult.a(arraylist);
        return transitrouteresult;
    }

    public static List a(JSONObject jsonobject, String s)
    {
        if (jsonobject != null && s != null && !s.equals(""))
        {
            if ((jsonobject = jsonobject.optJSONArray(s)) != null && jsonobject.length() > 0)
            {
                s = new ArrayList();
                for (int i = 0; i < jsonobject.length(); i++)
                {
                    JSONObject jsonobject1 = (JSONObject)jsonobject.opt(i);
                    CityInfo cityinfo = new CityInfo();
                    cityinfo.num = jsonobject1.optInt("num");
                    cityinfo.city = jsonobject1.optString("name");
                    s.add(cityinfo);
                }

                s.trimToSize();
                return s;
            }
        }
        return null;
    }

    private static List a(JSONObject jsonobject, String s, String s1)
    {
        if (jsonobject == null || s == null || "".equals(s))
        {
            return null;
        }
        jsonobject = jsonobject.optJSONArray(s);
        if (jsonobject != null)
        {
            s = new ArrayList();
            for (int i = 0; i < jsonobject.length(); i++)
            {
                JSONObject jsonobject1 = (JSONObject)jsonobject.opt(i);
                PoiInfo poiinfo = new PoiInfo();
                PlanNode.withCityNameAndPlaceName(s1, jsonobject1.optString("name"));
                poiinfo.address = jsonobject1.optString("addr");
                poiinfo.uid = jsonobject1.optString("uid");
                poiinfo.name = jsonobject1.optString("name");
                poiinfo.location = com.baidu.mapapi.model.a.a(jsonobject1.optString("geo"));
                poiinfo.city = s1;
                s.add(poiinfo);
            }

            if (s.size() > 0)
            {
                return s;
            }
        }
        return null;
    }

    private static RouteNode b(JSONObject jsonobject, String s)
    {
        if (jsonobject == null || s == null || "".equals(s))
        {
            return null;
        } else
        {
            jsonobject = jsonobject.optJSONObject(s);
            s = new RouteNode();
            s.setTitle(jsonobject.optString("name"));
            s.setLocation(com.baidu.mapapi.model.a.a(jsonobject.optString("geo")));
            return s;
        }
    }

    public static DrivingRouteResult b(String s)
    {
        int i = 0;
        DrivingRouteResult drivingrouteresult = new DrivingRouteResult();
        if (s == null || "".equals(s))
        {
            drivingrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return drivingrouteresult;
        }
        Object obj;
        boolean flag;
        try
        {
            obj = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            drivingrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return drivingrouteresult;
        }
        if (((JSONObject) (obj)).has("taxi"))
        {
            drivingrouteresult.a(d(((JSONObject) (obj)).optString("taxi")));
        }
        s = new DrivingRouteLine();
        if (((JSONObject) (obj)).optInt("avoid_jam") != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag);
        s.setStarting(b(((JSONObject) (obj)), "start_point"));
        s.setTerminal(b(((JSONObject) (obj)), "end_point"));
        s.a(c(((JSONObject) (obj)), "waypoints"));
        obj = ((JSONObject) (obj)).optJSONObject("routes");
        if (obj == null)
        {
            return drivingrouteresult;
        }
        obj = ((JSONObject) (obj)).optJSONObject("legs");
        if (obj == null)
        {
            return drivingrouteresult;
        }
        s.setDistance(((JSONObject) (obj)).optInt("distance"));
        s.setDuration(((JSONObject) (obj)).optInt("duration"));
        obj = ((JSONObject) (obj)).optJSONArray("steps");
        if (obj != null)
        {
            ArrayList arraylist = new ArrayList();
            while (i < ((JSONArray) (obj)).length()) 
            {
                DrivingRouteLine.DrivingStep drivingstep = new DrivingRouteLine.DrivingStep();
                JSONObject jsonobject = ((JSONArray) (obj)).optJSONObject(i);
                if (jsonobject != null)
                {
                    drivingstep.a(jsonobject.optInt("direction") * 30);
                    drivingstep.setDistance(jsonobject.optInt("distance"));
                    drivingstep.setDuration(jsonobject.optInt("duration"));
                    drivingstep.a(RouteNode.location(com.baidu.mapapi.model.a.a(jsonobject.optString("start_loc"))));
                    drivingstep.b(RouteNode.location(com.baidu.mapapi.model.a.a(jsonobject.optString("end_loc"))));
                    drivingstep.d(g(jsonobject.optString("description")));
                    drivingstep.b(g(jsonobject.optString("start_desc")));
                    drivingstep.c(g(jsonobject.optString("end_desc")));
                    drivingstep.b(jsonobject.optInt("turn"));
                    drivingstep.a(jsonobject.optString("path"));
                    arraylist.add(drivingstep);
                }
                i++;
            }
            if (arraylist.size() > 0)
            {
                s.setSteps(arraylist);
            }
        }
        obj = new ArrayList();
        ((List) (obj)).add(s);
        drivingrouteresult.a(((List) (obj)));
        return drivingrouteresult;
    }

    public static WalkingRouteResult c(String s)
    {
        WalkingRouteResult walkingrouteresult = new WalkingRouteResult();
        if (s == null || "".equals(s))
        {
            walkingrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return walkingrouteresult;
        }
        Object obj;
        try
        {
            obj = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            walkingrouteresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return walkingrouteresult;
        }
        if (((JSONObject) (obj)).has("taxi"))
        {
            walkingrouteresult.a(d(((JSONObject) (obj)).optString("taxi")));
        }
        s = new WalkingRouteLine();
        s.setStarting(b(((JSONObject) (obj)), "start_point"));
        s.setTerminal(b(((JSONObject) (obj)), "end_point"));
        obj = ((JSONObject) (obj)).optJSONObject("routes");
        if (obj == null)
        {
            return walkingrouteresult;
        }
        obj = ((JSONObject) (obj)).optJSONObject("legs");
        if (obj == null)
        {
            return walkingrouteresult;
        }
        s.setDistance(((JSONObject) (obj)).optInt("distance"));
        s.setDuration(((JSONObject) (obj)).optInt("duration"));
        obj = ((JSONObject) (obj)).optJSONArray("steps");
        if (obj != null)
        {
            ArrayList arraylist = new ArrayList();
            int i = 0;
            while (i < ((JSONArray) (obj)).length()) 
            {
                WalkingRouteLine.WalkingStep walkingstep = new WalkingRouteLine.WalkingStep();
                JSONObject jsonobject = ((JSONArray) (obj)).optJSONObject(i);
                if (jsonobject != null)
                {
                    walkingstep.a(jsonobject.optInt("direction") * 30);
                    walkingstep.setDistance(jsonobject.optInt("distance"));
                    walkingstep.setDuration(jsonobject.optInt("duration"));
                    walkingstep.a(RouteNode.location(com.baidu.mapapi.model.a.a(jsonobject.optString("start_loc"))));
                    walkingstep.b(RouteNode.location(com.baidu.mapapi.model.a.a(jsonobject.optString("end_loc"))));
                    walkingstep.d(g(jsonobject.optString("description")));
                    walkingstep.b(g(jsonobject.optString("start_desc")));
                    walkingstep.c(g(jsonobject.optString("end_desc")));
                    walkingstep.a(jsonobject.optString("path"));
                    arraylist.add(walkingstep);
                }
                i++;
            }
            if (arraylist.size() > 0)
            {
                s.setSteps(arraylist);
            }
        }
        obj = new ArrayList();
        ((List) (obj)).add(s);
        walkingrouteresult.a(((List) (obj)));
        return walkingrouteresult;
    }

    private static List c(JSONObject jsonobject, String s)
    {
        if (jsonobject != null && s != null && !"".equals(s))
        {
            if ((jsonobject = jsonobject.optJSONArray(s)) != null)
            {
                s = new ArrayList();
                int i = 0;
                while (i < jsonobject.length()) 
                {
                    RouteNode routenode = new RouteNode();
                    try
                    {
                        routenode.setTitle(jsonobject.getJSONObject(i).optString("name"));
                        routenode.setLocation(com.baidu.mapapi.model.a.a(jsonobject.getJSONObject(i).optString("geo")));
                        s.add(routenode);
                    }
                    catch (JSONException jsonexception) { }
                    i++;
                }
                return s;
            }
        }
        return null;
    }

    public static TaxiInfo d(String s)
    {
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = null;
        }
        if (s == null)
        {
            return null;
        }
        TaxiInfo taxiinfo = new TaxiInfo();
        taxiinfo.setDesc(s.optString("remark"));
        taxiinfo.setDistance(s.optInt("distance"));
        taxiinfo.setDuration(s.optInt("duration"));
        String s1 = s.optString("total_price");
        String s2 = s.optString("start_price");
        s = s.optString("km_price");
        if (s1 == null || s1.equals(""))
        {
            taxiinfo.setTotalPrice(0.0F);
        } else
        {
            taxiinfo.setTotalPrice(Float.parseFloat(s1));
        }
        if (s1 == null || s2.equals(""))
        {
            taxiinfo.setStartPrice(0.0F);
        } else
        {
            taxiinfo.setStartPrice(Float.parseFloat(s2));
        }
        if (s == null || s.equals(""))
        {
            taxiinfo.setPerKMPrice(0.0F);
            return taxiinfo;
        } else
        {
            taxiinfo.setPerKMPrice(Float.parseFloat(s));
            return taxiinfo;
        }
    }

    public static VehicleInfo e(String s)
    {
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = null;
        }
        if (s == null)
        {
            return null;
        } else
        {
            VehicleInfo vehicleinfo = new VehicleInfo();
            vehicleinfo.setZonePrice(s.optInt("zone_price"));
            vehicleinfo.setTotalPrice(s.optInt("total_price"));
            vehicleinfo.setTitle(s.optString("name"));
            vehicleinfo.setPassStationNum(s.optInt("stop_num"));
            vehicleinfo.setUid(s.optString("uid"));
            return vehicleinfo;
        }
    }

    public static SuggestAddrInfo f(String s)
    {
        if (s != null && !"".equals(s)) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        try
        {
            obj = new JSONObject(s);
            obj1 = ((JSONObject) (obj)).optJSONObject("address_info");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        if (obj1 == null) goto _L1; else goto _L3
_L3:
        s = new SuggestAddrInfo();
        obj2 = ((JSONObject) (obj1)).optString("st_cityname");
        obj3 = ((JSONObject) (obj1)).optString("en_cityname");
        if (!((JSONObject) (obj1)).optBoolean("have_stcitylist")) goto _L5; else goto _L4
_L4:
        s.d(a(((JSONObject) (obj)), "startcitys"));
_L20:
        if (!((JSONObject) (obj1)).optBoolean("have_encitylist")) goto _L7; else goto _L6
_L6:
        s.e(a(((JSONObject) (obj)), "endcitys"));
_L11:
        obj = ((JSONObject) (obj)).optJSONArray("way_points_citylist");
        if (obj == null) goto _L9; else goto _L8
_L8:
        if (((JSONArray) (obj)).length() > 0) goto _L10; else goto _L9
_L5:
        s.a(a(((JSONObject) (obj)), "startpoints", ((String) (obj2))));
        continue; /* Loop/switch isn't completed */
_L7:
        s.b(a(((JSONObject) (obj)), "endpoints", ((String) (obj3))));
          goto _L11
_L10:
        obj1 = new ArrayList();
        obj2 = new ArrayList();
        int i = 0;
_L18:
        if (i >= ((JSONArray) (obj)).length()) goto _L13; else goto _L12
_L12:
        List list;
        obj3 = ((JSONArray) (obj)).getJSONObject(i);
        if (!((JSONObject) (obj3)).optBoolean("have_citylist"))
        {
            break MISSING_BLOCK_LABEL_234;
        }
        list = a(((JSONObject) (obj3)), "way_points_item");
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_234;
        }
        ((List) (obj1)).add(list);
        if (!((JSONObject) (obj3)).optBoolean("have_poilist")) goto _L15; else goto _L14
_L14:
        obj3 = a(((JSONObject) (obj3)), "way_points_poilist", "");
        if (obj3 == null) goto _L15; else goto _L16
_L16:
        ((List) (obj2)).add(obj3);
          goto _L15
_L13:
        if (((List) (obj1)).size() > 0)
        {
            s.f(((List) (obj1)));
        }
        if (((List) (obj2)).size() > 0)
        {
            s.c(((List) (obj2)));
        }
        return s;
_L9:
        return s;
_L15:
        i++;
        if (true) goto _L18; else goto _L17
_L17:
        if (true) goto _L20; else goto _L19
_L19:
    }

    public static String g(String s)
    {
        if (s == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        s = s.toCharArray();
        int i = 0;
        boolean flag1 = false;
        while (i < s.length) 
        {
            boolean flag;
            if (s[i] == '<')
            {
                flag = true;
            } else
            if (s[i] == '>')
            {
                flag = false;
            } else
            {
                flag = flag1;
                if (!flag1)
                {
                    stringbuilder.append(s[i]);
                    flag = flag1;
                }
            }
            i++;
            flag1 = flag;
        }
        return stringbuilder.toString();
    }
}
