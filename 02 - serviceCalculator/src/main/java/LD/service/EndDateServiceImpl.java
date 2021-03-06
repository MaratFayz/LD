package LD.service;

import LD.config.UserSource;
import LD.model.AbstractModelClass_;
import LD.model.EndDate.EndDate;
import LD.model.EndDate.EndDateDTO_out;
import LD.model.EndDate.EndDateID;
import LD.model.EndDate.EndDateTransform;
import LD.repository.EndDatesRepository;
import LD.rest.exceptions.NotFoundException;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
public class EndDateServiceImpl implements EndDateService {

    @Autowired
    EndDatesRepository endDatesRepository;
    @Autowired
    EndDateTransform endDateTransform;
    @Autowired
    UserSource userSource;

    @Override
    public List<EndDateDTO_out> getAllEndDates() {
        List<EndDate> resultFormDB = endDatesRepository.findAll();
        List<EndDateDTO_out> resultFormDB_out = new ArrayList<>();

        if (resultFormDB.size() == 0) {
            resultFormDB_out.add(new EndDateDTO_out());
        } else {
            resultFormDB_out = resultFormDB.stream()
                    .map(c -> endDateTransform.EndDates_to_EndDatesDTO_out(c))
                    .collect(Collectors.toList());
        }

        return resultFormDB_out;
    }

    @Override
    public EndDate getEndDate(EndDateID id) {
        return endDatesRepository.findById(id).orElseThrow(NotFoundException::new);
    }

    @Override
    public EndDate saveEndDate(EndDate endDate) {
        log.info("Конечная дата для сохранения = {}", endDate);

        endDate.setUserLastChanged(userSource.getAuthenticatedUser());
        endDate.setLastChange(ZonedDateTime.now());

        log.info("Конечная дата для сохранения = {}", endDate);

        return endDatesRepository.saveAndFlush(endDate);
    }

    @Override
    public EndDate update(EndDateID id, EndDate endDate) {
        EndDate endDateToUpdate = getEndDate(id);

        BeanUtils.copyProperties(endDate, endDateToUpdate, AbstractModelClass_.LAST_CHANGE, AbstractModelClass_.USER_LAST_CHANGED);

        endDatesRepository.saveAndFlush(endDateToUpdate);

        return endDateToUpdate;
    }

    @Override
    public void delete(EndDateID id) {
        endDatesRepository.deleteById(id);
    }
}