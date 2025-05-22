import React from 'react'
import { useNavigate } from 'react-router-dom'
import HomeOutlinedIcon from '@mui/icons-material/HomeOutlined';
import { SearchBar } from '../components/SearchBar';
import { Categories } from '../components/Categories';
export const Home = () => {
  const navigate = useNavigate();
  return (
    <>
     <button onClick={e=>navigate("/")} className='absolute left-5 top-5'><HomeOutlinedIcon/></button>
   
    <div className='flex flex-col sm:flex-row '>
    
     <div className='w-[50%] bg h-screen p-10 flex flex-col justify-center content-center items-center '>
        <div className='flex flex-col items-center gap-2 w-[35%] ml-[50%] '>
          <h1 className='font-extrabold text-purple-900 text-5xl '>Természet <br/>kézi könyve</h1>
          <h4 className='p-2 text-purple-800'>Fedezd fel a növényeket, gyümölcsök és fűszerek világát!</h4>
          <div className='w-[90%]'> 
            <SearchBar/>
          </div>
         
        </div>
     </div>
     <div className='w-[50%] bg2 h-screen p-10 flex flex-col justify-center items-center'>
        <Categories/>
     </div>
    </div>
    </>
  )
}
