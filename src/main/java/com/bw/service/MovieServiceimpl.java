package com.bw.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bw.entity.Movie;
import com.bw.mapper.MovieDao;

@Component
public class MovieServiceimpl implements MovieService{
	@Autowired
	private MovieDao dao;

	public List<Movie> queryMovie(Map<String, Object> map) {
		List<Movie> list=dao.queryMovie(map);
		return list;
	}

	public void delete(Integer id) {
		dao.delete(id);
		
	}

	public void deleteAll(String[] ids) {
		dao.deleteAll(ids);
		
	}

	public Movie queryById(Integer id) {
		Movie movie=dao.queryById(id);
		return movie;
	}

	public void updateStaus(Map<String,Object> map) {
		dao.updateStaus(map);
		
	}

}
