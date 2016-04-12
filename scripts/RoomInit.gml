switch (room)
{
    case BarriaLandingSite:
        if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
        vector_world_add(oVectorLine);
        vector_path_add(oVectorLine,BarriaLandingSitePath1,0,0,0);
        break;
    case BarriaIntWest:
        if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
        vector_world_add(oVectorLine);
        vector_path_add(oVectorLine,BarriaIntWestPath1,0,0,0);
        break;
    case BarriaCacheMissile:
        if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
        vector_world_add(oVectorLine);
        vector_path_add(oVectorLine,BarriaCacheMissilePath1,0,0,0);
        vector_path_add(oVectorLine,BarriaCacheMissilePath2,0,0,0);
        break;
}
