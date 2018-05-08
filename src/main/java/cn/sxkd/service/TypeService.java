package cn.sxkd.service;

import cn.sxkd.dao.DaoSupport;
import cn.sxkd.entity.TType;
import cn.sxkd.entity.TUser;
import cn.sxkd.tool.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/5/5 0005.
 */
@Service
public class TypeService {

    @Resource(name = "daoSupport")
    private DaoSupport daoSupport;
    /*
     * 保存用户信息
     */
    public void saveRegister(PageData pd)throws Exception{
        TType tType = new TType();
        tType.setSortname(pd.getString("sortname"));
        daoSupport.save("TUserMapper.insertSelective",tType);
    }

    /*
     * 通过用户ID来寻找用户信息
     */
    public PageData findTypeById(PageData pd)throws Exception {
        TType tType = new TType();
        tType.setSortid(Integer.parseInt(pd.getString("sortid")));
        return (PageData)daoSupport.findForObject("TUserMapper.selectByPrimaryKey", tType);
    }

    /*
	* 所有用户
	*/
    public List<PageData> findUserByList(PageData pd)throws Exception {
        TType tType = new TType();
        return (List<PageData>)daoSupport.findForList("TUserMapper.selectList", tType);
    }

    /*
     * 通过用户ID来修改用户信息
     */
    public void updateTypeById(PageData pd)throws Exception {
        TType tType = new TType();
        tType.setSortid(Integer.parseInt(pd.getString("sortid")));
        daoSupport.update("TUserMapper.updateByPrimaryKeySelective", tType);
    }

}
