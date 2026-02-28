package dao;

import java.util.List;

public interface Accessible<T> {

    List<T> getAll();

    T getById(int id);

    boolean insert(T t);

    boolean update(T t);

    boolean delete(int id);
}
