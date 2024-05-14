import React, { useState, useEffect } from 'react';
import { Link, router } from '@inertiajs/react';
import Layout from '../../Layout';

export default function Profile({ title, data, urlFoto }) {
    const [showPopup, setShowPopup] = useState(false);
    const [csrf, setCsrf] = useState('');

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);
    }, []);

    const handleLogout = async (event) => {
        event.preventDefault();

        try {
            const response = await fetch('logout', {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
            });

            const data = await response.json();
            
            if (data.code === 200) {
                router.visit(data.redirect, { method: 'get' })
            } else {
                setError(data.message);
            }
        } catch (error) {
            console.error('Error:', error);
        }
    };

    return (
        <Layout>
            <div className='p-10 text-[#043474] animate-slide-bottom-to-top'>
                <h1 className='font-bold text-3xl text-[#043474]'>{title}</h1>
                <div className='mt-5 text-[#043474]'>
                    <div className='flex justify-center items-center'>
                        <div className='w-[100px] h-[100px] rounded-full bg-white shadow-xl'>
                            <img src={urlFoto} alt="Profile" className="w-full h-full object-cover rounded-full" />
                        </div>
                    </div>
                    {data.usertype === 'dosen' && (
                    <div>
                        <div className='flex justify-center items-center mt-2'>
                            <p className='font-bold text-2xl'>{data.name}</p>
                        </div>
                    </div>
                    )}
                    {data.usertype === 'mahasiswa' && (
                    <div>
                        <div className='flex justify-center items-center mt-2'>
                            <p className='font-bold text-2xl'>{data.name ?? 'Nama tidak diketahui'}</p>
                        </div>
                        <div className='flex justify-center items-center'>
                            <p className='font-semibold'>{data.nim ?? 'Nik tidak diketahui'}</p>
                        </div>
                        <div className='flex justify-center items-center'>
                            <p className='font-semibold'>{data.angkatan ?? 'Angkatan tidak diketahui'}</p>
                        </div>
                    </div>
                    )}

                </div>
                <Link href="profile/update" className='flex justify-between items-center mt-10'>
                    <div className='bg-[#043474] rounded-2xl p-3'>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className='w-8 h-8 text-white'>
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
                        </svg>
                    </div>
                    <div className='font-semibold text-xl'>
                        My Profile
                    </div>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-8 h-8">
                        <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                    </svg>
                </Link>
                <Link href="profile/password/update" className='flex justify-between items-center mt-10'>
                    <div className='bg-[#043474] rounded-2xl p-3'>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-8 h-8 text-white">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M16.5 10.5V6.75a4.5 4.5 0 1 0-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 0 0 2.25-2.25v-6.75a2.25 2.25 0 0 0-2.25-2.25H6.75a2.25 2.25 0 0 0-2.25 2.25v6.75a2.25 2.25 0 0 0 2.25 2.25Z" />
                        </svg>
                    </div>
                    <div className='font-semibold text-xl'>
                        Change Password
                    </div>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-8 h-8">
                        <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                    </svg>
                </Link>
                <Link onClick={(event) => { event.preventDefault(); setShowPopup(true); }} className='mt-10 flex justify-center items-center'>
                    <p className='text-white bg-red-500 py-2 px-5 rounded-lg'>Logout</p>
                </Link>
                {showPopup && (
                    <div className="fixed bottom-0 left-0 w-full bg-gray-900 bg-opacity-75 flex justify-center items-center h-screen">
                        <div className="bg-white rounded-lg p-8 animate-slide-bottom-to-top">
                            <p className="text-lg font-semibold mb-4">Are you sure you want to logout?</p>
                            <div className="flex justify-center">
                                <button onClick={handleLogout} className="bg-red-500 text-white rounded-md px-4 py-2 mr-4">Yes</button>
                                <button onClick={() => setShowPopup(false)} className="bg-gray-300 text-gray-800 rounded-md px-4 py-2">No</button>
                            </div>
                        </div>
                    </div>
                )}
            </div>
        </Layout>
    )
}