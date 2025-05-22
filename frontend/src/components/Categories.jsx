import { useQuery } from '@tanstack/react-query'
import React from 'react'
import { useState } from 'react'
import { getData } from '../utils'
import { useNavigate } from 'react-router-dom'

const url='http://localhost:8000/api/categories'
export const Categories = () => {
    const {data,isError,error}=useQuery({queryKey:['categories',url],queryFn:getData})
    const navigate = useNavigate();
  return (
    <div className='flex flex-col gap-4'> {data && data.map(obj=>
        <div key={obj.name} onClick={()=>navigate("/searchedCateg/"+obj.id)}>
            <div className="flex flex-col w-[100%] items-center bg-slate-100 rounded-xl" key={obj.id}>
                
                <img  className="rounded-t-lg max-w-[300px] max-h-[150px]" src={obj.photo} alt={obj.photo} />
                <h2 className='border-2 border-slate-800 rounded-lg p-1 m-1'>{obj.name}</h2>
               
            </div>
        </div>
        )}</div>
  )
}
