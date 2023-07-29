import React, { Component } from 'react';
import axios from "axios";
import { Link } from 'react-router-dom';
import BoardList from './BoardList';
import FloatingLabel from 'react-bootstrap/FloatingLabel';
import Form from 'react-bootstrap/Form';
import Container from 'react-bootstrap/esm/Container';
import Button from 'react-bootstrap/esm/Button';
import InputGroup from 'react-bootstrap/InputGroup';
import "../css/board.css";

class InputForm extends Component {

    constructor(props){
        super(props);
        this.state = {
            articleId: "",
            articleTitle: "",
            articleContent: "",
            crud: props.match.params.crud,
        };
        if(this.state.crud !== "Insert"){
            this.getData();
        }
    }

    createHeaderName(){
        const crud = this.state.crud;
        if(crud === "View"){
            return "조회";
        } else if(crud === "Update"){
            return "수정";
        } else if(crud === "Delete"){
            return "삭제";
        } else if(crud === "Insert"){
            return "등록";
        }
    }

    createCrudBtn(){
        const crud = this.state.crud;
        if(crud === "View"){
            return null;
        } else {
            const crudName = 
            crud === "Update" ? "수정" : crud === "Insert" ? "등록" : "삭제";
            return(
                <Button variant="outline-dark" size="lg" className="main_btn" onClick={() => this.crud()}>게시글 {crudName}</Button>
            );
        }
    }

    crud(){
        const {articleId, articleTitle, articleContent, crud} = this.state;

        let crudType = "";
        if(crud === "Update"){
            crudType = "/updateProcess.do";            
        } else if(crud === "Delete"){
            crudType = "/deleteProcess.do";
        } else if(crud === "Insert"){
            crudType = "/insertProcess.do";
        } else if(crud === "View"){
            return null;
        } else if(crud === "boardList"){    // 1단계) boardList 추가
            return BoardList;   // 2단게) 필히! BoardList 컴포넌트 import 하고, return 처리함
        }

        let form = new FormData();
        form.append("articleContent", articleContent);
        form.append("articleTitle", articleTitle);
        if(crud !== "Insert"){
            form.append("articleId", articleId);
        }

        axios
         .post(crudType, form)
         .then((res) => {
            alert("요청이 처리되었습니다!");
            this.props.history.push("/");
         })
         .catch((err) => alert("error: " + err.response.data.msg));
    }

    getData(){
        axios.get("/view.do").then((res) => {
            const data = res.data;
            this.setState({
                articleId: data.articleId,
                articleTitle: data.articleTitle,
                articleContent: data.articleContent,
            });
        });
    }

    createArticleIdTag(){
        const articleId = this.state.articleId;
        const crud = this.state.crud;
        if(crud !== "Insert"){
            return <input type="hidden" value = {articleId || ''} readOnly />;
        } else {
            return null;
        }
    }

    render(){
        const articleTitle = this.state.articleTitle;
        const articleContent = this.state.articleContent;

        return(
            <>
            <Container>
                <h1 className='page_top'>게시글 {this.createHeaderName()}</h1>
                {this.createArticleIdTag()}
                <InputGroup className="mb-3">
                <Form.Control
                placeholder="제목"
                aria-label="제목"
                aria-describedby="basic-addon2"
                type="text"
                value={articleTitle || ''}
                onChange={(event) => this.setState({articleTitle: event.target.value})
                }
                />
                </InputGroup>
                <br />
                <FloatingLabel controlId="floatingTextarea2" label="내용">
                <Form.Control
                as="textarea"
                value={articleContent || ''}
                onChange={(event) => this.setState({articleContent: event.target.value})
                }
                placeholder="Leave a comment here"
                style={{ height: '100px' }}
                />
                </FloatingLabel>
                <br /> <br />
                <div className="d-grid gap-3">
                {this.createCrudBtn()}
                <Link to="/">
                    <Button variant="outline-dark" size="lg" className="main_btn">취소</Button>
                </Link>
                </div>
            </Container>
            </>
        );
    } 
}

export default InputForm;