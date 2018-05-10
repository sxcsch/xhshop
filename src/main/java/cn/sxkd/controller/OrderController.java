package cn.sxkd.controller;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.annotation.Resource;


import cn.sxkd.base.BaseController;
import cn.sxkd.entity.Page;
import cn.sxkd.entity.TUser;
import cn.sxkd.service.GoodsService;
import cn.sxkd.service.OrderService;
import cn.sxkd.tool.AppUtil;
import cn.sxkd.tool.DateUtil;
import cn.sxkd.tool.PageData;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


/** 
 * 类名称：OrderController
 */
@Controller
@RequestMapping(value="/order")
public class OrderController extends BaseController {
	
	@Resource(name="orderService")
	private OrderService orderService;

	@Resource(name="goodsService")
	private GoodsService goodsService;

	@RequestMapping("/showCart")
	public ModelAndView showCart(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			TUser tUser = getSessionUserName();
			if (tUser!=null){

			}else{
				mv.setViewName("login");
				return mv;
			}
			mv.setViewName("cart");
			if (pd.get("goods_id")!=null){
				PageData id = new PageData();
				id.put("id",pd.get("goods_id"));
				PageData goods = goodsService.findById(id);
				pd.put("num",89999999*Math.random()+10000000);
				pd.put("user_id",tUser.getUsersid());
				pd.put("type_id",goods.get("type"));
				pd.put("take_info","");
				pd.put("status","1");
				pd.put("price",goods.get("price"));
				orderService.save(pd);
				List<PageData> list = orderService.findOrderByUserId(pd);
				if (list!=null&&list.size()>0){
					for (PageData p:list){
						PageData pageData = new PageData();
						pageData.put("id",p.get("goods_id"));
						PageData good = goodsService.findById(pageData);
						p.put("good",good);
					}
				}
				mv.addObject("list",list);
			}else {
				if (tUser!=null){
					PageData pageData = new PageData();
					pageData.put("user_id",tUser.getUsersid());
					List<PageData> list = orderService.findOrderByUserId(pageData);
					if (list!=null&&list.size()>0){
						for (PageData p:list){
							pageData.put("id",p.get("goods_id"));
							PageData good = goodsService.findById(pageData);
							p.put("good",good);
						}
					}
					mv.addObject("list",list);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/showMyOrder")
	public ModelAndView showMyOrder(){
		ModelAndView mv = this.getModelAndView();
		try {
			mv.setViewName("my-order-comment");
			TUser tUser = getSessionUserName();
			if (tUser!=null){
				PageData pageData = new PageData();
				pageData.put("user_id",tUser.getUsersid());
				List<PageData> list = orderService.findOrderByUserId(pageData);
				if (list!=null&&list.size()>0){
					for (PageData p:list){
						pageData.put("id",p.get("goods_id"));
						PageData good = goodsService.findById(pageData);
						p.put("good",good);
					}
				}

				mv.addObject("list",list);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	/*
    保存
     */
	@RequestMapping("/add")
	@ResponseBody
	public Object register(){
		PageData pd = this.getPageData();
		Map<String,Object> map = new HashMap<String,Object>();
		try{
			long   id = new   Date().getTime();
			orderService.save(pd);
			map.put("status","200");
			map.put("msg","登录成功");
		}catch (Exception e){
			logger.error(e);
		}
		return map;
	}

	@RequestMapping("/showOrderCart")
	public ModelAndView showOrderCart(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			mv.setViewName("order-cart");
			mv.addObject("pd",pd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	

	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Order");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			orderService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改Order");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		orderService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Order");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = orderService.list(page);	//列出Order列表
			mv.setViewName("order/order_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增Order页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("order/order_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	

	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
