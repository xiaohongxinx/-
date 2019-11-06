package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.entity.Movie;

public interface MovieService {

	List<Movie> queryMovie(Map<String, Object> map);

	void delete(Integer id);

	void deleteAll(String[] ids);

	Movie queryById(Integer id);

	void updateStaus(Map<String,Object> map);

}
