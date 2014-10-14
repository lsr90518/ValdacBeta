package com.ValdacBeta.dao;

import com.ValdacBeta.entity.Valve;

import java.util.List;

/**
 * Created by Lsr on 10/14/14.
 */
public interface ValveMapper {

    public List<Valve> findAllValve();

    public void insertValve(Valve valve);
}
