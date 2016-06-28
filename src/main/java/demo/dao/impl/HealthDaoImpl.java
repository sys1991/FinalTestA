package demo.dao.impl;

import demo.dao.HealthDao;
import demo.model.Health;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/6/28.
 */
@Repository
public class HealthDaoImpl extends GenericDaoImpl<Health,Integer> implements HealthDao {
}
