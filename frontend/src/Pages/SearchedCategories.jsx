import React from 'react'
import { useNavigate, useParams } from 'react-router-dom';
import { getData } from '../utils';
import { useQuery } from '@tanstack/react-query';
import HomeOutlinedIcon from '@mui/icons-material/HomeOutlined';
const url = "http://localhost:8000/api/plants/"

export const SearchedCategories = () => {
    const navigate = useNavigate();
      const {categId} = useParams();
     const {data,isError,error} = useQuery({queryKey:['plant',url+categId],queryFn:getData,retry:false})
     data & console.log(data);
  return (
    <>
    <div className='bg flex flex-col min-h-screen min-w-screen  '>
     <button onClick={e=>navigate("/")} className='absolute left-5 top-5'><HomeOutlinedIcon/></button>
           <div  className="flex flex-col sm:flex-col m-5 gap-5 border-2 border-violet-800">
           {/* <h2>{data[0].categ}</h2> */}
            {data && data.map(obj=>
                <div key={obj.descr}>
                <div key={obj.name} className='flex flex-col sm:flex-row gap-5 p-5 border-t-2 border-violet-800 p-2 text-lg'>
           
                  <img 
                    src={obj.photo} 
                    alt={obj.name} 
                    className="w-full h-full max-w-[400px] object-cover rounded-lg" 
                  />
             
                  <div>
                      <h3 className='text-xl font-semibold text-violet-900 indent-[10px] p-2 border-b-2 border-violet-800'>{obj.name}</h3>
                      <p className='p-2 indent-[10px]'>{obj.descr}</p>
                  </div>
                  </div>
                </div>
        )}
        
        
        </div>
        </div>
       </>
  )
}
