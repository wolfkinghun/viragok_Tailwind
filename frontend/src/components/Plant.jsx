import React from 'react'


export const Plant = ({name,descr,photo}) => {
  return (
   <div  className="flex flex-col sm:flex-col m-5 gap-5 border-2 border-violet-800">
    <h2 style={{textAlign:'center',padding:'1rem'}}  className="text-3xl font-semibold">A keresett növény: <span className='text-violet-900'>{name}</span></h2>
     <div key={name} className='flex flex-col sm:flex-row gap-5  border-t-2 border-violet-800 p-2 text-lg'>
      
     <div>
        <img src={photo} alt={name} />
     </div>
     <div>
        <h3 className='text-xl font-semibold text-violet-900 indent-[10px] p-2 border-b-2 border-violet-800'>{name}</h3>
        <p className='p-2 indent-[10px]'>{descr}</p>
     </div>
    </div>
    </div>
  )
}

