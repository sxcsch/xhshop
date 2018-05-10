package cn.sxkd.controller;

import cn.sxkd.base.BaseController;
import cn.sxkd.entity.Page;
import cn.sxkd.entity.TUser;
import cn.sxkd.service.GoodsService;
import cn.sxkd.tool.PageData;
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

    @RequestMapping("/search")
    public ModelAndView search(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("search");
        return mv;
    }

}
