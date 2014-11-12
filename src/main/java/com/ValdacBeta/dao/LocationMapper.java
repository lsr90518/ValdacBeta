package com.ValdacBeta.dao;

import com.ValdacBeta.entity.Valve;

import java.util.List;

/**
 * Created by Lsr on 10/14/14.
 */
public interface LocationMapper {

    public List<Valve> findAllValve();

    public void insertValve(Valve valve);

    public int getLastInsertId();

    public List<Valve> findTenValves();

    public Valve findValveByKikiSysId(int kikiSysId);

    public void deleteKikiSystemByKikiSysId(Integer kikiSysId);

    void updateValveByValve(Valve valve);

    List<Valve> findLastUpdateTenValves();

    List<Valve> findLastTenValves();

    void updateValveDateById(Valve valve);
}
