package com.example.Service;

import com.example.bean.BoardVO;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardVO vo);
    public int deleteBoard(int registerNum);
    public int updateBoard(BoardVO vo);
    public BoardVO getBoard(int registerNum);
    public List<BoardVO> getBoardList();
}
