package com.bw.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.entity.Movie;
import com.bw.service.MovieService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class MovieController {
	@Autowired
	private MovieService service;
	
	@RequestMapping("/queryMovie")
	public String queryMovie(Model model,@RequestParam(defaultValue="1") Integer pageNum,String mname,String pname,String startdate,String enddate,String startmprice,String endprice,String smlong,String emlong,String order,String by ){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("mname", mname);
		map.put("pname", pname);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		map.put("startmprice", startmprice);
		map.put("endprice", endprice);
		map.put("smlong", smlong);
		map.put("emlong", emlong);
		map.put("order", order);
		map.put("by", by);
		
		PageHelper.startPage(pageNum, 3);
		List<Movie> list=service.queryMovie(map);
		PageInfo<Movie> page=new PageInfo<Movie>(list);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		return "movie_list";
	}
	
	//删除
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(Integer id){
		service.delete(id);
		return "";
		
	}
	
	//批量删除
		@RequestMapping("/deleteAll")
		@ResponseBody
		public String deleteAll(String[] ids){
			service.deleteAll(ids);
			return "";
		}
   //根据id查询详情
		@RequestMapping("/queryById")
		public String queryById(Integer id,Model model){
			System.out.println(id);
			Movie movie=service.queryById(id);
			model.addAttribute("movie", movie);
			return "show";
		}
    //修改状态
		@RequestMapping("/updateStaus")
		@ResponseBody
		public String updateStaus(String status,Integer id){
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("status", status);
			map.put("id", id);
			service.updateStaus(map);
			return "";
			
		}
}
