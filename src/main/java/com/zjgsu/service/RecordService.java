package com.zjgsu.service;

import com.alibaba.fastjson.JSONObject;
import com.zjgsu.dao.RecordDao;
import com.zjgsu.entity.RecordEntity;
import com.zjgsu.utils.IDGenerator;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RecordService {
    @Autowired
    RecordDao recordDao;

    public void saveRecord(String record_msg) {
        String[] record = record_msg.split(",");
        RecordEntity recordEntity = new RecordEntity();
        for (String key_value : record) {
            String[] s = key_value.split("=");
            if (s.length == 2) {
                String key = s[0];
                int value = Integer.parseInt(s[1]);
                switch (key) {
                    case "Isframe":
                        recordEntity.setFrame(value);
                        break;
                    case "mq4_value_D":
                        recordEntity.setMq4D(value);
                        break;
                    case "mq4_value_A":
                        recordEntity.setMq4A(value);
                        break;
                    default:
                        System.out.println("waring" + key);
                        break;
                }
            }
        }
        if (recordEntity.getFrame() != 0) {
            recordEntity.setRecordId(IDGenerator.generateID(10));
            System.out.println("save_data" + recordEntity.getFrame());
            recordDao.save(recordEntity);
        } else {
            System.out.println("dirt data");
        }
    }

    public List<RecordEntity> showRecord() {
        List<Order> orders = new ArrayList<>();
        orders.add(Order.desc("recordTime"));
        List<RecordEntity> recordList = recordDao.listPageByCriterionAndOrder(1, 20, orders);

        return recordList;
    }
}
