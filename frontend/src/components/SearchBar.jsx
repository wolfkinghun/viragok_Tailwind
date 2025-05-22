import React from 'react'
import { useState } from 'react'
import { useNavigate } from 'react-router-dom';

export const SearchBar = () => {
  const [name,setName] = useState("");
  const navigate =  useNavigate();
  return (
    <>
    <div className="w-full max-w-sm min-w-[200px]">
    <div className="relative">
        <input
        className="w-full bg-transparent placeholder:text-slate-400 text-slate-700 text-sm border border-slate-200 rounded-md pl-3 pr-28 py-2 transition duration-300 ease focus:outline-none focus:border-slate-400 hover:border-slate-300 shadow-sm focus:shadow"
        placeholder="Növény neve" 
        value={name}
        onChange={(e)=>setName(e.target.value)}
        />
        <button
        className="absolute top-1 right-1 flex items-center rounded bg-indigo-400 py-1 px-2.5 border border-transparent text-center text-sm text-white transition-all shadow-sm hover:shadow focus:bg-slate-700 focus:shadow-none active:bg-violet-500 hover:bg-indigo-500 active:shadow-none disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none"
        type="button"
        onClick={e=>navigate('/search/'+name)} disabled={!name}
        >
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" className="w-4 h-4 mr-2">
            <path fillRule="evenodd" d="M10.5 3.75a6.75 6.75 0 1 0 0 13.5 6.75 6.75 0 0 0 0-13.5ZM2.25 10.5a8.25 8.25 0 1 1 14.59 5.28l4.69 4.69a.75.75 0 1 1-1.06 1.06l-4.69-4.69A8.25 8.25 0 0 1 2.25 10.5Z" clipRule="evenodd" />
        </svg>
        </button> 
    </div>
    </div>
    </>
  )
}
