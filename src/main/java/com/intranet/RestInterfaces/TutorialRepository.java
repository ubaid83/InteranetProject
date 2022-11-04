package com.intranet.RestInterfaces;

import java.util.List;

import com.intranet.bean.Tutorial;

public interface TutorialRepository {
	int save(Tutorial tutorial);
	int update(Tutorial tutorial);
	Tutorial findById(Long id);
	int deleteById(Long id);
	List<Tutorial> findAll();
	List<Tutorial>findByPublishes(boolean published);
	List<Tutorial>findByTitleContaining(String title);
	int deleteAll();

}
