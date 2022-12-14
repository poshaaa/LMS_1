import {Link} from 'react-router-dom';
import {useEffect} from 'react';
import Sidebar from './Sidebar'

function Changepassword(){
   useEffect(()=>{
    document.title='Сменить пароль | LMS ULSTU';
  });
  return (
      <div className="container mt-4 ">
      	<div className="row">
      		<aside className="col-md-3">
      			<Sidebar />
      		</aside>
      		<section className="col-md-9">
            <div className="card">
              <h5 className="card-header"> Сменить пароль</h5>
              <div className="card-body">
                  <div className="mb-3 row">
                    <label for="inputPassword" className="col-sm-2 col-form-label">Новый пароль</label>
                    <div className="col-sm-10">
                      <input type="password" className="form-control" id="inputPassword"/>
                    </div>
                  </div>
                  <hr/>
                  <button className="btn btn-primary">Обновить</button>
                </div> 
              </div>
      		</section>
        </div>
      </div>
  );
}

export default Changepassword;
