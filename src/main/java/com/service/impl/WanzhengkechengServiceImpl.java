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


import com.dao.WanzhengkechengDao;
import com.entity.WanzhengkechengEntity;
import com.service.WanzhengkechengService;
import com.entity.vo.WanzhengkechengVO;
import com.entity.view.WanzhengkechengView;

@Service("wanzhengkechengService")
public class WanzhengkechengServiceImpl extends ServiceImpl<WanzhengkechengDao, WanzhengkechengEntity> implements WanzhengkechengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WanzhengkechengEntity> page = this.selectPage(
                new Query<WanzhengkechengEntity>(params).getPage(),
                new EntityWrapper<WanzhengkechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WanzhengkechengEntity> wrapper) {
		  Page<WanzhengkechengView> page =new Query<WanzhengkechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WanzhengkechengVO> selectListVO(Wrapper<WanzhengkechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WanzhengkechengVO selectVO(Wrapper<WanzhengkechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WanzhengkechengView> selectListView(Wrapper<WanzhengkechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WanzhengkechengView selectView(Wrapper<WanzhengkechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
