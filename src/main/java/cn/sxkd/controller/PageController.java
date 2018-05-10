package cn.sxkd.controller;

import cn.sxkd.base.BaseController;
import cn.sxkd.entity.TUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2018/5/5 0005.
 */
@Controller
@RequestMapping("/page")
public class PageController extends BaseController {

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

    @RequestMapping("/item")
    public ModelAndView item(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("item");
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
        mv.setViewName("business");
        return mv;
    }

    @RequestMapping("/search")
    public ModelAndView search(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("search");
        return mv;
    }

}
