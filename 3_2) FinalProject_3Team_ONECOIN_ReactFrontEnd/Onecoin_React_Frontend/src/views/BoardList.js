import React, { Component } from 'react';
import BoardService from './BoardService';
import { Link } from "react-router-dom";
import Container from 'react-bootstrap/Container';
import Button from 'react-bootstrap/Button';
import "../css/board.css" ;
import Table from 'react-bootstrap/Table';

class BoardList extends Component {
                constructor(props){
                    super(props)
                    // 1단계 소스 코딩
                    this.state = {
                        boards: []
                    }
                }

                // 2단계 소스 코딩
                componentDidMount(){
                    BoardService.getBoards().then((res) => {
                        this.setState({boards: res.data});
                    });
                }

            // 3단계 소스 코딩
            render() {
                return (
            
            <Container>
            <div>
                <h2 className='text-center page_top'>게시글 목록조회</h2>
                <div className='row'>
                    <Table triped bordered hover className='table_list'>
                        <thead>
                            <tr>
                            <th>글번호</th>
                            <th>글제목</th>
                            <th>글내용</th>
                            </tr>
                        </thead>
                      <tbody>
                        {
                            this.state.boards.map(
                                board =>
                                <tr key = {board.articleId}>
                                    <td>{board.articleId}</td> 
                                    <td>{board.articleTitle}</td> 
                                    <td>{board.articleContent}</td> 
                                </tr>
                            )
                        }
                      </tbody>
                    </Table>
                    <Link to="/">
                        <Button type="button" variant="outline-dark" size="lg" className='list_btn'>처음으로!</Button>
                    </Link>
                </div>
            </div>
            </Container>
        );
    }
}

export default BoardList;