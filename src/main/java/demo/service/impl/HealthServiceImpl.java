package demo.service.impl;

import demo.dao.GenericDao;
import demo.model.Health;
import demo.service.HealthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/6/28.
 */
@Service
public class HealthServiceImpl extends GenericServiceImpl<Health,Integer> implements HealthService {
    @Override
    @Autowired
    @Qualifier("healthDaoImpl")
    void setGenericDao(GenericDao<Health, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}
