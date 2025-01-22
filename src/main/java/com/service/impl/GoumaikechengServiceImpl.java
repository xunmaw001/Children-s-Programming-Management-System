package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.GoumaikechengDao;
import com.entity.GoumaikechengEntity;
import com.service.GoumaikechengService;
import com.entity.vo.GoumaikechengVO;
import com.entity.view.GoumaikechengView;

@Service("goumaikechengService")
public class GoumaikechengServiceImpl extends ServiceImpl<GoumaikechengDao, GoumaikechengEntity> implements GoumaikechengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GoumaikechengEntity> page = this.selectPage(
                new Query<GoumaikechengEntity>(params).getPage(),
                new EntityWrapper<GoumaikechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GoumaikechengEntity> wrapper) {
		  Page<GoumaikechengView> page =new Query<GoumaikechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GoumaikechengVO> selectListVO(Wrapper<GoumaikechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GoumaikechengVO selectVO(Wrapper<GoumaikechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GoumaikechengView> selectListView(Wrapper<GoumaikechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GoumaikechengView selectView(Wrapper<GoumaikechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
