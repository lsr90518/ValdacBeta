package com.ValdacBeta.dao;

import com.ValdacBeta.entity.Location;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Lsr on 10/14/14.
 */
public interface LocationMapper {

    @Select("select * from location order by kCodeL,kCodeM,kCodeS")
    public List<Location> findAllLocation();

    /**kCodeLを抽出する*/
    public List<String> findKCodeL();

    /**kCodeMを抽出する*/
    public List<String> findKCodeMByL(Location location);

    /**kCodeSを抽出する*/
    public List<String> findKCodeSByLM(Location location);

}
