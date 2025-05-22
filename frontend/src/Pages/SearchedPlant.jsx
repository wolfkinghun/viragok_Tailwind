import React from 'react'
import HomeOutlinedIcon from '@mui/icons-material/HomeOutlined';
import { useNavigate, useParams } from 'react-router-dom';
import { useQuery } from '@tanstack/react-query';
import { getData } from '../utils';
import { Plant } from '../components/Plant';
const url='http://localhost:8000/api/search/'
export const SearchedPlant = () => {
    const navigate = useNavigate();
    const {name} = useParams();
    const {data,isError,error} = useQuery({queryKey:['plant',url+name],queryFn:getData,retry:false})
    data & console.log(data);
  return (
    <>
     <div className='bg h-screen w-screen flex flex-col pt-10 items-center border border-violet-500'>
     <button onClick={()=>navigate("/")} className='bg absolute left-5 top-5'><HomeOutlinedIcon/></button>
           
            {data ? 
            <div>
              <Plant  name={data[0].name} descr={data[0].descr} photo={data[0].photo}/>
            </div> : <div className='err'>{error && error.response?.data?.msg} Nincs ilyen növény az adatbázisunkban!</div>}
        </div>
 
    </>
  )
}
