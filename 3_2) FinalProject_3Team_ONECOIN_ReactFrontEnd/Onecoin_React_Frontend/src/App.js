import { Route, Switch } from "react-router-dom";
import ViewButton from "./views/ViewButton";
import InputForm from "./views/InputForm";
import BoardList from "./views/BoardList";
import Login from "./views/Login";
import 'bootstrap/dist/css/bootstrap.min.css';

const App = () => {
  return(
    <>
    <Switch>
       <Route exact path="/" component={ViewButton} /> 
       <Route exact path="/boardList" component={BoardList} />
       <Route exact path="/login" component={Login} />
      {/* /:crud 경로에서 :crud 부분은 URL 파라미터를 정의할 때
          사용하는 React Router의 문법입니다.
          경로에 이와 같이 URL 파라미터가 포함된 경우,
          패턴 매칭이 되어 /1, /a 등이 모두 매칭이 되며,
          해당 파라미터는 변수화되어 맵핑된 컴포넌트에서
        match.params.crud 같이 읽어올 수 있습니다. */}
       <Route exact path="/:crud" component={InputForm} />
    </Switch>
    </>
  );
};

export default App;