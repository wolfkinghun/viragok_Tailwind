
import { createBrowserRouter, RouterProvider } from 'react-router-dom'
import './App.css'
import { Home } from './Pages/Home'
import { Plants } from './Pages/Plants'
import { SearchedPlant } from './Pages/SearchedPlant'
import { SearchedCategories } from './Pages/SearchedCategories'

const router = createBrowserRouter([
  {path:'/',element:<Home/>},
    {path:'/plants',element:<Plants/>},
      {path:'/search/:name',element:<SearchedPlant/>},
      {path:'/searchedCateg/:categId', element:<SearchedCategories/>}
])

function App() {

  return (
    <RouterProvider router={router}/>
   )
}

export default App
