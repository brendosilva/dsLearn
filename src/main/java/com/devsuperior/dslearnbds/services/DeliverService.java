package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.dto.DeliverRevisionDto;
import com.devsuperior.dslearnbds.entities.Deliver;
import com.devsuperior.dslearnbds.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository deliverRepository;

    @Transactional
    public void saveRevision(Long id, DeliverRevisionDto deliverRevisionDto) {
        Deliver deliver = deliverRepository.getOne(id);


        deliver.setStatus(deliverRevisionDto.getStatus());
        deliver.setFeedback(deliverRevisionDto.getFeedback());
        deliver.setCorrectCount(deliverRevisionDto.getCorrectCount());
        deliverRepository.save(deliver);
    }
}
