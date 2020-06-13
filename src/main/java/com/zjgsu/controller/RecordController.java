package com.zjgsu.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zjgsu.entity.RecordEntity;
import com.zjgsu.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping()
public class RecordController {
    @Autowired
    RecordService recordService;

    /**
     * nmsl (Never Mind the Scandal and libel)  shabiqingjia cccccc
     **/
    @RequestMapping(value = "nmsl", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void receiver_data(String msg) {
        recordService.saveRecord(msg);
    }

    @RequestMapping(value = "show_data", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String show_data() {
        List<RecordEntity> recordList = recordService.showRecord();

        return JSONArray.toJSONString(recordList);
    }
}
