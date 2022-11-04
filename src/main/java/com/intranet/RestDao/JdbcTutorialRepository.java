package com.intranet.RestDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.intranet.RestInterfaces.TutorialRepository;
import com.intranet.bean.Tutorial;
@Repository
public class JdbcTutorialRepository implements TutorialRepository {
	  @Autowired
	  private JdbcTemplate jdbcTemplate;

	@Override
	public int save(Tutorial tutorial) {
		String sql ="INSERT INTO tutorials (title, description, published)VALUES (?,?,?)";
		return jdbcTemplate.update(sql,new Object[] { tutorial.getTitle(), tutorial.getDescription() });
	}

	@Override
	public int update(Tutorial tutorial) {
      String sql ="UPDATE tutorials SET title=?, description=?, published=? WHERE id=?";
		return jdbcTemplate.update(sql, new Object[] { tutorial.getDescription(),tutorial.isPublished(),tutorial.getId()});
	}

	@Override
	public Tutorial findById(Long id) {
		 try {
			 String sql = "SELECT * FROM tutorials WHERE id=?";
		      Tutorial tutorial = jdbcTemplate.queryForObject(sql,BeanPropertyRowMapper.newInstance(Tutorial.class), id);
		      return tutorial;
		    } catch (IncorrectResultSizeDataAccessException e) {
		      return null;
		    }
		  }
		


	@Override
	public int deleteById(Long id) {
		String sql ="DELETE FROM tutorials WHERE id=?";
	
		return jdbcTemplate.update(sql,id);
	}

	@Override
	public List<Tutorial> findAll() {
		String sql ="SELECT * FROM tutorials";
		return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(Tutorial.class));
	}

	@Override
	public List<Tutorial> findByPublishes(boolean published) {
		String sql ="SELECT * FROM tutorials WHERE published=?";

		return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(Tutorial.class));
	}

	@Override
	public List<Tutorial> findByTitleContaining(String title) {
		 String sql = "SELECT * from tutorials WHERE title ILIKE '%" + title + "%'";

		return jdbcTemplate.query(sql,BeanPropertyRowMapper.newInstance(Tutorial.class));
	}

	@Override
	public int deleteAll() {
		String sql ="DELETE FROM tutorials ";
	
		return jdbcTemplate.update(sql);
	}

}
