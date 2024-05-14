import Layout from '../../Layout';
import React, { useState } from 'react';
import { Link } from '@inertiajs/react';

export default function SettingSchedule({ title, buktiPerkuliahan, buktiAbsensi, formPJ, form56, recordPerkuliahan }) {
    const [showError, setShowError] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');

    const handleGoToLink = (link) => {
        return () => {
            if (!link || link === '#') {
                setErrorMessage('Link is not available.');
                setShowError(true);
                setTimeout(() => setShowError(false), 3000); 
            } else {
                const isFullUrl = /^https?:\/\//i.test(link);
                const fullUrl = isFullUrl ? link : `http://${link}`;
                window.location.href = fullUrl;
            }
        };
    };

    const handleGoBack = () => {
        window.history.back();
    };
    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                {showError && (
                    <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                        {errorMessage}
                    </div>
                )}
                <div className='flex justify-between items-center uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl'>
                    <div>{title}</div>
                    <button type="button" onClick={handleGoBack} className="ml-4 p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                        </svg>
                    </button>
                </div>
                <div className='py-5 text-[#1858ac] font-bold'>
                    <div
                        onClick={handleGoToLink(buktiPerkuliahan?.link ?? '#')}
                        className="mb-4 flex justify-between items-center cursor-pointer"
                    >
                        <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                            </svg>
                        </div>
                        <h2 className="text-lg mb-2">Upload Bukti Perkuliahan</h2>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                            </svg>
                        </div>
                    </div>
                    <div
                        onClick={handleGoToLink(buktiAbsensi?.link ?? '#')}
                        className="mb-4 flex justify-between items-center"
                    >
                        <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                            </svg>
                        </div>
                        <h2 className="text-lg mb-2">Upload Absensi</h2>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                            </svg>
                        </div>
                    </div>
                    <div
                        onClick={handleGoToLink(formPJ?.link ?? '#')}
                        className="mb-4 flex justify-between items-center"
                    >
                        <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                            </svg>
                        </div>
                        <h2 className="text-lg mb-2">Form PJ</h2>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                            </svg>
                        </div>
                    </div>
                    <div
                        onClick={handleGoToLink(form56?.link ?? '#')}
                        className="mb-4 flex justify-between items-center"
                    >
                        <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                            </svg>
                        </div>
                        <h2 className="text-lg mb-2">Form 05 dan 06</h2>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                            </svg>
                        </div>
                    </div>
                    <div
                        onClick={handleGoToLink(recordPerkuliahan?.link ?? '#')}
                        className="mb-4 flex justify-between items-center"
                    >
                        <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                            </svg>
                        </div>
                        <h2 className="text-lg mb-2">Upload record perkuliahan</h2>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                            </svg>
                        </div>
                    </div>
                    <Link
                        href={'setting/update'}
                        className="mb-4 flex justify-between items-center"
                    >
                        <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                            </svg>
                        </div>
                        <h2 className="text-lg mb-2">Update jadwal perkuliahan</h2>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                            </svg>
                        </div>
                    </Link>
                </div>
            </div>
        </Layout>
    )
}
