package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.InternConverter;
import com.laptrinhjavaweb.dto.InternDTO;
import com.laptrinhjavaweb.entity.InternEntity;
import com.laptrinhjavaweb.repository.InternRepository;
import com.laptrinhjavaweb.service.IInternService;

@Service
public class InternService implements IInternService {

	@Autowired
	InternRepository internRepository;

	@Autowired
	InternConverter internConverter;

	@Override
	public List<InternDTO> findAll(Pageable pageable) {
		List<InternDTO> list = new ArrayList<>();
		List<InternEntity> entities = internRepository.findAll(pageable).getContent();
		for (InternEntity item : entities) {
			InternDTO dto = new ModelMapper().map(item, InternDTO.class);
			list.add(dto);
		}
		return list;
	}

	@Override
	@Transactional
	public InternDTO save(InternDTO dto) {
		ModelMapper mapper = new ModelMapper();
		InternEntity internEntity = new InternEntity();
		if (dto.getId() != null) {
			InternEntity oldIntern = internRepository.findOne(dto.getId());
			internEntity = internConverter.toEntity(oldIntern, dto);
		} else {
			internEntity = mapper.map(dto, InternEntity.class);
		}
		return mapper.map(internRepository.save(internEntity), InternDTO.class);
	}

	@Override
	public InternDTO findById(long id) {
		InternEntity entity = internRepository.findOne(id);
		return new ModelMapper().map(entity, InternDTO.class);
	}

	@Override
	public int getTotalItem() {
		return (int) internRepository.count();
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			internRepository.delete(id);
		}
	}

	@Override
	public List<InternDTO> findByFullname(String fullname) {
		List<InternDTO> list = new ArrayList<>();
		List<InternEntity> entities = internRepository.findByFullname(fullname);
		if (entities != null) {
			for (InternEntity item : entities) {
				InternDTO dto = new ModelMapper().map(item, InternDTO.class);
				list.add(dto);
			}
			return list;
		}
		return null;
	}

}
