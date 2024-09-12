package com.service.Imps;

import com.entity.New;
import com.entity.Notice;

import java.util.List;

public interface AnnounceService {
    public List<New> listNews();

    public List<New> listAllNews();
    public List<Notice> listNotices();
    public List<Notice> listAllNotices();
}
