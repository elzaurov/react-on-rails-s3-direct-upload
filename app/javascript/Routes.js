// app/javascript/routes.js
import React from 'react';
import {
  Switch,
  Route,
} from "react-router-dom";
import FileUpload from './bundles/FileUpload'

export default () => {
  return (
    <Switch>
      <Route exact path="/">
        <FileUpload />
      </Route>
    </Switch>
  );
}
