import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import Button from 'react-bootstrap/Button';
import Container from "react-bootstrap/esm/Container";
import "../css/board.css" ;
import Navbar from 'react-bootstrap/Navbar';
import Offcanvas from 'react-bootstrap/Offcanvas';
import logo from '../img/logo_img.png';
import Card from 'react-bootstrap/Card';
import Spinner from 'react-bootstrap/Spinner';



const ViewButton = () => {
  const [isLogin, setIsLogin] =useState(false);
  const name = sessionStorage.name
  // 로그인 상태 관리 처리
  useEffect(() => {
    if(sessionStorage.getItem('MEMBERID') === null){
      console.log('isLogin 상태 = ', isLogin);
    } else{
      // 로그인 상태 변경
      setIsLogin(true)
      console.log("isLogin 상태 = ", isLogin);
    }
  });

  const onLogout = () => {
    alert("로그아웃 됨");
    // sessionStorage에 저장된 Item 삭제처리
    sessionStorage.removeItem('MEMBERID')
    sessionStorage.removeItem('name')

    // '/' url로 이동
    document.location.href = '/'
  }
    return (
        <>
         {[false].map((expand) => (
        <Navbar key={expand} expand={expand} className="cf_main mb-3">
          <Container fluid>
            <Navbar.Brand href="http://localhost" className="name_nav"><img className="logo" src={logo} />ONECOIN'S COMMUNITY</Navbar.Brand>
           
            <Navbar.Toggle aria-controls={`offcanvasNavbar-expand-${expand}`} />
            <Navbar.Offcanvas
              id={`offcanvasNavbar-expand-${expand}`}
              aria-labelledby={`offcanvasNavbarLabel-expand-${expand}`}
              placement="end"
            >
              <Offcanvas.Header closeButton>
                <Offcanvas.Title id={`offcanvasNavbarLabel-expand-${expand}`} className="side_font">
                  자유게시판
                </Offcanvas.Title>
              </Offcanvas.Header>
            
         <div className="d-grid gap-3">
            <Link to = "/Insert">
                <Button variant="outline-dark" size="lg" className="main_btn">게시글 등록</Button>
            </Link>
            <Link to = "/View">
                <Button variant="outline-dark" size="lg" className="main_btn">최근 게시글 보기</Button>
            </Link>
            <Link to = "/Update">
                <Button variant="outline-dark" size="lg" className="main_btn">최근 게시글 수정</Button>
            </Link>
            <Link to = "/Delete">
                <Button variant="outline-dark" size="lg" className="main_btn">최근 게시글 삭제</Button>
            </Link>
            <Link to = "/boardList">
                <Button variant="outline-dark" size="lg" className="main_btn">게시글 목록 보기</Button>
            </Link>
        </div>
        </Navbar.Offcanvas>
        </Container>
        </Navbar>
         ))}

    <Card className="login_card">
      <Card.Header>ONECOIN</Card.Header>
      <Card.Body>
        <Card.Title className="login_title">Welcome to ONECOIN COMMUNITY</Card.Title>
        <Card.Text className="login_text">
          로그인 후 게시물을 작성하 실 수 있습니다
        </Card.Text>
        <Link to = "/login">
        {isLogin       
          ?
          <Button variant="outline-warning" className="login_btn" onClick={onLogout}>로그아웃 하러 가기</Button>
          :
          <Button variant="outline-warning" className="login_btn">로그인 하러 가기</Button>     
        }
        </Link>
      </Card.Body>
    </Card>


        <Button variant="primary" disabled className="loding_btn" size="lg">
        <Spinner
        as="span"
        animation="grow"
        size="sm"
        role="status"
        aria-hidden="true"
        />
        Loading...
        </Button>
        </>
    );
};

export default ViewButton;