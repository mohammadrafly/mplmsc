import Layout from '../../Layout';
import React from 'react';
import { Link } from '@inertiajs/react';

export default function Schedule({ title, data }) {
    console.log(data)
    const handleGoBack = () => {
        window.history.back();
    };

    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                <div className='uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl flex justify-between items-center'>
                    {title}
                    <button type="button" onClick={handleGoBack} className="ml-4 p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" className="w-6 h-6">
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                        </svg>
                    </button>
                </div>
                <div className="mt-5 py-5">
                    {Object.entries(data).map(([tahun, jadwals]) => (
                        <Link
                            href={`pj/year/${tahun}`}
                            key={tahun}
                            className="mb-4 flex justify-between items-center"
                        >
                            <div className='bg-[#1858ac] text-white p-3 rounded-xl'>
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="M3 3v1.5M3 21v-6m0 0 2.77-.693a9 9 0 0 1 6.208.682l.108.054a9 9 0 0 0 6.086.71l3.114-.732a48.524 48.524 0 0 1-.005-10.499l-3.11.732a9 9 0 0 1-6.085-.711l-.108-.054a9 9 0 0 0-6.208-.682L3 4.5M3 15V4.5" />
                                </svg>
                            </div>
                            <h2 className="text-2xl font-bold">{tahun}</h2>
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="1.5" stroke="currentColor" className="w-6 h-6">
                                    <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                                </svg>
                            </div>
                        </Link>
                    ))}
                </div>
            </div>
        </Layout>
    )
}
