import Layout from '../../Layout';
import React, { useState, useEffect } from 'react';
import { Link } from '@inertiajs/react';

export default function ScheduleByID({ title, data, auth, pj }) {
    const [selectedOption, setSelectedOption] = useState(data.koneksi || null);
    const [showSuccess, setShowSuccess] = useState(false);
    const [showError, setShowError] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');
    const [successMessage, setSuccessMessage] = useState('');
    const [csrf, setCsrf] = useState('');

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);
    }, []);

    function formatDate(dateString) {
        if (!dateString) return '';

        const days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
        const months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

        const date = new Date(dateString);
        const dayName = days[date.getDay()];
        const day = date.getDate();
        const monthName = months[date.getMonth()];
        const year = date.getFullYear();

        return `${dayName}, ${day} ${monthName} ${year}`;
    }

    const handleOptionClick = async (option) => {
        setSelectedOption(option);
        const existingKoneksi = data.koneksi;

        if (existingKoneksi && existingKoneksi === option) {
            setShowSuccess(true);
            setSuccessMessage(`Jadwal sudah di set ${option}`);
            setTimeout(() => setShowSuccess(false), 5000);
        } else {
            await handlePostData(option, data.id);
        }
    }

    const handlePostData = async (koneksi, id) => {
        event.preventDefault();

        try {
            const response = await fetch(`${id}`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
                body: JSON.stringify({ koneksi })
            });
    
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
    
            const data = await response.json();
    
            if (data.code === 200) {
                setSuccessMessage(data.message);
                setShowSuccess(true);
                setTimeout(() => setShowSuccess(false), 5000);
            } else {
                setShowError(data.message);
                setShowError(true);
                setTimeout(() => setShowError(false), 5000);
            }
        } catch (error) {
            setShowError(true);
            setErrorMessage('Error posting data: ' + error.message);
            setShowSuccess(false);
            setTimeout(() => setShowError(false), 5000);
            console.error('Error posting data:', error);
        }
    }    

    const handleGoBack = () => {
        window.history.back();
    };

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                {showSuccess && (
                    <div className="animate-slide-top-to-bottom bg-green-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {successMessage}
                    </div>
                )}
                {showError && (
                    <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {errorMessage}
                    </div>
                )}
                <div className='flex justify-between items-center uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl'>
                    <div>{title}</div>
                    {pj || auth ? (
                        <Link href={`${data.id}/setting`}>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M9.594 3.94c.09-.542.56-.94 1.11-.94h2.593c.55 0 1.02.398 1.11.94l.213 1.281c.063.374.313.686.645.87.074.04.147.083.22.127.325.196.72.257 1.075.124l1.217-.456a1.125 1.125 0 0 1 1.37.49l1.296 2.247a1.125 1.125 0 0 1-.26 1.431l-1.003.827c-.293.241-.438.613-.43.992a7.723 7.723 0 0 1 0 .255c-.008.378.137.75.43.991l1.004.827c.424.35.534.955.26 1.43l-1.298 2.247a1.125 1.125 0 0 1-1.369.491l-1.217-.456c-.355-.133-.75-.072-1.076.124a6.47 6.47 0 0 1-.22.128c-.331.183-.581.495-.644.869l-.213 1.281c-.09.543-.56.94-1.11.94h-2.594c-.55 0-1.019-.398-1.11-.94l-.213-1.281c-.062-.374-.312-.686-.644-.87a6.52 6.52 0 0 1-.22-.127c-.325-.196-.72-.257-1.076-.124l-1.217.456a1.125 1.125 0 0 1-1.369-.49l-1.297-2.247a1.125 1.125 0 0 1 .26-1.431l1.004-.827c.292-.24.437-.613.43-.991a6.932 6.932 0 0 1 0-.255c.007-.38-.138-.751-.43-.992l-1.004-.827a1.125 1.125 0 0 1-.26-1.43l1.297-2.247a1.125 1.125 0 0 1 1.37-.491l1.216.456c.356.133.751.072 1.076-.124.072-.044.146-.086.22-.128.332-.183.582-.495.644-.869l.214-1.28Z" />
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                            </svg>
                        </Link>
                    ): (
                        <div>
                            <button type="button" onClick={handleGoBack} className="ml-4 p-2">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                                </svg>
                            </button>
                        </div>
                    )}
                </div>
                <div className='py-5 text-[#1858ac] font-bold'>
                    <div className='bg-gray-50 shadow-xl p-5 rounded-lg mb-3 flex items-center'>
                        <div className='bg-yellow-300 rounded-full w-[25px] h-[25px] mr-5'></div>
                        Setiap hari {data.hari}
                    </div>
                    <div className='bg-gray-50 shadow-xl p-5 rounded-lg mb-3 flex items-center'>
                        <div className='bg-yellow-300 rounded-full w-[25px] h-[25px] mr-5'></div>
                        Pukul: {data.jam}
                    </div>
                    <div className='bg-gray-50 shadow-xl p-5 rounded-lg mb-3 flex items-center'>
                        <div className='bg-yellow-300 rounded-full w-[25px] h-[25px] mr-5'></div>
                        SKS: {data.sks}
                    </div>
                    <div className='bg-gray-50 shadow-xl p-5 rounded-lg mb-3 flex items-center'>
                        <div className='bg-yellow-300 rounded-full w-[25px] h-[25px] mr-5'></div>
                        Kode Seksi: {data.kode_seksi}
                    </div>
                    <div className='bg-gray-50 shadow-xl p-5 rounded-lg mb-3 flex items-center'>
                        <div className='bg-yellow-300 rounded-full w-[25px] h-[25px] mr-5'></div>
                        Kode Matkul: {data.kode_matkul}
                    </div>
                    <div className='bg-gray-50 shadow-xl p-5 rounded-lg mb-3 flex items-center'>
                        <div className='bg-yellow-300 rounded-full w-[25px] h-[25px] mr-5'></div>
                        Dosen: {data.user.name}
                    </div>
                    {pj || auth ? (
                        <div>
                            <div className='flex justify-between items-center py-10 text-2xl font-extrabold mx-10'>
                                <button 
                                    className={`transition duration-300 uppercase p-3 rounded-full ${selectedOption === 'online' ? 'bg-green-500 text-white' : ''}`} 
                                    onClick={() => handleOptionClick('online')}
                                >
                                    Online
                                </button>
                                <button 
                                    className={`transition duration-300 uppercase p-3 rounded-full ${selectedOption === 'offline' ? 'bg-green-500 text-white' : ''}`} 
                                    onClick={() => handleOptionClick('offline')}
                                >
                                    Offline
                                </button>
                            </div>  
                            <div className='text-center'>
                                Silahkan pilih online / offline (otomatis terupdate pada akun mahasiswa)
                            </div>
                        </div>                      
        
                    ) : (
                        <div className='flex justify-center items-center py-10 text-2xl font-extrabold'>
                            <div className='block'>
                                <div className='text-center'>{formatDate(data.jadwal)}</div>
                                <div className='text-center uppercase'>{data.koneksi} {data.updated_at ? '(Updated)' : ''}</div>
                            </div>
                        </div>
                    )}
                </div>
            </div>
        </Layout>
    )
}