package demo.service;

import java.io.Serializable;
import java.util.List;

/**
 * Created by sys on 2016/6/27.
 */
public interface GenericService<T extends Serializable,ID extends Number> {

    void create(T model);

    void remove(ID id);

    void modify(T model);

    void modify(String statement,Object parameter);

    List<T> list();

    T search(ID id);

    T search(String statement, Object parameter);

    List<T> list(String statement, Object parameter);
}
