package cn.sxkd.controller;

import cn.sxkd.base.BaseController;
import cn.sxkd.entity.Page;
import cn.sxkd.entity.TUser;
import cn.sxkd.service.GoodsService;
import cn.sxkd.service.OrderService;
import cn.sxkd.service.TypeService;
import cn.sxkd.service.UserService;
import cn.sxkd.tool.PageData;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2018/5/5 0005.
 */
@Controller
@RequestMapping("/page")
public class PageController extends BaseController {

    @Resource(name="goodsService")
    private GoodsService goodsService;
    @Autowired
    private UserService userService;
    @Autowired
    private TypeService typeService;
    @Resource(name="orderService")
    private OrderService orderService;

    @RequestMapping("/index")
    public ModelAndView index(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("index");
        TUser USER = getSessionUserName();
        mv.addObject("user",USER);
        return mv;
    }

    @RequestMapping("/error")
    public ModelAndView error(){
        ModelAndView mv = this.getModelAndView();

        mv.setViewName("error");
        return mv;
    }

    @RequestMapping("/user")
    public ModelAndView user(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("userManage");
        PageData pd = new PageData();
        try {
            List<PageData> list = userService.findUserByList(pd);
            mv.addObject("userList",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @RequestMapping("/goods")
    public ModelAndView goods(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("goodsManage");
        PageData pd = new PageData();
        try {
            List<PageData> list = goodsService.listAll(pd);
            if (list!=null&&list.size()>0){
                for (PageData p:list){
                    PageData pageData = new PageData();
                    pageData.put("sortid",p.get("type"));
                    PageData types = typeService.findTypeById(pageData);
                    p.put("types",types);
                }
            }
            mv.addObject("goodsList",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @RequestMapping("/outLogin")
    public ModelAndView outLogin(){
        ModelAndView mv = this.getModelAndView();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        request.getSession().invalidate();
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping("/searchItem")
    public ModelAndView item(Page page){
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        page.setPd(pd);
        try {
            List<PageData> good = goodsService.findByGoodTypes(page);
            mv.setViewName("search");
            mv.addObject("pd", pd);
            mv.addObject("pds", good);
        } catch (Exception e) {
            logger.error(e.toString(), e);
        }
        return mv;
    }

    @RequestMapping("/flowerLanguage")
    public ModelAndView flowerlanguage(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("flower_language");
        return mv;
    }

    @RequestMapping("/all")
    public ModelAndView all(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("all");
        return mv;
    }

    @RequestMapping("/message ")
    public ModelAndView message (){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("message");
        return mv;
    }

    @RequestMapping("/business")
    public ModelAndView business(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("tg");
        return mv;
    }

    @RequestMapping("/order")
    public ModelAndView order(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("order-cart");
        TUser tUser = getSessionUserName();
        try {
            if (tUser!=null){
                PageData pageData = new PageData();
                pageData.put("user_id",tUser.getUsersid());
                List<PageData> list = orderService.findOrderByUserId(pageData);
                Double countRMB = 0.0;
                if (list!=null&&list.size()>0){
                    for (PageData p:list){
                        pageData.put("id",p.get("goods_id"));
                        PageData good = goodsService.findById(pageData);
                        Double price = Double.parseDouble(good.get("price").toString());
                        Integer amount = Integer.parseInt(p.get("amount").toString());
                        countRMB+=price*amount;
                        p.put("good",good);
                    }
                }
                mv.addObject("countRMB",countRMB);
                mv.addObject("list",list);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @RequestMapping("/search")
    public ModelAndView search(Page page){
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        page.setPd(pd);
        try {
            if (pd.get("name")!=null){
                String keyword = new String(pd.get("name").toString().getBytes("ISO-8859-1"), "utf-8");
                pd.put("name",keyword);
                List<PageData> good = goodsService.findByGoodNameLike(page);
                mv.setViewName("search");
                mv.addObject("pd", pd);
                mv.addObject("pds", good);
            }else {
                List<PageData> good = goodsService.findByGoodTypeAll(page);
                mv.setViewName("search");
                mv.addObject("pd", pd);
                mv.addObject("pds", good);
            }
        } catch (Exception e) {
            logger.error(e.toString(), e);
        }
        return mv;
    }

    @RequestMapping("/orderMsg")
    public ModelAndView orderMsg (){
        ModelAndView mv = this.getModelAndView();
        try {
            TUser tUser = getSessionUserName();
            PageData gpd = getPageData();
            gpd.put("user_id",tUser.getUsersid());
            List<PageData> order = orderService.findOrderByStatus(gpd);
            if (order!=null&&order.size()>0){
                for (PageData p:order) {
                    PageData pageData =new PageData();

                    pageData.put("id",p.get("goods_id"));
                    PageData good = goodsService.findById(pageData);
                    p.put("good",good);
                    pageData.put("sortid",p.get("type_id"));
                    PageData types = typeService.findTypeById(pageData);
                    p.put("type",types);
                    pageData.put("usersId",p.get("user_id"));
                    TUser user = userService.selectByPrimaryKeyId(pageData);
                    p.put("user",user);
                }
            }
            mv.addObject("orderList",order);
        } catch (Exception e) {
            e.printStackTrace();
        }
        mv.setViewName("orderManage");
        return mv;
    }
}
